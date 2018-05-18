class Point {
  float x;
  float y;

  Point() {
    this.x = random(width);
    this.y = random(height);
  }

  Point(float _x, float _y) {
    this.x = _x;
    this.y = _y;
  }

  Point(Point origin) {
    this.x = origin.x;
    this.y = origin.y;
  }

  boolean equals(Point target) {
    return (this.x == target.x && this.y == target.y);
  }
}