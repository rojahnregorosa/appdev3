void main() {
  var list1 = [];
  list1.add(10);
  list1.add(20);
  list1.add(108);
  list1.add(1055);

  //enhanced for loop
  for(var i in list1) {
    print(i);
  }

  var num1 = 4;
  var num2 = 58;
  var num3 = 12;

  if(num1 > num2 && num1 > num3) {
    print("num1 is greater");
  } else if(num2 > num1 && num2 > num3) {
    print("num2 is greater");
  } else {
    print("num3 is greater");
  }

  //Anonymous function - call a function inside a function because there's no name for the function
  var list = ["James", "Patrick", "Mathew", "Tom"];
  print("Example of anonymous function");
  list.forEach((item) { //function without a name
    print('${list.indexOf(item)}: $item');
  });

  //Lambda expression/Arrow function
  var multiply = (int a, int b) => a * b;
  var result = multiply(5, 3);
  print(result);

  //Creating object of sub class
  Child c = new Child();

  //Areas of shapes
  Circle circle = new Circle();
  print(circle.area(3));

  Square square = new Square();
  print(square.area(3));

  //Operation enum
  const a = 4;
  const b = 2;
  const op = Operation.minus;
  switch(op) {
    case Operation.plus:
      print('$a + $b = ${a + b}');
      break;
    case Operation.minus:
      print('$a - $b = ${a - b}');
      break;
    case Operation.multiply:
      print('$a * $b = ${a * b}');
      break;
    case Operation.divide:
      print('$a / $b = ${a / b}');
      break;
  }
}

  //Base class called Parent
  class Parent
  {
    Parent()
    {
      print("This is the super class constructor");
    }
  }

  //Creating object of sub class
  class Child extends Parent
  {
    Child():super()
    {
      print("This is the sub class constructor");
    }
  }

  abstract class Shape
  {
    double area(double x);
  }

  class Circle extends Shape
  {
      var pi = 3.1415;

      @override
      double area(double radius) {
      return pi * (radius * radius);
    }
  }

  class Square extends Shape
  {
    @override
    double area(double area) {
      return area * area;
    }
  }

  class Student {
    var _rollNo;
    var _name;

  get rollNo => _rollNo;

  set rollNo(value) {
    _rollNo = value;
  }

  get name => _name;

  set name(value) {
    _name = value;
  }
  }

  enum Operation {
  plus,
  minus,
  multiply,
  divide
  }