### **1. Text**

- **Description**: Displays a string of text on the screen. It’s lightweight but customizable.
- **Important Properties**:
    - `style`: Customize text appearance with `TextStyle`.
    - `textAlign`: Aligns text (`TextAlign.left`, `TextAlign.center`, etc.).
    - `overflow`: Handles text that exceeds its bounds (`TextOverflow.ellipsis`, `TextOverflow.fade`).

**Example**:

```dart
Text(
  'Flutter Text Widget',
  style: TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: Colors.blue,
    letterSpacing: 2.0,
    wordSpacing: 5.0,
  ),
  textAlign: TextAlign.center,
  overflow: TextOverflow.ellipsis,
  maxLines: 2, // Limits the text to 2 lines
);

```

---

### **2. Container**

- **Description**: A powerful box widget that can hold a single child and apply styling, padding, margins, or transformations.
- **Important Properties**:
    - `margin` and `padding`: Create space inside and around the container.
    - `alignment`: Aligns the child within the container.
    - `decoration`: Adds background color, border, shadow, or gradient.

**Example**:

```dart
Container(
  height: 100,
  width: 100,
  padding: EdgeInsets.all(10),
  margin: EdgeInsets.all(20),
  decoration: BoxDecoration(
    color: Colors.yellow,
    borderRadius: BorderRadius.circular(15),
    boxShadow: [
      BoxShadow(
        color: Colors.grey,
        blurRadius: 5,
        offset: Offset(2, 2), // Shadow position
      ),
    ],
  ),
  child: Text('Hello, Container!'),
);

```

---

### **3. Row and Column**

- **Description**: These are layout widgets used to arrange children in horizontal or vertical directions, respectively.
- **Key Properties**:
    - `mainAxisAlignment`: Space along the main axis.
        - Values: `MainAxisAlignment.start`, `MainAxisAlignment.spaceEvenly`, etc.
    - `crossAxisAlignment`: Space along the perpendicular axis.
        - Values: `CrossAxisAlignment.start`, `CrossAxisAlignment.stretch`.
    - `children`: A list of widgets inside the Row/Column.

**Example**:

```dart
Column(
  mainAxisAlignment: MainAxisAlignment.center,
  crossAxisAlignment: CrossAxisAlignment.start,
  children: [
    Text('Column Item 1'),
    Text('Column Item 2'),
    Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Icon(Icons.star),
        Text('Inside Row'),
        Icon(Icons.star_border),
      ],
    ),
  ],
);

```

---

### **4. Image**

- **Description**: Displays an image. Flutter supports images from assets, network, or memory.
- **Key Methods**:
    - `Image.asset`: Loads images from your project’s `assets` folder.
    - `Image.network`: Fetches images from a URL.
    - `Image.memory`: Uses raw image bytes.

**Example**:

```dart
Image.network(
  'https://flutter.dev/assets/images/shared/brand/flutter/logo/flutter-lockup.png',
  height: 100,
  width: 100,
  fit: BoxFit.contain, // Controls how the image fits within the container
  loadingBuilder: (context, child, progress) {
    if (progress == null) return child;
    return CircularProgressIndicator(value: progress.expectedTotalBytes != null
        ? progress.cumulativeBytesLoaded / progress.expectedTotalBytes!
        : null);
  },
);

```

---

### **5. ListView**

- **Description**: Displays a scrollable list of widgets.
- **Types**:
    - `ListView`: For a static list of items.
    - `ListView.builder`: Optimized for a large dataset.
    - `ListView.separated`: Adds separators between items.

**Example: Static ListView**:

```dart
ListView(
  children: [
    ListTile(
      leading: Icon(Icons.map),
      title: Text('Map'),
      subtitle: Text('Navigate locations'),
    ),
    ListTile(
      leading: Icon(Icons.phone),
      title: Text('Phone'),
      subtitle: Text('Call someone'),
    ),
    ListTile(
      leading: Icon(Icons.settings),
      title: Text('Settings'),
    ),
  ],
);

```

**Example: Dynamic ListView**:

```dart
ListView.builder(
  itemCount: 10,
  itemBuilder: (context, index) {
    return ListTile(
      title: Text('Item $index'),
    );
  },
);

```

---