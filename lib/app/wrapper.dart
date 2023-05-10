import 'package:flutter/material.dart';

import 'app.dart';

class Wrapper extends StatefulWidget {
  const Wrapper({super.key});

  @override
  State<Wrapper> createState() => _WrapperState();
}

class _WrapperState extends State<Wrapper> {
  @override
  Widget build(BuildContext context) {
    return const App();

    // MultiBlocProvider(
    //   providers: [
    //     BlocProvider<AuthBloc>(
    //         create: (BuildContext context) => sl<AuthBloc>()),
    //   ],
    //   child: const App(),
    // );
  }
}
