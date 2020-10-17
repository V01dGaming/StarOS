using System;
using Main;
using System.Threading;
using Programs;

namespace Main
{
  class MainClass {
    public static void Main () {
      Console.Clear();
      Console.WriteLine("###########################");
      Console.WriteLine("#                         #");
      Console.WriteLine("#        Melody AI        #");
      Console.WriteLine("#                         #");
      Console.WriteLine("###########################");
      Console.WriteLine("#                         #");
      Console.WriteLine("#      Welcome User!      #");
      Console.WriteLine("# Please choose an option #");
      Console.WriteLine("#                         #");
      Console.WriteLine("###########################");
      Console.WriteLine("#                         #");
      Console.WriteLine("#       1) Programs       #");
      Console.WriteLine("#       2) Websites       #");
      Console.WriteLine("#                         #");
      Console.WriteLine("###########################");
      Console.WriteLine(" ");

      string input = Console.ReadLine();

      if(input == "1")
      {
        Thread.Sleep(1000);
        Programs();
      }
      else
      {
        Console.Clear();
        Console.WriteLine("input does not match!");
        Thread.Sleep(2000);
        Main();
      }
    }
  }
}