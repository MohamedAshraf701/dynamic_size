## Platform Support

| Android | iOS | | :-----: | :-: | | ✔️ | ✔️

## Installation

Add this line to pubspec.yaml

yaml
```dart

dependencies:
    dynamic_size: <latest_version>

```



## Usage


Import package

```dart
import 'package:dynamic_size/dynamic_size.dart';
```

Add Design Screen Size In Class Constructor

```dart
 dynamicsize size = dynamicsize( 849, 393);
```
Add height & Width
```dart
  dynamicsize size = dynamicsize( 849, 393);
  height = size.height(20);
  width = size.width(20);
  size.HeightSpace(20);
  size.WidthSpace(20);
```

A New Dynamic Container
```dart

  Dcontainer(
      height:20
      width:20
      );
  
```

For Navigation :-

```dart

  Pop(context);
  NewScreen(context,Screen());
  ReplaceScreen(context,Screen());
  
```

