import 'package:flutter/material.dart';
import 'package:nv1_15/controllers/home_controller.dart';
import 'package:nv1_15/models/post_model.dart';
import 'package:nv1_15/repositories/home_repository_mock.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeReositoryMock());

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ValueListenableBuilder<List<PostModel>>(
              valueListenable: _controller.post,
              builder: (_, list, __) {
                return ListView.builder(
                    itemCount: list.length,
                    itemBuilder: (_, index) {
                      return Text(list[index].title);
                    });
              })),
    );
  }
}
