

part of 'row_bloc.dart';

abstract class RowState{}

class InitState extends RowState{}

class Loading extends RowState{}

class Loaded extends RowState{
  List<Widget> widgets;

  Loaded({required this.widgets});

}

class Error extends RowState{}