### 1. **Lists**

A **List** is an ordered collection of items, like an array in other programming languages. Lists can be either fixed-length or growable.

### **Types of Lists:**

1. **Fixed-length List:** Cannot add or remove elements after creation.
    
    ```dart
    void main() {
      var fixedList = List.filled(3, 0); // A fixed list of size 3, all elements initialized to 0
      fixedList[0] = 5; // Update value
      print(fixedList); // Output: [5, 0, 0]
    }
    
    ```
    
2. **Growable List:** Can dynamically add or remove elements.
    
    ```dart
    void main() {
      List<int> growableList = [];
      growableList.add(10); // Add an item
      growableList.addAll([20, 30]); // Add multiple items
      print(growableList); // Output: [10, 20, 30]
    
      growableList.remove(20); // Remove item by value
      print(growableList); // Output: [10, 30]
    }
    
    ```
    

### **Common List Operations:**

```dart
void main() {
  List<String> fruits = ['Apple', 'Banana', 'Cherry'];

  // Access elements
  print(fruits[1]); // Output: Banana

  // Modify an element
  fruits[0] = 'Mango';

  // Iterate through the list
  for (String fruit in fruits) {
    print(fruit);
  }

  // Check if an item exists
  print(fruits.contains('Banana')); // Output: true
}

```

---

### 2. **Sets**

A **Set** is an unordered collection of unique items.

### **Why Use Sets?**

- Automatically ignores duplicate values.
- Faster checks for whether an item exists compared to Lists.

### **Set Example:**

```dart
void main() {
  Set<int> numbers = {1, 2, 3, 3}; // Duplicate 3 is ignored
  numbers.add(4); // Add an item
  print(numbers); // Output: {1, 2, 3, 4}

  // Remove an item
  numbers.remove(2);
  print(numbers); // Output: {1, 3, 4}

  // Check if a value exists
  print(numbers.contains(3)); // Output: true
}

```

### **Iterating Through a Set:**

```dart
void main() {
  Set<String> colors = {'Red', 'Blue', 'Green'};
  for (String color in colors) {
    print(color);
  }
}
```

---

### 3. **Maps**

A **Map** is a collection of key-value pairs, similar to a dictionary.

### **Why Use Maps?**

- Allows quick access to values via unique keys.
- Keys can be of any type (but must be unique).

### **Map Example:**

```dart
void main() {
  Map<String, int> scores = {'Alice': 90, 'Bob': 85};

  // Access values
  print(scores['Alice']); // Output: 90

  // Add or update values
  scores['Charlie'] = 88; // Add new key-value pair
  scores['Bob'] = 95; // Update value for key 'Bob'

  // Iterate through keys and values
  scores.forEach((key, value) {
    print('$key scored $value');
  });

  // Check if a key exists
  print(scores.containsKey('Alice')); // Output: true
}

```

### **Removing Items:**

```dart
void main() {
  Map<String, int> scores = {'Alice': 90, 'Bob': 85};
  scores.remove('Alice'); // Remove by key
  print(scores); // Output: {Bob: 85}
}

```

---

### Practice Questions

### **1. Lists:**

1. Create a program that:
    - Takes a list of numbers.
    - Filters out numbers greater than 10.
    - Prints the remaining numbers.
2. Write a program to reverse a list of names and print them.
    
    ```dart
    void main() {
      List<int> numbers = [5, 12, 8, 20, 3];
      List<int> filtered = numbers.where((num) => num <= 10).toList();
      print(filtered); // Output: [5, 8, 3]
    }
    ```
    

### **Explanation:**

```dart
void main() {
```

- This is the **main function**, where the execution of the Dart program begins.
- Every Dart program must have a **`main`** function as its entry point.

---

```dart
List<int> numbers = [5, 12, 8, 20, 3];
```

- Creates a **list** of integers named **`numbers`**.
- **`List<int>`** specifies that this is a list containing integers (**`int`**).
- The list is initialized with five values: **`5, 12, 8, 20, and 3`**.

### **Key Concept:**

- A **list** is an ordered collection, meaning the numbers are stored in the same order as provided.

```dart
List<int> filtered = numbers.where((num) => num <= 10).toList();
```

This line performs **filtering** to create a new list, **`filtered`**, with only the numbers from the **`numbers`** list that satisfy a specific condition.

Let’s break it down step by step:

```dart
Step 1: numbers.where(...)
```

- The **`where`** method is called on the **`numbers`** list.This method allows you to filter elements based on a condition.

```dart
Step 2: (num) => num <= 10
```

- **Lambda Function (Anonymous Function):**This defines the condition for filtering the list.
    - The **`num`** parameter represents each number in the list.
    - The condition **`num <= 10`** checks if a number is **less than or equal to 10**.
    - If the condition is true, that number is included in the filtered results; otherwise, it is excluded.

---

```dart
Step 3: .toList()
```

- The **`where`** method does not return a **`List`** directly. It returns an **`Iterable`**, which is a lazy collection designed for iteration.
- The **`.toList()`** method converts the **`Iterable`** into a **`List`**.

---

### **Result:**

The **`filtered`** list contains only the numbers from **`numbers`** that are less than or equal to 10:

```dart
filtered = [5, 8, 3];
```

---

```dart
4. print(filtered);
```

- The **`print`** statement displays the value of the **`filtered`** list in the console.
- Output: **`[5, 8, 3]`**

