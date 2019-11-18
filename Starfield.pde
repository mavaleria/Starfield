Particle[] bob = new Particle[1000];
void setup()
{
	//your code here
	size(500,500);
	background(0);
	for(int i = 0; i < bob.length; i++){
		bob[i] = new Particle();
		
	}
	bob[0] = new OddballParticle();
}
void draw()
{
	for(int i = 0; i < bob.length; i++){
		bob[i].show();
		bob[i].move();
		
	}
	
}
class Particle
{
	//your code here
	double myX;
	double myY;
	double myAngle;
	double mySpeed;
	int myColor;
	Particle(){
		 myX = 250;
		 myY = 250;
		 mySpeed = 10 * Math.random();
		 myAngle = 2 * Math.PI * Math.random();
		 myColor = color(255, 0, 0);
	}	
	void move(){
		myX = myX + Math.cos(myAngle) * mySpeed;
		myY = myY + Math.sin(myAngle) * mySpeed;
	}
	void show(){
		fill(myColor);
		ellipse( (float) myX, (float) myY, 5, 5);
	}

}

class OddballParticle extends Particle//inherits from Particle
{
	//your code here
	
	void show(){
		fill(myColor);
		ellipse( (float) myX, (float) myY, 200, 200);
	}
}


