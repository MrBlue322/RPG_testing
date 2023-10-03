using Godot;
using System;

public partial class facing : Sprite2D
{
	// Called when the node enters the scene tree for the first time.
	public override void _Ready()
	{
	}

	// Called every frame. 'delta' is the elapsed time since the previous frame.
	public override void _Process(double delta)
	{
	}
	public override void _PhysicsProcess(double delta)
	{	

		//Input Control X
		if (Input.IsActionPressed("TopD_Left"))
		{
			
		}
		else if (Input.IsActionPressed("TopD_Right"))
		{
			
		}


		//Input Control Y
		if (Input.IsActionPressed("TopD_Up"))
		{

		}
		else if (Input.IsActionPressed("TopD_Down"))
		{

  
		}

	}
}


