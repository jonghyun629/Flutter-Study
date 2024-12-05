# Flutter Course Checklist

Owner: Lee Jong Hyun

### **Week 1: Flutter and Dart Fundamentals**

- [ ]  **Setup Flutter Environment**
    - [ ]  Install Flutter SDK.
    - [ ]  Set up VS Code/Android Studio.
    - [ ]  Configure emulators or physical device.
    - [ ]  Create your first Flutter project (`flutter create my_first_app`).
    - [ ]  Understand the `main.dart` file structure.
- [ ]  **Learn Dart Basics**
    - [ ]  Variables and data types.
    - [ ]  Functions and control flow (if/else, loops).
    - [ ]  Collections (lists, maps, sets).
    - [ ]  Classes, methods, and constructors.
- [ ]  **Understand Widgets**
    - [ ]  StatelessWidget vs StatefulWidget.
    - [ ]  Common widgets: `Text`, `Container`, `Row`, `Column`, `Image`, `ListView`.
    - [ ]  Understand widget tree concepts.
- [ ]  **Build a Simple UI**
    - [ ]  Create a profile app with:
        - [ ]  An image at the top.
        - [ ]  Name and description below it.
        - [ ]  Button to show a message (using `SnackBar` or `AlertDialog`).

---

### **Week 2: Layouts and Navigation**

- [ ]  **Master Layout Widgets**
    - [ ]  Practice with `Padding`, `Align`, `SizedBox`, `Expanded`, `Flex`, and `Stack`.
    - [ ]  Build and experiment with different layouts.
- [ ]  **Handle Input and Forms**
    - [ ]  Use `TextField` and controllers.
    - [ ]  Validate user input with `Form` and `TextFormField`.
- [ ]  **Learn Navigation**
    - [ ]  Use `Navigator.push` and `Navigator.pop`.
    - [ ]  Implement named routes.
- [ ]  **Build a Multi-Screen App**
    - [ ]  Create an app with 3 screens: Home, Details, and Settings.

---

### **Week 3: State Management and APIs**

- [ ]  **State Management Basics**
    - [ ]  Understand and use `setState` to manage widget state.
    - [ ]  Build a simple counter app to practice state updates.
- [ ]  **Fetch Data from APIs**
    - [ ]  Use the `http` package to make API requests.
    - [ ]  Parse and display JSON responses in a `ListView`.
- [ ]  **Explore Provider for State Management**
    - [ ]  Install and configure `provider` package.
    - [ ]  Refactor an app (e.g., counter or API-based) using `provider`.
- [ ]  **Build a Weather App**
    - [ ]  Fetch weather data using OpenWeather API.
    - [ ]  Allow users to input a city name and display current weather.

---

### **Week 4: Persistent Storage and Final Project**

- [ ]  **Persistent Storage with Shared Preferences**
    - [ ]  Save simple key-value pairs using `shared_preferences`.
    - [ ]  Store user preferences or settings.
- [ ]  **Local Database with SQLite**
    - [ ]  Install and configure `sqflite`.
    - [ ]  Build a notes app to add, edit, and delete notes.
- [ ]  **Polishing Flutter Skills**
    - [ ]  Learn implicit animations like `AnimatedContainer`.
    - [ ]  Apply app-wide themes with `ThemeData`.
    - [ ]  Toggle between light and dark themes.
- [ ]  **Build a Final Project**
    - [ ]  Combine skills into a final app:
        - [ ]  Example: A task manager app.
        - [ ]  Add/edit/delete tasks with local storage.
        - [ ]  Implement state management using `provider`.

---