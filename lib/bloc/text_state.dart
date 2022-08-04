

part of'text_bloc.dart';

abstract class VTextState{}

class InitState extends VTextState{}

class ShowText extends VTextState{
  String text;
  ShowText({required this.text});
}

class Error extends VTextState{}