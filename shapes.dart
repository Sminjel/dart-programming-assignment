// Abstract class for a generic Shape
abstract class Shape {
  double area(); // Abstract method to calculate area
}

// Class that encapsulates data and methods
class Rectangle extends Shape {
  // Private variables
  double _width;
  double _height;

  // Constructor
  Rectangle(this._width, this._height);

  // Getter for width
  double get width => _width;

  // Getter for height
  double get height => _height;

  // Method to calculate area
  @override
  double area() {
    return _width * _height;
  }
}

// Subclass that inherits from Rectangle
class Square extends Rectangle {
  // Constructor
  Square(double side) : super(side, side); // Calls the parent constructor

  // Method overriding
  @override
  double area() {
    return width * width; // Unique implementation for square
  }
}

// Another subclass that inherits from Shape
class Circle extends Shape {
  // Private variable
  double _radius;

  // Constructor
  Circle(this._radius);

  // Method to calculate area
  @override
  double area() {
    return 3.14 * _radius * _radius; // Unique implementation for circle
  }
}

void main() {
  // Create instances of shapes
  Shape rectangle = Rectangle(10, 5);
  Shape square = Square(4);
  Shape circle = Circle(3);

  // Calculate and display areas
  print("Area of Rectangle: ${rectangle.area()}");
  print("Area of Square: ${square.area()}");
  print("Area of Circle: ${circle.area()}");
}
