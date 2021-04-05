import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

import 'core/injection/injection.dart';
import 'features/launchpads/presentation/bloc/launchpads/launchpads_bloc.dart';
import 'features/launchpads/presentation/pages/home_page.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await configureInjection(Environment.prod);
  Bloc.observer = SimpleBlocObserver();
  runApp(LeanIXTaskApp());
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onTransition(Bloc bloc, Transition transition) {
    print(transition);
    super.onTransition(bloc, transition);
  }
}

class LeanIXTaskApp extends StatelessWidget {
  const LeanIXTaskApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BlocProvider<LaunchpadsBloc>(
        create: (_) => getIt(),
        child: HomePage(),
      ),
    );
  }
}
