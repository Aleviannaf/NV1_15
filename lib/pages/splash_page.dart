import 'package:flutter/material.dart';
import 'package:nv1_15/services/prefes_service.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    // Future.delayed(const Duration(seconds: 3))
    //     .then((_) => Navigator.of(context).pushReplacementNamed('/login'));
    Future.wait([
      PrefsService.isAuth(),
      Future.delayed(const Duration(seconds: 3))
    ]).then((value) => value[0]
        ? Navigator.of(context).pushReplacementNamed('/home')
        : Navigator.of(context).pushReplacementNamed('/login'));
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.purple.shade100,
      child: const Center(
        child: CircularProgressIndicator(
          color: Colors.white54,
        ),
      ),
    );
  }
}
