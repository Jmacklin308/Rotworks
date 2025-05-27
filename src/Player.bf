using RaylibBeef;
using static RaylibBeef.Raylib;


namespace Rotworks;

class Player : Entity
{

	//bools
	public static bool IsSpawned = false;
	public static bool IsDead = false;


	//Values - Health
	public static float MaxHealthPoints = 100;
	public static float CurrentHealthPoints = 100;

	//Values - Movement
	public static float MaxSpeed = 25;
	public static float Acceleration = 10;


	//Visuals
	public Color Color = RED;
	public int32 Width = 25;
	public int32 Height = 25;


	//input
	public IPlayerInput input;

	public this(IPlayerInput inputSource)
	{
		input = inputSource;
	}


	public void Load()
	{
	}

	public void Update()
	{
		if (input.IsMovingDown())  position.y += MaxSpeed * GetFrameTime();
		if (input.IsMovingUp())  position.y -= MaxSpeed * GetFrameTime();
		if (input.IsMovingLeft())  position.x -= MaxSpeed * GetFrameTime();
		if (input.IsMovingRight())  position.x += MaxSpeed * GetFrameTime();

		Raylib.TraceLog(1, $"Position is {position}");
	}

	public void Draw()
	{
		DrawRectangle((int32)position.x, (int32)position.y, Width, Height, Color);
	}


	public void Destroy()
	{
		delete input;
	}
}