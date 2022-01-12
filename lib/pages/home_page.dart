import 'package:flutter/material.dart';
import 'package:nv1_15/controllers/home_controller.dart';
import 'package:nv1_15/models/post_model.dart';
import 'package:nv1_15/repositories/home_repository_imp.dart';
import 'package:nv1_15/services/prefes_service.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController _controller = HomeController(HomeRepositoryImp());

  @override
  void initState() {
    super.initState();
    _controller.fetch();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Home"),
        actions: [
          IconButton(
              onPressed: () {
                PrefsService.logout();
                Navigator.of(context)
                    .pushNamedAndRemoveUntil('/splash', (route) => true);
              },
              icon: const Icon(Icons.logout))
        ],
      ),
      body: SafeArea(
          child: ValueListenableBuilder<List<PostModel>>(
              valueListenable: _controller.post,
              builder: (_, list, __) {
                return ListView.separated(
                  itemCount: list.length,
                  itemBuilder: (_, index) {
                    return ListTile(
                      leading: Text(list[index].id.toString()),
                      title: Text(list[index].title),
                      trailing: const Icon(Icons.arrow_right),
                      onTap: () => Navigator.of(context)
                          .pushNamed('/detail', arguments: list[index]),
                    );
                  },
                  separatorBuilder: (context, index) => const Divider(),
                );
              })),
    );
  }
}
