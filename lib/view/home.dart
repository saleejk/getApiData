import 'package:api_task/controller/data_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Products',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 2, 7, 77),
      ),
      body: Consumer<DataController>(builder: (context, pro, child) {
        return ListView.builder(
            itemCount: pro.products!.productList.length,
            itemBuilder: (ctx, index) {
              final data = pro.products!.productList[index];
              return ListTile(
                title: Text(data.title),
                subtitle: Text("${data.price}"),
              );
            });
      }),
    );
  }
}
