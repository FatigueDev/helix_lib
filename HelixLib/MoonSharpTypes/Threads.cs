using MoonSharp.Interpreter;

namespace HelixLib.Types
{
    [MoonSharpUserData]
    public class Threads
    {
        private List<Thread> registeredThreads = new();

        public DynValue? Get(string name)
        {
            return registeredThreads.Where(t => t.name == name).Select(t => t.thread).SingleOrDefault();
        }

        public IEnumerable<DynValue>? GetMany(string name)
        {
            return registeredThreads.Where(t => t.name == name).Select(t => t.thread);
        }

        public void Add(DynValue thread, string name, string status)
        {
            registeredThreads.Add(new Thread(){
                thread = thread,
                name = name,
                status = status
            });
        }

    }
}