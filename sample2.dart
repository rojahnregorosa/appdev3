class Employee {
  var _empName;
  var _empSalary;
  var _empAge;

  get empName => _empName;

  set empName(value) {
    _empName = value;
  }

  get empSalary => _empSalary;

  get empAge => _empAge;

  set empAge(value) {
    _empAge = value;
  }

  set empSalary(value) {
    _empSalary = value;
  }
}

class Laptop {
  //Constructor
  Laptop({var name, var color}) {
    print("Laptop constructor");
    print("Name: ${name}");
    print("Color: ${color}");
  }
}

class Macbook extends Laptop {
  //Constructor
  Macbook({var name, var color}) : super(name: name, color: color) {
    print("Macbook constructor");
  }
}

void main() {
  var macbook = Macbook(name: "Macbook Pro", color: "Silver");

  double tempFarenheit = 86;
  double tempCelsius = (tempFarenheit - 32) / 1.8;
  print(
    '${tempFarenheit.toStringAsFixed(1)}F = ${tempCelsius.toStringAsFixed(1)}C'
  );

  //arrow function
  int add(int x, int y) => x + y;
  int sub(int x, int y) => x - y;

  print(add(3, 5));
  print(sub(5, 4));


  //anonymous function
  var words = ['sky', 'cloud', 'forest', 'welcome'];

  words.forEach((String word) {
    print('$word has ${word.length} characters');
    });

  int r1 = apply(3, inc);
  int r2 = apply(2, dec);
  print(r1);
  print(r2);

  String buildMessage(String name, String occupation) {
    return "$name is a $occupation";
  }

  var name = "John Doe";
  var occupation = "gardener";

  var msg = buildMessage(name, occupation);
  print(msg);
}

int inc(int x) => ++x;
int dec(int x) => --x;

int apply(int x, Function f) {
  return f(x);
}
