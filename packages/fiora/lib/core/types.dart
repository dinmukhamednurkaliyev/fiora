import 'package:flutter/widgets.dart';

typedef FioraItemBuilder<T> = Widget Function(BuildContext context, T item);

typedef FioraWidgetBuilder = Widget Function();

typedef FioraOnSelected<T> = void Function(T item);
