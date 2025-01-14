## **1. Classes**

A **class** is a blueprint for creating objects. It encapsulates data (properties) and behavior (methods) in a single unit.

### **Example: Defining and Using a Class**

```dart
class Car {
  String brand = ''; // Initialize with default values
  int year = 0;

  // Method
  void displayInfo() {
    print('Brand: $brand, Year: $year');
  }
}

void main() {
  // Create an object of the Car class
  Car myCar = Car();
  myCar.brand = 'Toyota'; // Assign values
  myCar.year = 2022;
  myCar.displayInfo(); // Call the method
}

```

---

## **2. Methods**

Methods are functions defined inside a class that describe the behavior of an object.

### **Example: Adding Methods**

```dart
// Define a class named Calculator
class Calculator {
  // Method to add two numbers
  // Takes two integers as input (a and b) and returns their sum as an integer
  int add(int a, int b) {
    return a + b; // Return the sum of a and b
  }

  // Method to multiply two numbers
  // Takes two integers as input (a and b) and returns their product as an integer
  int multiply(int a, int b) {
    return a * b; // Return the product of a and b
  }
}

void main() {
  // Create an object of the Calculator class
  Calculator calc = Calculator();

  // Call the add method with arguments 5 and 3
  // Print the result to the console
  print('Addition: ${calc.add(5, 3)}'); // Output: 8

  // Call the multiply method with arguments 5 and 3
  // Print the result to the console
  print('Multiplication: ${calc.multiply(5, 3)}'); // Output: 15
}

```

---

## **3. Constructors**

Constructors are special methods used to initialize objects. Dart provides three types of constructors:

1. **Default Constructor** (automatically provided if none is defined).
2. **Parameterized Constructor** (allows you to pass values during object creation).
3. **Named Constructor** (provides custom initialization).

### **Example: Default and Parameterized Constructor**

```dart
// Define a class named Person
class Person {
  // Declare two properties (or instance variables) of the class
  String name; // The name of the person
  int age;     // The age of the person

  // Parameterized Constructor
  // A special method that initializes the object with the provided values for name and age
  Person(this.name, this.age);

  // A method to introduce the person
  // It prints a message using the person's name and age
  void introduce() {
    print('Hi, my name is $name, and I am $age years old.');
  }
}

void main() {
  // Create an object of the Person class using the parameterized constructor
  Person p1 = Person('Alice', 25);

  // Call the introduce method of the Person class
  // This method will print a message introducing the person
  p1.introduce(); // Output: Hi, my name is Alice, and I am 25 years old.
}
```

### **Example: Named Constructor**

```dart
class Point {
  int x = 0; // Initialize x with default value
  int y = 0; // Initialize y with default value

  // Named Constructor
  // This constructor creates a Point object with x and y set to 0
  Point.origin() {
    x = 0;
    y = 0;
  }

  // Method to display the point coordinates
  void display() {
    print('Point: ($x, $y)');
  }
}

void main() {
  // Create a Point object using the named constructor
  Point p = Point.origin();

  // Call the display method to print the point's coordinates
  p.display(); // Output: Point: (0, 0)
}

```

---

### **4. Exercises**

### **Exercise 1: Basic Class**

- Create a `Book` class with:
    - Properties: `title` and `author`.
    - A method `details()` that prints the book details.
- Create an object of the `Book` class and call the `details()` method.

```dart
class Book {
  // Properties
  String title;
  String author;

  // Constructor to initialize the Book object
  Book(this.title, this.author);

  // Method to print book details
  void details() {
    print('Book Title: $title');
    print('Author: $author');
  }
}

void main() {
  // Create an object of the Book class
  Book myBook = Book('1984', 'George Orwell');

  // Call the details() method to print book details
  myBook.details();
}
```

### **Exercise 2: Methods**

