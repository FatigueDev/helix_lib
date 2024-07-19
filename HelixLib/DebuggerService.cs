#if DEBUG
using MoonSharp.VsCodeDebugger;
using System.Reflection;
using System.Diagnostics;
using Vintagestory.API.Common;

namespace HelixLib
{
    public static class DebuggerService
    {
        public static bool AwaitDebuggerAttach(this MoonSharpVsCodeDebugServer server, EnumAppSide side)
        {
            // as soon as a client has attached, 'm_Client__' field of 'm_Current' isn't null anymore
            // 
            // we wait for ~60 seconds for a client to attach

            BindingFlags bindFlags = BindingFlags.Instance | BindingFlags.NonPublic;
            FieldInfo field = server.GetType().GetField("m_Current", bindFlags);
            object current = field.GetValue(server);

            FieldInfo property = current.GetType().GetField("m_Client__", bindFlags);

            Stopwatch stopwatch = new Stopwatch();
            stopwatch.Start();
            if(side == EnumAppSide.Server)
            {
                Console.WriteLine("Please launch MoonSharp Attach (Server) now.");
            }
            else if(side == EnumAppSide.Client)
            {
                Console.WriteLine("Please launch MoonSharp Attach (Client) now.");
            }
            
            while (property.GetValue(current) == null)
            {
                Thread.Sleep(500);
                if (stopwatch.Elapsed.TotalSeconds > 60) return false;
            }
            stopwatch.Stop();
            Console.WriteLine("VS Code debugger attached");
            return true;
        }
    }
}
#endif