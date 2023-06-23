
# Dynamic Utils

[![Pub Version](https://img.shields.io/pub/v/dynamicutils.svg)](https://pub.dev/packages/dynamicutils)
![Flutter Platform](https://img.shields.io/badge/platform-flutter-yellow)

A Flutter package that provides dynamic sizing capabilities, allowing you to adapt your UI elements to different screen sizes.

## Features

- Dynamically adjust the height and width of UI elements based on the screen size.
- Easily create responsive UIs that work well on different devices and orientations.
- Convenient methods for adding spacing between elements.

## Installation

Add the following line to your `pubspec.yaml` file:

```yaml
dependencies:
  dynamicutils: <latest_version>
```

Then run `flutter pub get` to fetch the package.

## Usage

Import the package into your Dart file:

```dart
import 'package:dynamicutils/dynamicutils.dart';
```

Initialize the `DynamicSize` class with the design screen size:

```dart
DynamicSize size = DynamicSize(849, 393);
```

Adjust the height and width of your UI elements:

```dart
DynamicSize size = DynamicSize(849, 393);
height = size.height(20);
width = size.width(20);
size.HeightSpace(20);
size.WidthSpace(20);
```

Create a new dynamic container:

```dart
dContainer(
  height: 20,
  width: 20,
);
```

For navigation:

```dart
pop(context);
newScreen(context, screen());
replaceScreen(context, screen());
```

For more advanced usage and customization options, refer to the package's [API documentation](https://pub.dev/documentation/dynamicutils/latest/dynamicutils/DynamicSize-class.html).

## Examples

You can find more usage examples in the [example](example) folder of this repository.

## License

This project is licensed under the [MIT License](https://zaid.digital).

## Contributing

Contributions are welcome! If you have any suggestions, bug reports, or feature requests, please open an issue or submit a pull request.

## Get in touch

If you have any questions, feel free to reach out:

- Email: ashrafchauhan567@gmail.com
- GitHub: [@MohamedAshraf701](https://github.com/MohamedAshraf701)
