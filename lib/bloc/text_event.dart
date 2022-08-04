

part of 'text_bloc.dart';

abstract class VTextEvent{}


class SendText extends VTextEvent{
  String text;
  SendText({required this.text});
}
