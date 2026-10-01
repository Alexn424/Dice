
void setup()
  {
    size(500,500);
    background(#E8E8E8);
    noLoop();
  }

void draw()
{   
    int sum = 0;
    background(#E8E8E8);
    for (int i = 20; i < 520; i+=100){
      for(int g = 20; g < 520; g+=100){
        Die bob = new Die(i,g);
        bob.roll();
        sum += bob.rollNum;
        bob.show();
        System.out.println(bob.rollNum);
      }
    }
    System.out.println();
    text("roll total: " + sum, 220, 400);

    //your code here
}
void mousePressed()
{
    redraw();
}
class Die //models one single dice cube
{
    //member variable declarations here
    int myX;
    int myY;
    int rollNum;
    int dotSize;
    int diceSize;
    
    Die(int x, int y) //constructor
    {
        //variable initializations here
       myX = x;
       myY = y;
       rollNum = 1;
       dotSize = 2;
       diceSize = 50;
    }
    void roll()
    {
      rollNum = (int)(Math.random() * 6) + 1;
        //your code here
    }
    void show()
    {
      fill(255);
      stroke(0);
      rect(myX, myY, diceSize,diceSize);
      fill(0);
      if (rollNum == 1){
         ellipse(myX + 25, myY + 25,dotSize,dotSize); 
      }
      else if (rollNum == 2){
        ellipse(myX + 16, myY + 25,dotSize,dotSize);
        ellipse(myX + 34, myY + 25,dotSize,dotSize);
      }
      else if (rollNum == 3){
        ellipse(myX + 12, myY + 25,dotSize,dotSize);
        ellipse(myX + 25, myY + 25,dotSize,dotSize);
        ellipse(myX + 38, myY + 25,dotSize,dotSize);
      }
      else if (rollNum == 4){
        ellipse(myX + 16, myY + 16,dotSize,dotSize);
        ellipse(myX + 34, myY + 16,dotSize,dotSize);
        ellipse(myX + 16, myY + 34,dotSize,dotSize);
        ellipse(myX + 34, myY + 34,dotSize,dotSize);
      }
      else if (rollNum == 5){
        ellipse(myX + 16, myY + 16,dotSize,dotSize);
        ellipse(myX + 34, myY + 16,dotSize,dotSize);
        ellipse(myX + 16, myY + 34,dotSize,dotSize);
        ellipse(myX + 34, myY + 34,dotSize,dotSize);
        ellipse(myX + 25, myY + 25,dotSize,dotSize);
      }
      else if (rollNum == 6){
        ellipse(myX + 16, myY + 12,dotSize,dotSize);
        ellipse(myX + 34, myY + 12,dotSize,dotSize);
        ellipse(myX + 16, myY + 25,dotSize,dotSize);
        ellipse(myX + 34, myY + 25,dotSize,dotSize);
        ellipse(myX + 16, myY + 38,dotSize,dotSize);
        ellipse(myX + 34, myY + 38,dotSize,dotSize);   
      }
        //your code here
    }
}




