private double fractionLength = .8; 
private int smallestBranch = 6; 
private double branchAngle = .35;  
public void setup() 
{ 
	size(690,700);    
	noLoop(); 
} 
public void draw() 
{   
	  background(135,206,235);  
  stroke(200,255,0);   
  line(350,700,350,500);   
  drawBranches(350, 500, 100, Math.PI*3/2);  
  fill(139,69,19);
rect(0,650,700,80);
}
public void drawBranches(int x,int y, double branchLength, double angle) 
{   
  double angle1 = angle + branchAngle, angle2 = angle - branchAngle;
  int endX1 = (int)(branchLength*Math.cos(angle1) + x);
  int endY1 = (int)(branchLength*Math.sin(angle1) + y);
  int endX2 = (int)(branchLength*Math.cos(angle2) + x);
  int endY2 = (int)(branchLength*Math.sin(angle2) + y);
  line(x, y, endX1, endY1);
  line(x,y, endX2, endY2);
  if (branchLength > smallestBranch)
  {
    drawBranches(endX1, endY1, branchLength * fractionLength, angle1);
    drawBranches(endX2, endY2, branchLength * fractionLength, angle2);
  }
}   
