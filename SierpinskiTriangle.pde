public void setup()
{
 
 size(800,800);
 
 background(255);
	noLoop();

}
public void draw()
{

sierpinski(0,800,1600);
}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{

stroke(255);

	if ( len <= 20){
		fill( (int) (Math.random()*100),100,80 );
		triangle(x,y, x+len, y, x+len/2, y-len);

	}

	else {
		fill( (int) (Math.random()*100), 100, 80 );
 		sierpinski(x,y,len/2);
 		sierpinski(x+len/2,y,len/2);
 		sierpinski(x+len/4,y-len/2,len/2);
 		

	}

}