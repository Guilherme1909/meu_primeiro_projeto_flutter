import 'package:flutter/material.dart';
import 'package:meu_primeiro_projeto/components/task.dart';

class InicialScreen extends StatefulWidget {

  const InicialScreen({Key? key}) : super(key: key);

  @override
  State<InicialScreen> createState() => _InicialScreenState();
}

class _InicialScreenState extends State<InicialScreen> {
  bool opacidade = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Container(),
        title: const Text('Tarefas'),
      ),
      body: AnimatedOpacity(
        opacity: opacidade ? 1 : 0,
        duration: const Duration(milliseconds: 500),
        child: ListView(
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
            SizedBox(height: 80,),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              opacidade = !opacidade;
            });
          },
          child: const Text(
            '-',
            style: TextStyle(color: Colors.white, fontSize: 40),
          )),
    );
  }
}