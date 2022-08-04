import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_projects1/bloc/row_bloc.dart';

class VRow extends StatefulWidget {
  const VRow({Key? key}) : super(key: key);

  @override
  State<VRow> createState() => _VRowState();
}

class _VRowState extends State<VRow> {
  late RowBloc _bloc;

  @override
  Widget build(BuildContext context) {
    _bloc = BlocProvider.of<RowBloc>(context);
    return BlocBuilder<RowBloc, RowState>(
        builder: (BuildContext context, RowState state) {
      if (state is Loaded) {
        return Column(
          children: state.widgets,
        );
      }
      if (state is Loading) {
        return const Center(
          child: CircularProgressIndicator(),
        );
      }
      if (state is Error) {
        return const Center(child: Text('unexpected error came'));
      }

      return const SizedBox();
    });
  }
}
