using Godot;
using System;

public partial class player : CharacterBody2D
{
	public const float Speed = 300.0f;

	// physics processing step of main loop
	

	public override void _PhysicsProcess(double delta)
	{
		



		//Velocity of x,y
		Vector2 velocity = Velocity;

		//Input Control X
		if (Input.IsActionPressed("TopD_Left"))
		{
			velocity.X = -1 * Speed;
		}
		else if (Input.IsActionPressed("TopD_Right"))
		{
			velocity.X = 1 * Speed;
		}
		else
		{
			velocity.X = Mathf.MoveToward(Velocity.X, 0, Speed);
		}


		//Input Control Y
		if (Input.IsActionPressed("TopD_Up"))
		{
			velocity.Y = -1 * Speed;
		}
		else if (Input.IsActionPressed("TopD_Down"))
		{
			
			velocity.Y = 1 * Speed;
		}
		else
		{
			velocity.Y = Mathf.MoveToward(Velocity.Y, 0, Speed);
		}

		//Resinstate Velocity
		Velocity = velocity;


		//Update y,x
		MoveAndSlide();
	}
}
