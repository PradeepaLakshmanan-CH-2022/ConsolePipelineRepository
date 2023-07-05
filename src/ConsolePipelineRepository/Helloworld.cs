using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsolePipelineRepository
{
    public class Helloworld
    {
        public string GetName()
        {
            string name = "Hello Kavinya,Your Console App Pipeline Succeeded and Triggered";
            Console.WriteLine(name);
            return name;

        }
    }
}