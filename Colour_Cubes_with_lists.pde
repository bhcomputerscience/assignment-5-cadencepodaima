/**
 * When you press a cube and then press a number key, the colour of the cube the mouse is on changes
 *to the colour that corelates to that number, when space is pressed, the cubes all reset
 *This version uses lists to reduce repetition
 *@author Cadence
 * @version Saturday, May 3
 */

//Making a list for the cubes
ArrayList<Cube> cubes;

//Square parameters
final float CUBE_SIZE = 100; //size of cubes
final int SIZE_OF_GRID = 5; // Cubes per row or column

//Base Colour- The colour the cubes start as and revert to if space pressed
final color BASE = 150;

//All Colours
final color RED = #eb1515;
final color ORANGE = #eb8415;
final color YELLOW = #ebc415;
final color GREEN = #47eb15;
final color BLUE = #1559eb;
final color PURPLE = #5c15eb;
final color PINK = #e015eb;
final color BROWN = #855330;
final color WHITE = 250;
final color BLACK = 0;

void setup()
{
  size(500, 500);
  background(100);

  cubes = new ArrayList<Cube>(); 

  //Making the the grid
  for (int rows = 0; rows < SIZE_OF_GRID; rows++) //Creates 5 rows
  {
    for (int columns = 0; columns < SIZE_OF_GRID; columns++) //Creates 5 columns
    {
      int x = columns * (width / SIZE_OF_GRID);
      int y = rows * (height /SIZE_OF_GRID);

      cubes.add(new Cube(x, y, CUBE_SIZE, BASE)); //Creates new cube
    }
  }
}

void draw()
{
  for (int i = 0; i < cubes.size(); i++) //displays all cubes
  {
    cubes.get(i).displayCube(); 
  }
}

void keyPressed()
{
  if (key == ' ') //if space key is pressed, set all cubes to grey
  {
    for (int i = 0; i < cubes.size(); i++)
    {
      cubes.get(i).setBase();
    }
  }
}

void mousePressed()
{
  for (int i = 0; i < cubes.size(); i++) //Goes through all cubes 
  {
    //Changes the colour of the cube the mouse is on
    cubes.get(i).changeColour(); 
  }
}
