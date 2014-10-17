Particle[] someBalls = new Particle[100];
void setup()
{
	size(500,500);
	//noStroke();
	for (int i=1; i<100; i++)
	{

		someBalls[i] = new NormalParticle();
		}
		someBalls[5] = new OddballParticle();	
}

void draw()
{
	background(0);
	for(int i =1; i<100; i++)
	{
		someBalls[i].move();
		someBalls[i].show();
	}
	
}

class NormalParticle implements Particle
{
	double myX, myY, speed, angle;
	int myColor;
	float mySize;

	NormalParticle()
	{
		myX=250;
		myY=250;
		speed=Math.random()*3;
		angle=Math.PI*3*Math.random();
		myColor=color(255,255,255);
		mySize=4;
	}
	public void show()
	{

		fill(myColor);
		ellipse((float)myX,(float)myY,mySize,mySize);
	}
	public void move()
	{
		myX=(Math.cos(angle)*speed)+myX;
		myY=(Math.sin(angle)*speed)+myY;
		angle=angle+.01;

		if(myX<0)
		{
			myX++;
			myY++;
		}
		if(myX>500)
		{
			myX--;
			myY--;
		}
		if(myY>500)
		{
			myY--;
			myX--;
		}
		if(myY<0)
		{
			myY++;
			myX++;
		}
		

	}
}
interface Particle
{
	public void move();
	public void show();
}

class OddballParticle implements Particle
{
	double myX, myY, speed, angle;
	int myColor;
	int mySize;
	OddballParticle()
	{
		myX=250;
		myY=250;
		speed=Math.random()*5;
		angle=Math.PI*2*Math.random();
		myColor=color(210,255,0);
		mySize=40;
	}
	public void show()
	{
		fill(myColor);
		ellipse((float)myX,(float)myY,mySize,mySize);
	}
	public void move()
	{
	    myX=(Math.random()*speed)+myX;
		myY=(Math.random()*speed)+myY;
	}

}


