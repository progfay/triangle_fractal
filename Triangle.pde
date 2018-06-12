class Triangle {

  Point[] vertex;
  color fill;

  Triangle() {
    this.vertex = new Point [3];
    this.vertex[0] = new Point(500*cos(radians( 30)), 500*sin(radians( 30)));
    this.vertex[1] = new Point(500*cos(radians(150)), 500*sin(radians(150)));
    this.vertex[2] = new Point(500*cos(radians(270)), 500*sin(radians(270)));
  }

  Triangle(Point p1, Point p2, Point p3) {
    this.vertex = new Point [3];
    this.vertex[0] = new Point(p1);
    this.vertex[1] = new Point(p2);
    this.vertex[2] = new Point(p3);
    this.fill = -1;
    this.fill = color(random(255));
    // this.fill = color(random(255), random(255), random(255));
  }

  Point center() {
    return new Point(
      (this.vertex[0].x+this.vertex[1].x+this.vertex[2].x) /3, 
      (this.vertex[0].y+this.vertex[1].y+this.vertex[2].y) /3
      );
  }

  void div_triangle(int level) {
    if (level > MAX_LEVEL) return;
    Point center = this.center();
    Triangle div1 = new Triangle(this.vertex[0], this.vertex[1], center);
    Triangle div2 = new Triangle(this.vertex[1], this.vertex[2], center);
    Triangle div3 = new Triangle(this.vertex[2], this.vertex[0], center);
    triangles.add(div1);
    triangles.add(div2);
    triangles.add(div3);
    div1.div_triangle(level+1);
    div2.div_triangle(level+1);
    div3.div_triangle(level+1);
  }

  void draw() {
    fill(fill);
    triangle(this.vertex[0].x, this.vertex[0].y, this.vertex[1].x, this.vertex[1].y, this.vertex[2].x, this.vertex[2].y);
  }
}
