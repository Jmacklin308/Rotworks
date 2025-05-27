using System;

namespace Rotworks;

static class Debug
{
	[Export]
	public static void Log(StringView msg)
	{
		PrintF("[LOG] %s\n", msg);
	}

	[Export]
	public static void Warn(StringView msg)
	{
		PrintF("[WARN] %s\n", msg);
	}

	[Export]
	public static void Error(StringView msg)
	{
		PrintF("[ERROR] %s\n", msg);
	}

}