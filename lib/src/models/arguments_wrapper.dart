import 'package:flutter/animation.dart';
import 'package:sailor/src/models/base_arguments.dart';
import 'package:sailor/src/models/sailor_param.dart';
import 'package:sailor/src/transitions/sailor_transition.dart';

class ArgumentsWrapper {
  final BaseArguments baseArguments;
  final List<SailorTransition> transitions;
  final Duration transitionDuration;
  final Curve transitionCurve;
  final Map<String, dynamic> params;
  final Map<String, SailorParam> routeParams;

  ArgumentsWrapper({
    this.baseArguments,
    this.transitions,
    this.transitionDuration,
    this.transitionCurve,
    this.params,
    this.routeParams,
  });

  ArgumentsWrapper copyWith({
    BaseArguments baseArguments,
    List<SailorTransition> transitions,
    Duration transitionDuration,
    Curve transitionCurve,
    List<SailorParam> params,
    Map<String, SailorParam> routeParams,
  }) {
    return ArgumentsWrapper(
      baseArguments: baseArguments ?? this.baseArguments,
      transitions: transitions ?? this.transitions,
      transitionDuration: transitionDuration ?? this.transitionDuration,
      transitionCurve: transitionCurve ?? this.transitionCurve,
      params: params ?? this.params,
      routeParams: routeParams ?? this.routeParams,
    );
  }

  @override
  String toString() {
    return 'ArgumentsWrapper{baseArguments: $baseArguments, '
        'transitions: $transitions, '
        'transitionDuration: $transitionDuration, '
        'transitionCurve: $transitionCurve}, '
        'params: $params';
  }
}
