## **Functions**

Functions are blocks of reusable code that perform specific tasks. They help you organize your code, make it more readable, and avoid code duplication.

**Basic Syntax:**

```dart
returnType functionName(parameter1, parameter2, ...) {
  // Function body
  return returnValue;
}
```

- **`returnType`:** The data type of the value returned by the function.
- **`functionName`:** The name of the function.
- **`parameters`:** Optional input values for the function.
- **`return returnValue;`:** Optionally returns a value.

**Example:**

```dart
int addNumbers(int a, int b) {
  int sum = a + b;
  return sum;
}
```

---

### **Additional Dart Functions and Control Flow**

**1. Named Parameters:**

- You can provide default values to parameters and specify them by name when calling the function:

```dart
void greet({String name = "World", int age = 30}) {
    print("Hello, $name! You are $age years old.");
}
```

**2. Optional Positional Parameters:**

- You can make parameters optional by enclosing them in square brackets:

```dart
int calculateArea(int length, [int width = 1]) {
    return length * width;
}
```

**3. Arrow Functions:**

- For concise single-expression functions:

```dart
int square(int x) => x * x;
```

**4. Recursion:**

- A function can call itself:

```dart
int factorial(int n) {
    if (n == 0) {
        return 1;
    } else {
        return n * factorial(n - 1);
    }
}
```

**5. `switch` Statement:**

- A more concise way to handle multiple conditions:

```dart
void checkGrade(int score) {
    switch (score) {
        case 90:
            print("Excellent");
            break;
        case 80:
            print("Very Good");
            break;
        default:
            print("Good");
    }
}
```

**6. `try-catch-finally` Blocks:**

- For handling exceptions and ensuring code execution:

```dart
void divideNumbers(int a, int b) {
    try {
        int result = a ~/ b;
        print("Result: $result");
    } catch (e) {
        print("Error: $e");
    } finally {
        print("This block always executes.");
    }
}
```

---

## **Control Flow**

Control flow statements allow you to control the execution flow of your program.

**1. `if` and `else` Statements:**

```dart
if (condition) {
  // Code to execute if the condition is true
} else {
  // Code to execute if the condition is false
}
```

**2. `for` Loop:**

```dart
for (int i = 0; i < 10; i++) {
  // Code to execute 10 times
}
```

**3. `while` Loop:**

```dart
while (condition) {
  // Code to execute while the condition is true
}
```

**4. `do-while` Loop:**

```dart
do {
  // Code to execute at least once
} while (condition);
```

**Example:**

```dart
void checkNumber(int number) {
  if (number > 0) {
    print("$number is positive.");
  } else if (number < 0) {
    print("$number is negative.");
  } else {
    print("$number is zero.");
  }
}
```

---

## **Practice Problem 1:**

Write a Dart function that takes a number as input and determines whether it's even or odd. Print the result to the console.

**Here's a solution:**

```dart
void main() {
    int myNumber = 3;  // Or any other variable declaration

    void isEvenOrOdd(int number) {
        if (number % 2 == 0) {
            print("$number is even");
        } else {
            print("$number is odd");
        }
    }

    isEvenOrOdd(myNumber);  // Call the function with a number
}
```

### **Line-by-Line Explanation:**

**Line 1:**

```dart
void main() {
```

- This line declares the `main` function, which is the entry point of every Dart program.
- The `void` keyword indicates that the function doesn't return any value.

**Line 2:**

```dart
int myNumber = 3;
```

- This line declares an integer variable named `myNumber` and assigns the value `3` to it.

**Line 3:**

```dart
void isEvenOrOdd(int number) {
```

- This line declares a function named `isEvenOrOdd` that takes an integer parameter `number`.
- The `void` keyword indicates that the function doesn't return any value.

**Lines 4-7:**

```dart
if (number % 2 == 0) {
    print("$number is even");
} else {
    print("$number is odd");
}
```

- This is an `if-else` conditional block:
    - The `if` condition checks if the `number` is divisible by 2 (i.e., even).
    - If the condition is true, the `print` statement inside the `if` block is executed, printing a message indicating that the number is even.
    - If the condition is false, the `else` block is executed, printing a message indicating that the number is odd.

**Line 9:**

```dart
isEvenOrOdd(myNumber);
```

- This line calls the `isEvenOrOdd` function, passing the value of the `myNumber` variable as an argument.
- The function will then determine whether `myNumber` is even or odd and print the appropriate message.

**In summary:**

1. The code declares a variable `myNumber` and assigns it the value `3`.
2. It defines a function `isEvenOrOdd` to check whether a given number is even or odd.
3. The `main` function calls the `isEvenOrOdd` function with the `myNumber` as an argument.
4. The `isEvenOrOdd` function checks if `myNumber` is even or odd and prints the result.

---

## **Practice problem 2:**

Write a Dart function that calculates the factorial of a given non-negative integer. The factorial of a number n (denoted as n!) is the product of all positive integers less than or equal to **1** n.

**Hint:** You can use a `for` loop to calculate the factorial iteratively.

```dart
void main() {
  int factorial(int n) {
    if (n < 0) {
      throw ArgumentError("Factorial is not defined for negative numbers");
    }

    int result = 1;
    for (int i = 1; i <= n; i++) {
      result *= i;
    }
    return result;
  }

  // Example usage:
  int number = 5;
  int factorialResult = factorial(number);
  print("The factorial of $number is $factorialResult");
}
```

### **Line-by-Line Explanation:**

```dart
**void main()**:
```

- This line declares the `main` function, which is the entry point of every Dart program.
- `void` indicates that the function doesn't return any value.

```dart
**int factorial(int n)**:
```

- This line declares a function named `factorial` that takes an integer `n` as input and returns an integer.

```dart
**if (n < 0) { ... }**:
```

- This is a conditional statement that checks if the input `n` is negative.
- If `n` is negative, it throws an `ArgumentError` with a message indicating that factorial is not defined for negative numbers.

```dart
**int result = 1;**:
```

- This line initializes a variable `result` to 1. This variable will store the calculated factorial.

```dart
**for (int i = 1; i <= n; i++) { ... }**:
```

- This is a `for` loop that iterates from `i = 1` to `i = n`.
- In each iteration:
    - `result *= i;`: This line multiplies the current value of `result` by the current value of `i` and assigns the result back to `result`.

```dart
**return result;**:
```

- After the loop completes, the final value of `result`, which is the factorial of `n`, is returned.

```dart
**int number = 5;**:
```

- This line declares an integer variable `number` and assigns it the value 5.

```dart
**int factorialResult = factorial(number);**:
```

- This line calls the `factorial` function with `number` as an argument and stores the returned factorial value in `factorialResult`.

```dart
**print("The factorial of $number is $factorialResult");**:
```

- This line prints a message to the console, displaying the factorial of the `number`.

---