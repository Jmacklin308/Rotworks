using System;
using System.IO;

namespace Rotworks;

class Program
{
	public static int Main(String[])
	{
		Game.Load();

		while (!Game.windowShouldClose)
		{
			Game.Update();
			Game.Draw();
		}

		Game.Destroy();
		return 0;
	}
}