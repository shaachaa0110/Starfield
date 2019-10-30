Universe myUniverse;

void setup()
{
	size(600, 600);
	myUniverse = new Universe();
}

void draw()
{
	background(0);
	myUniverse.show();
}

class Particle
{
	double myX, myY, mySpeed, myAngle;
	int myColor, mySize;
	Particle(int x, int y){
		mySize = (int)(Math.random()*5);
		myX = x;
		myY = y;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*1;
		myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	}
	Particle(){
		mySize = (int)(Math.random()*5);
		myX = 100;
		myY = 100;
		myAngle = Math.random()*2*Math.PI;
		mySpeed = Math.random()*3;
		myColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
	}
	void show(){
		fill(myColor);
		ellipse((float)myX, (float)myY, mySize, mySize);
	}
	void move(){
		myX = myX + mySpeed*Math.cos(myAngle);
		myY = myY + mySpeed*Math.sin(myAngle);
	}
}

class Universe{
	Particle[] myParticles;
	Universe(){
		myParticles = new Particle[5000];
		int x = (int)(Math.random()*600);
		int y = (int)(Math.random()*600);
		for(int i = 0; i < myParticles.length; i++){
			myParticles[i] = new Particle(x, y);
		}
	}
	void show(){
		for(int i = 0; i < myParticles.length; i++){
			myParticles[i].show();
			myParticles[i].move();
		}
	}
}

class OddballParticle extends Particle
{
	OddballParticle(){

	}
	void move(){

	}
	void show(){
		
	}
}