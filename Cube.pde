class Cube
{
  //Object creates the cubes that fill the grid
  
private float x,y;
private float size;
private color fillCubeColour;

//constructor - creates a new cube
public Cube(float cubeX, float cubeY, float cubeSize, color cubeColour)
{
 x = cubeX;
 y = cubeY;
 size = cubeSize;
 fillCubeColour = cubeColour;
}

//Displays the cube
public void displayCube()
{
  fill(fillCubeColour);
  rect(x,y,size,size);
}

//Mutator for the colour - Sets cube colour to grey
void setBase() 
{
  fillCubeColour = BASE;
}

//Mutator for the colour - Changes colour of the block its on, based on the number that is pressed 
void changeColour()
{
   if (key == '1' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = RED;
  } else if (key == '2' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = ORANGE;
  } else if (key == '3' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = YELLOW;
  } else if (key == '4' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = GREEN;
  } else if (key == '5' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = BLUE;
  } else if (key == '6' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = PURPLE;
  } else if (key == '7' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = PINK;
  } else if (key == '8' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = BROWN;
  } else if (key == '9' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = WHITE;
  } else if (key == '0' && ((mouseX < x + size && mouseX > x) && (mouseY > y && mouseY < y + size)))
  {
    fillCubeColour = BLACK;
  } 
}
}
