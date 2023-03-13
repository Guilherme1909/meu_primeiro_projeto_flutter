import 'package:flutter/material.dart';
import 'package:meu_primeiro_projeto/components/task.dart';
import 'package:meu_primeiro_projeto/screens/form_screen.dart';

class InicialScreen extends StatefulWidget {
  const InicialScreen({Key? key}) : super(key: key);

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: ListView(
        children: const [
          Task(
            'Aprender Flutter comendo sucrilhos de café da manhã',
            4,
            'assets/images/dash.png',
          ),
          Task(
            'Jogar CS',
            1,
            'assets/images/csgo.jpg',
          ),
          Task(
            'Academia',
            5,
            'assets/images/academia.webp',
          ),
          Task(
            'Ler',
            2,
            'assets/images/livro.jpg',
          ),
          Task(
            'Meditar',
            3,
            'assets/images/meditar.jpeg',
          ),
          SizedBox(
            height: 80,
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => FormScreen(),
            ),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
