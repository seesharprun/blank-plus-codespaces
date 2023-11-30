using App.Library;
using Prompt = Sharprompt.Prompt;
using Console = Colorful.Console;

ITitleProvider titleProvider = new TitleProvider();

string title = titleProvider.GetValue();

Console.WriteAscii($"{title}");

string name = Prompt.Input<string>("What is your name?");

Console.WriteAscii($"Hello, {name}!");