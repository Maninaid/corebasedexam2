using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Corebasedexam2
{
        public delegate void calculator(int a, int b);



    class Program
    {
        public static void addition(int a, int b)
        {
            int res = a + b;
            Console.WriteLine($"Addition result is {res}");
        }
        public static void substraction(int a, int b)
        {
            int res = a - b;
            Console.WriteLine($"substraction result is {res}");
        }
        public static void multiplication(int a, int b)
        {
            int res = a * b;
            Console.WriteLine($" multiplication result is {res}");
        }
        public static void division(int a, int b)
        {
            int res = a / b;
            Console.WriteLine($" division result is {res}");
        }
        static void Main(string[] args)
        {
            calculator obj = new calculator(Program.addition);
            obj.Invoke(13, 20);
            obj = substraction;
            obj(32, 10);
            obj = multiplication;
            obj(20, 40);
            obj = division;
            obj(60, 10);
            Console.ReadLine();
        }
    }
}
