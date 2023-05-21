import 'package:clean_arch/app/modules/home/presentation/home/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  final controller = Modular.get<HomeController>();

  @override
  void initState() {
    super.initState();
    controller.getData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Contatos"),
      ),
      body: ListView.builder(
        itemCount: controller.contacts.length,
        itemBuilder: (_, index){
          final model = controller.contacts[index];
          return ListTile(
            leading: CircleAvatar(
              child: Text(model.name?.substring(0) ?? ''),
            ),
            title: Text(model.name?.substring(0) ?? ''),
            subtitle: Text(model.email?.substring(0) ?? ''),
          );
        }
      )
    );
  }
}