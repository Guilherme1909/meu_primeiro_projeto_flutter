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
              'https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI',
            ),
            Task(
              'Jogar CS',
              1,
              'https://http2.mlstatic.com/D_NQ_NP_728043-MLB27920401299_082018-O.jpg',
            ),
            Task(
              'Academia',
              5,
              'https://static.vecteezy.com/ti/vetor-gratis/t2/3179642-halter-equipamento-ginasio-icone-isolado-gratis-vetor.jpg',
            ),
            Task(
              'Ler',
              2,
              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWkhWrRd8F5kRK2QTBCFWxR3yRqcr_WBSuVFNftwFNHL-Q4JE2EvOqMe4SdSe7Y2XgGWQ&usqp=CAU',
            ),
            Task(
              'Trabalhar',
              3,
              'https://www.officetotal.com.br/wp-content/uploads/2022/02/desktop-para-escritorio.jpg',
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