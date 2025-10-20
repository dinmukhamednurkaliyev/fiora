import 'package:flutter/widgets.dart';

/// A function that builds a widget from a [BuildContext] and a data item of type [T].
typedef FioraItemBuilder<T> = Widget Function(BuildContext context, T item);

/// A function that returns a widget, typically used for simple builders without parameters.
typedef FioraWidgetBuilder = Widget Function();

/// A function that is called when an item of type [T] is selected.
typedef FioraOnSelected<T> = void Function(T item);
