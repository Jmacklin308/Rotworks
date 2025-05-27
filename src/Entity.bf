using RaylibBeef;
using static RaylibBeef.Raylib;

namespace Rotworks;

class Entity
{
	public Vector2 position;
	public Vector2 velocity;
	public float rotation;

	public virtual void Update() { }
	public virtual void Draw() { }
	public virtual void Destroy() { }
}