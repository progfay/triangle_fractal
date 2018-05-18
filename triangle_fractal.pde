final int MAX_LEVEL = 5;
static ArrayList<Triangle> triangles = new ArrayList<Triangle>();

void setup() {
  size(800, 800);
  background(0);
  // noStroke();
  translate(width*0.5, height*0.6);
  Triangle parent = new Triangle();
  parent.div_triangle(0);
  for (Triangle triangle : triangles) {
    triangle.draw();
  }
  save("output.png");
}
