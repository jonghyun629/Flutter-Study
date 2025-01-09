## **1. StatelessWidget**

A **StatelessWidget** is immutable, meaning that its properties cannot change after it is built. StatelessWidgets are ideal for parts of your UI that do not change dynamically.

### Key Features:

- Fixed properties or configuration.
- The UI does not depend on any state changes.
- The widget is rebuilt only if its parent rebuilds it.

### Example:

```dart
class GreetingWidget extends StatelessWidget {
  final String name;

  GreetingWidget({required this.name});

  @override
  Widget build(BuildContext context) {
    return Text('Hello, $name!');
  }
}

```

**Usage**:

- Static text or layout that doesn't change (e.g., a title, logo, or constant labels).
- When you only need to display information.

---

## **2. StatefulWidget**

A **StatefulWidget** is mutable and can rebuild its UI dynamically in response to state changes. StatefulWidgets are used when the UI depends on user interactions, data updates, or other triggers.

### Key Features:

- Can manage and store state using the associated `State` class.
- Rebuilds the widget tree when the state changes.
- More resource-intensive than StatelessWidget but allows for dynamic updates.

### Example:

```dart
class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Counter: $_counter'),
        ElevatedButton(
          onPressed: _incrementCounter,
          child: Text('Increment'),
        ),
      ],
    );
  }
}

```

**Usage**:

- Parts of the UI that need to update dynamically (e.g., buttons, forms, animations).
- Handling user input or API responses.

---

### **Comparison Table**

| Feature | StatelessWidget | StatefulWidget |
| --- | --- | --- |
| **Immutability** | Immutable | Mutable |
| **State Management** | Cannot manage state internally | Can manage state using `State` class |
| **Use Case** | Static UI or configurations | Dynamic UI requiring updates |
| **Performance** | More lightweight and efficient | Slightly heavier due to state tracking |
| **Examples** | Logo, Title, Navigation buttons | Counters, Forms, Animations |

---

### **When to Use Which?**

- Use **StatelessWidget** when:
    - The widget depends only on the input parameters (`final` properties).
    - It does not need to respond to user interactions or external updates.
- Use **StatefulWidget** when:
    - The widget must handle user input, timers, API calls, or animations.
    - You need to update the widget tree dynamically.

---