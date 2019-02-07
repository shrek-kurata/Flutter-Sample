import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';
import 'package:penmark/presentation/bloc_sample/counter_bloc.dart';
import 'package:penmark/presentation/bloc_sample/counter_page.dart';


void counter() {
  BlocSupervisor().delegate = SimpleBlocDelegate();
  runApp(App());
}

class SimpleBlocDelegate extends BlocDelegate {
  @override
  void onTransition(Transition transition) {
    print(transition);
  }
}

class App extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _AppState();
}

class _AppState extends State<App> {
  final CounterBloc _counterBloc = CounterBloc();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: BlocProvider<CounterBloc>(
        bloc: _counterBloc,
        child: CounterPage(),
      ),
    );
  }

  @override
  void dispose() {
    _counterBloc.dispose();
    super.dispose();
  }
}
