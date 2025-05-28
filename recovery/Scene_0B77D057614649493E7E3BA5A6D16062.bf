namespace Rotworks_Engine.SceneSystem;

class Scene
{
}


interface IScene
{
	void Load();
	void Unload();
	void Update(float dt);
	void Draw();
}