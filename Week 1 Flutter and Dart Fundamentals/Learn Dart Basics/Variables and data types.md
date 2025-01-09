## **Variables**

### **1. Common Types of Variables**

### **`var`**

- Dart automatically infers the type based on the assigned value.
- Once inferred, the type cannot change.

```dart
var name = "Flutter"; // inferred as String
// name = 123; // Error: Type 'int' can't be assigned to 'String'
```

---

### **`dynamic`**

- A special type that allows the variable to hold any type of data.
- Type checking is done at runtime.

```dart
dynamic variable = "Hello";
variable = 42; // No error, type changes at runtime
```

---

### **`Object`**

- The base class for all Dart types.
- Unlike **`dynamic`**, you must explicitly cast it to use specific functionality.

```dart
Object obj = "Dart";
print(obj); // Works because String inherits Object

// obj.length; // Error: Object doesn't have a property 'length'
if (obj is String) {
  print(obj.length); // Works after type check
}
```

---

### **`final`**

- A variable that can only be set once but isn't necessarily a compile-time constant.
- Ideal for values that you compute once and never change.

```dart
final timestamp = DateTime.now();
print(timestamp);
```

---

### **`const`**

- A compile-time constant.
- Must be known at compile time and cannot depend on runtime values.

```dart
const pi = 3.14;
// const timestamp = DateTime.now(); // Error: Const variables must be compile-time constants
```

---

### **2. Nullable Variables (`?`)**

- By default, Dart variables are non-nullable, meaning they can't hold **`null`**.
- Use **`?`** to allow a variable to be nullable.

```dart
int? age = null; // Nullable integer
age = 30;
print(age); // 30
```

---

### **3. Late Initialization (`late`)**

- Use **`late`** for variables that are initialized after their declaration but will definitely be assigned before use.
- Helpful for variables with expensive initialization.

```dart
late String description;

void main() {
  description = "Dart is amazing!";
  print(description); // Dart is amazing!
}
```

---

### **4. Typed Variables**

Dart supports explicitly typed variables for strong typing.

### **Primitive Types:**

- **`int`**: For integers.
- **`double`**: For floating-point numbers.
- **`bool`**: For boolean values.
- **`String`**: For text values.

```dart
int age = 25;
double height = 5.9;
bool isValid = true;
String name = "John";
```

---

### **Special Types:**

- **`Null`**: Explicitly represents a null value.
- **`Never`**: For functions or expressions that never complete (e.g., throwing errors).
- **`void`**: Used for functions that do not return a value.

```dart
void printMessage() {
  print("This function returns nothing.");
```

---

### **5. Variable Scopes**

- **Local Variables**: Defined inside functions or blocks, only accessible within that block.
- **Global Variables**: Defined outside functions, accessible throughout the program.
- **Static Variables**: Belong to the class, not instances of the class.

```dart
class Counter {
  static int count = 0; // Shared among all instances
}

void main() {
  print(Counter.count); // 0
}
```

---

## Data Types

### **1. Primitive Types**

### **`int`**

- Represents whole numbers.

```dart
int age = 25;
```

### **`double`**

- Represents decimal numbers.

```dart
double pi = 3.14159;
```

### **`num`**

- A superclass for both **`int`** and **`double`**. You can use it for any numeric value.

```dart
num number = 10; // Can hold int or double
number = 10.5
```

### **`bool`**

- Represents true or false values.

```dart
bool isActive = true
```

### **`String`**

- Represents a sequence of characters (text).

```dart
String greeting = "Hello, Dart!"
```

---

### **2. Special Types**

### **`Null`**

- Represents the absence of a value.
- Explicitly nullable types (**`int?`**, **`String?`**) use this type.

```dart
String? name = null; // Nullable String
```

### **`void`**

- Represents the absence of a return value in functions.

```dart
void sayHello() {
  print("Hello!");
}
```

### **`Never`**

- Represents a function that never returns (e.g., a function that throws an exception).

```dart
Never throwError(String message) {
  throw Exception(message);
}
```

---

### **3. Collections**

### **`List`**

- An ordered collection of elements.

```dart
List<int> numbers = [1, 2, 3];
```

### **`Set`**

- An unordered collection of unique elements.

```dart
Set<String> fruits = {"apple", "banana", "apple"}; // {"apple", "banana"}
```

### **`Map`**

- A key-value pair collection.

```dart
Map<String, int> ages = {"Alice": 25, "Bob": 30}
```

---

### **4. Custom and Composite Types**

### **`dynamic`**

- A flexible type that can hold any type at runtime.

```dart
dynamic value = 42;
value = "Now I'm a string!";
```

### **`Object`**

- The base class for all Dart types. It requires explicit casting to access specific methods.

```dart
Object obj = "Dart";
if (obj is String) {
  print(obj.length); // Safe after type check
}
```

### **User-Defined Types (Classes)**

- You can create custom types using classes.

```dart
class Point {
  int x, y;
  Point(this.x, this.y);
}
Point p = Point(3, 4);
```

---

### **5. Special Data Types**

### **`Rune`**

- Represents Unicode code points for characters.

```dart
String emoji = "😊";
print(emoji.runes); // Unicode code points
```

### **`Symbol`**

- Represents an operator or identifier in a program.

```dart
Symbol symbol = #myVariable;
print(symbol); // Symbol("myVariabl
```

---

### **6. Advanced Types**

### **`Future`**

- Represents an asynchronous operation that will complete later.

```dart
Future<String> fetchData() async {
  return "Data fetched!";
}
```

### **`Stream`**

- Represents a sequence of asynchronous events.

```dart
Stream<int> countStream = Stream.fromIterable([1, 2, 3, 4]);
countStream.listen((number) => print(number))
```

---

### **7. Type Aliases (`typedef`)**

- Allows you to create aliases for complex function types.

```dart
typedef Greet = String Function(String name);
String sayHello(String name) => "Hello, $name!";
Greet greet = sayHello;
print(greet("Dart")); // Hello, Dart!
```

---

### **8. Nullable Types (`?`)**

- Variables can explicitly allow **`null`** values by adding a **`?`**.

```dart
String? nullableName;
nullableName = "Dart";
nullableName = null; // Allowed
```

---

### **9. Enums**

- Represents a set of predefined constants.

```dart
enum Status { active, inactive, paused }
Status currentStatus = Status.active;
```

---

### **10. Generic Types**

- Parameterized types used for collections or custom classes.

```dart
class Box<T> {
  T content;
  Box(this.content);
}

Box<int> intBox = Box(42);
Box<String> stringBox = Box("Dart");
```

---