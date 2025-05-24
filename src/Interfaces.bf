namespace Rotworks;

class Interfaces
{
}




interface IUpdatable
{
	void Update();
}


interface IDrawable
{
	void Draw();
}

//input
interface IPlayerInput
{
	bool IsMovingUp();
	bool IsMovingDown();
	bool IsMovingLeft();
	bool IsMovingRight();
}	