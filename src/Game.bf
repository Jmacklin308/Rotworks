using RaylibBeef;
using static RaylibBeef.Raylib;
using Rotworks.InputControllers;


namespace Rotworks;

class Game
{
	public static bool windowShouldClose = false;


	public static void Load()
	{
		InitWindow(Data.SCREEN_WIDTH, Data.SCREEN_HEIGHT, "Rotworks");
		InitAudioDevice();


		//add a new keyboard controlled player
		Data.player = new Player(new KeyboardPlayerInput());
		Data.entities.Add(Data.player);

               //center the player without allocating on the heap
               Data.player.position = Vector2((float)GetScreenWidth() / 2, (float)GetScreenHeight() / 2);



		UI.Load();
	}

	public static void Update()
	{
		windowShouldClose = WindowShouldClose();


		//update our entities
		for (let entity in Data.entities)
		{
			//call update on every entity in the game
			entity.Update();
		}


		//UI always on top
		UI.Update();
	}

	public static void Draw()
	{
		BeginDrawing();
		{
			ClearBackground(RAYWHITE);

			//Draw  our entities
			for (let entity in Data.entities)
			{
				//call update on every entity in the game
				entity.Draw();
			}
		}
		EndDrawing();


		UI.Draw();
	}

	public static void Destroy()
	{

		//delete all entities
		for (let entity in Data.entities)
		{
			entity.Destroy();
		}

		//delete the list itself
		Data.Destroy();


		CloseAudioDevice();
		CloseWindow();
	}


}
