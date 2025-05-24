using RaylibBeef;
using static RaylibBeef.Raylib;
using static RaylibBeef.KeyboardKey;
using static RaylibBeef.MouseButton;

namespace Rotworks;

class KeyboardPlayerInput : IPlayerInput
{
	public bool IsMovingUp() => IsKeyDown(KEY_W);
	public bool IsMovingDown() => IsKeyDown(KEY_S);
	public bool IsMovingLeft() => IsKeyDown(KEY_A);
	public bool IsMovingRight() => IsKeyDown(KEY_D);
}