---

### **2. Sets:**

1. Create a program that:
    - Takes a list of numbers with duplicates.
    - Stores them in a set to remove duplicates.
    - Prints the unique numbers.
2. Write a program that checks if a particular number is present in a set.
    
    ```dart
    void main() {
      // Step 1: Create a list with duplicates
      List<int> numbers = [1, 2, 2, 3, 4, 4, 5];
    
      // Step 2: Convert the list into a set to remove duplicates
      Set<int> uniqueNumbers = numbers.toSet();
    
      // Print the unique numbers
      print('Unique numbers: $uniqueNumbers');
    
      // Step 3: Check if a particular number is present
      int numberToCheck = 3; // Change this value to check different numbers
      if (uniqueNumbers.contains(numberToCheck)) {
        print('$numberToCheck is present in the set.');
      } else {
        print('$numberToCheck is not present in the set.');
      }
    }
    ```
    

### **Explanation:**

1. **Convert List to Set:**
    - The method **`numbers.toSet()`** converts the list into a set, removing all duplicates.
    - Example: **`[1, 2, 2, 3, 4, 4, 5]`** becomes **`{1, 2, 3, 4, 5}`**.
2. **Check for Presence:**
    - The **`contains`** method checks if a particular element is present in the set.
    - Example: **`uniqueNumbers.contains(3)`** returns **`true`** if **`3`** is in the set.
3. **Output Results:**
    - Prints the unique numbers in the set.
    - Checks and prints whether the specified number (**`numberToCheck`**) is present.

---

### **3. Maps:**

1. Create a program that:
    - Stores a map of student names as keys and their scores as values.
    - Prints all students who scored more than 80.
    
    ```dart
    void main() {
      Map<String, int> studentScores = {
        'Alice': 85,
        'Bob': 92,
        'Charlie': 76,
        'Diana': 89,
        'Ethan': 94,
        'Fiona': 67,
        'George': 73,
        'Hannah': 88,
        'Isaac': 90,
        'Julia': 82,
      };
    
      // Print students with scores more than 80
      studentScores.forEach((name, score) {
        if (score > 80) {
          print('$name: $score');
        }
      });
    }
    ```
    
2. Write a program that:
    - Creates a map of cities and their populations.
    - Finds the city with the highest population.
        
        ```dart
        void main() {
          Map<String, double> cityPopulations = {
            'Tokyo': 37.4,
            'Delhi': 31.0,
            'Shanghai': 27.0,
            'São Paulo': 22.0,
            'Mumbai': 20.7,
            'Cairo': 20.4,
            'Beijing': 20.3,
            'Mexico City': 21.7,
            'Dhaka': 21.0,
            'New York City': 18.8,
          };
        
          // Find the city with the highest population
          var largestCity = cityPopulations.entries.reduce((a, b) => a.value > b.value ? a : b);
        
          print('City with the highest population: ${largestCity.key} (${largestCity.value}M)');
        }
        ```
        

---

### Breaking down the line starting from the variable **`largestCity`** in detail:

```dart
var largestCity = cityPopulations.entries.reduce((a, b) => a.value > b.value ? a : b);
```

---

### **Explanation:**

```dart
1. cityPopulations.entries
```

- The **`entries`** property converts the **`Map`** into a collection of **`MapEntry`** objects.Each **`MapEntry`** represents a key-value pair from the map.

**Example of `entries`:**

For the **`cityPopulations`** map:

```dart
[
  MapEntry('Tokyo', 37.4),
  MapEntry('Delhi', 31.0),
  MapEntry('Shanghai', 27.0),
  ...
]

```

---

```dart
2. .reduce((a, b) => a.value > b.value ? a : b)
```

The **`reduce`** method is used to find a single result by iteratively comparing elements.

**How `reduce` Works:**

1. It takes a function as an argument that specifies how to compare two elements (**`a`** and **`b`**).
2. The condition **`(a.value > b.value ? a : b)`**:
    - **`a.value > b.value`:** Compares the population of two cities.
    - **`? a : b`:** If **`a.value`** (population of **`a`**) is greater than **`b.value`**, return **`a`**; otherwise, return **`b`**.

**Example of the Reduce Process:**

For the entries:

- Compare **`Tokyo (37.4)`** with **`Delhi (31.0)`**: Tokyo wins.
- Compare Tokyo (winner so far) with **`Shanghai (27.0)`**: Tokyo wins.
- Repeat for all entries.Final result: **`MapEnry('Tokyo', 37.4)`**.

---

```dart
3. var largestCity
```

- The **`reduce`** method returns the **`MapEntry`** with the highest population.
- The **`largestCity`** variable now holds:
    
    ```dart
    MapEntry('Tokyo', 37.4)
    ```
    

---

**Printing the Result**

```dart
print('City with the highest population: ${largestCity.key} (${largestCity.value}M)');
```

**Explanation:**

1. **`largestCity.key`:**
    
    Accesses the city name (**`key`**) of the largest population entry. For example: **`Tokyo`**.
    
2. **`largestCity.value`:**
    
    Accesses the population (**`value`**) of the largest population entry. For example: **`37.4`**.
    
3. **Result String:**
    
    Combines both the city name and population into a readable output.
    

---

**Final Output:**

```dart
City with the highest population: Tokyo (37.4M)

```

---