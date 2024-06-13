part of 'settings_cubit.dart';

@immutable
abstract class SettingsState {}

class SettingsInitial extends SettingsState {}
class LoadingSettingsState extends SettingsState {}
class SuccessState extends SettingsState {}
class FailState extends SettingsState {}


