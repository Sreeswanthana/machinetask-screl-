import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter/material.dart';

part 'form_models.freezed.dart';

@freezed
class FormStepsModel with _$FormStepsModel {
  const factory FormStepsModel({
    required String title,
    required String label,
    @Default('pending') String status,
    required Widget formWidget,
  }) = _FormStepsModel;

  factory FormStepsModel.fromJson(Map<String, dynamic> json) => _$FormStepsModelFromJson(json);
}
