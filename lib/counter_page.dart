import 'package:flutter/material.dart';
import 'package:flutter_app_3/counter_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterPage extends StatelessWidget {
  const CounterPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
      ),
      body: BlocBuilder<CounterCubit, int>(
        builder: (context, count) => Center(
          child: Text('$count'),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.read<CounterCubit>().increment();
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
