import 'package:flutter/material.dart';
import 'package:nv1_15/models/post_model.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
  PostModel detail = ModalRoute.of(context)!.settings.arguments as PostModel;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text(detail.title),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
               SizedBox(
                 width: 10,
                 child: Text(detail.id.toString()),),
              const SizedBox(
                width: 8,
              ),
               SizedBox(
                 width: MediaQuery.of(context).size.width * 0.6,
                 child: Text(detail.body))
            ],
          ),
        ),
      ),
    );
  }
}
