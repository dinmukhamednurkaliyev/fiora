import 'package:freezed_annotation/freezed_annotation.dart';

import 'pallete.dart';
import 'typography.dart';

part 'configuration.freezed.dart';

@freezed
abstract class FioraConfiguration with _$FioraConfiguration {
  const factory FioraConfiguration({
    required FioraPalette palette,
    @Default(FioraTypography.standard) FioraTypography typography,
  }) = _FioraConfiguration;

  const FioraConfiguration._();
}
