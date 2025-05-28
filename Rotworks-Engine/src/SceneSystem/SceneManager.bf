namespace Rotworks_Engine.SceneSystem;

class SceneManager
{
	static IScene currentScene;

	public static void SetScene(IScene scene)
	{
		if (currentScene != null)
			currentScene.Unload();

		currentScene = scene;
		currentScene.Load();
	}

	public static void Update(float dt)
	{
		currentScene?.Update(dt);
	}

	public static void Draw()
	{
		currentScene?.Draw();
	}

}