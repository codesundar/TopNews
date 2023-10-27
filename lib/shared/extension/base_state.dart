import 'package:equatable/equatable.dart';

abstract class BaseState extends Equatable {
  const BaseState();

  BaseState copyWith();
}

extension BaseStateCopyWithExtension on BaseState {
  BaseState copyWith() {
    return this;
  }
}