- Create a `BankAccount` class with:
    - Properties: `accountNumber` and `balance`.
    - Methods:
        - `deposit(amount)`: Add amount to balance.
        - `withdraw(amount)`: Subtract amount from balance (if sufficient funds).
    - Create an object and test the methods.
    - 
    
    ```dart
    class BankAccount {
      // Properties
      String accountNumber;
      double balance;
    
      // Constructor to initialize account details
      BankAccount(this.accountNumber, this.balance);
    
      // Method to deposit money
      void deposit(double amount) {
        if (amount > 0) {
          balance += amount;
          print('Deposited: \$${amount.toStringAsFixed(2)}');
        } else {
          print('Invalid deposit amount.');
        }
      }
    
      // Method to withdraw money
      void withdraw(double amount) {
        if (amount > 0 && amount <= balance) {
          balance -= amount;
          print('Withdrew: \$${amount.toStringAsFixed(2)}');
        } else if (amount > balance) {
          print('Insufficient funds.');
        } else {
          print('Invalid withdrawal amount.');
        }
      }
    
      // Method to display account details
      void displayBalance() {
        print('Account Number: $accountNumber');
        print('Balance: \$${balance.toStringAsFixed(2)}');
      }
    }
    
    void main() {
      // Create an object of the BankAccount class
      BankAccount myAccount = BankAccount('123456789', 1000.0);
    
      // Display initial account details
      myAccount.displayBalance();
    
      // Test deposit method
      myAccount.deposit(500.0); // Deposit $500
      myAccount.displayBalance();
    
      // Test withdraw method
      myAccount.withdraw(300.0); // Withdraw $300
      myAccount.displayBalance();
    
      // Test withdraw method with insufficient funds
      myAccount.withdraw(2000.0); // Attempt to withdraw $2000
      myAccount.displayBalance();
    }
    ```
    

### **Exercise 3: Constructors**

- Create a `Student` class with:
    - A parameterized constructor that accepts `name` and `grade`.
    - A method `printDetails()` to display student info.
- Create multiple objects with different data and call the method for each.
    
    ```dart
    class Student {
      // Properties
      String name;
      String grade;
    
      // Parameterized Constructor
      Student(this.name, this.grade);
    
      // Method to display student details
      void printDetails() {
        print('Student Name: $name');
        print('Grade: $grade');
      }
    }
    
    void main() {
      // Create multiple objects of the Student class
      Student student1 = Student('Alice', 'A');
      Student student2 = Student('Bob', 'B');
      Student student3 = Student('Charlie', 'A+');
    
      // Call the printDetails method for each object
      student1.printDetails();
      print('---');
      student2.printDetails();
      print('---');
      student3.printDetails();
    }
    
    ```
    

### **Exercise 4: Advanced**

- Create a `Rectangle` class with:
    - Properties: `width` and `height`.
    - A named constructor `square(side)` to create a square.
    - Methods:
        - `area()`: Returns the area of the rectangle.
        - `perimeter()`: Returns the perimeter of the rectangle.
    - Test the named constructor and methods.
    
    ```dart
    class Rectangle {
      // Properties
      double width;
      double height;
    
      // Parameterized Constructor
      Rectangle(this.width, this.height);
    
      // Named Constructor to create a square
      Rectangle.square(double side)
          : width = side,
            height = side;
    
      // Method to calculate the area of the rectangle
      double area() {
        return width * height;
      }
    
      // Method to calculate the perimeter of the rectangle
      double perimeter() {
        return 2 * (width + height);
      }
    }
    
    void main() {
      // Create a Rectangle object using the parameterized constructor
      Rectangle rect1 = Rectangle(10.0, 5.0);
      print('Rectangle 1:');
      print('Area: ${rect1.area()}'); // Output: 50.0
      print('Perimeter: ${rect1.perimeter()}'); // Output: 30.0
      print('---');
    
      // Create a Rectangle object using the named constructor
      Rectangle square = Rectangle.square(7.0);
      print('Square:');
      print('Area: ${square.area()}'); // Output: 49.0
      print('Perimeter: ${square.perimeter()}'); // Output: 28.0
    }
    ```
    

---