import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: Container(),
          title: Text('Tarefas'),
        ),
        body: ListView(
          children: [
            Task('Aprender Flutter comendo sucrilhos de café da manhã', 4,
                'https://play-lh.googleusercontent.com/5e7z5YCt7fplN4qndpYzpJjYmuzM2WSrfs35KxnEw-Ku1sClHRWHoIDSw3a3YS5WpGcI'),
            Task('Jogar CS', 1,
                'https://http2.mlstatic.com/D_NQ_NP_728043-MLB27920401299_082018-O.jpg'),
            Task('Academia', 5,
                'https://static.vecteezy.com/ti/vetor-gratis/t2/3179642-halter-equipamento-ginasio-icone-isolado-gratis-vetor.jpg'),
            Task('Ler', 2,
                'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTWkhWrRd8F5kRK2QTBCFWxR3yRqcr_WBSuVFNftwFNHL-Q4JE2EvOqMe4SdSe7Y2XgGWQ&usqp=CAU'),
            Task('Trabalhar', 3,
                'https://www.officetotal.com.br/wp-content/uploads/2022/02/desktop-para-escritorio.jpg'),
          ],
        ),
        floatingActionButton: FloatingActionButton(
            child: Text(
              '+',
              style: TextStyle(color: Colors.white, fontSize: 40),
            ),
            onPressed: () {
              // ADD NOVA TASK
            }),
      ),
    );
  }
}

// StatelessWidget ( Widget estático, sem mudança imediata (mais leve) )
// StatefulWidget ( Widget não estático, com mudança imediata (mais pesado) )
class Task extends StatefulWidget {
  final String nome;
  final String imagem;
  final int dificuldade;

  const Task(this.nome, this.dificuldade, this.imagem, {Key? key})
      : super(key: key);

  @override
  State<Task> createState() => _TaskState();
}

class _TaskState extends State<Task> {
  int nivel = 0;

  @override
  Widget build(BuildContext context) {
    // Padding = Preenchimento ( Deixa espaços como contorno )
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Stack(
          children: [
            Container(
              height: 140,
              decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(
                    Radius.circular(15.0),
                  )),
            ),
            Column(
              children: [
                Container(
                    color: Colors.white,
                    height: 100,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          color: Colors.black26,
                          width: 80,
                          height: 100,
                          // Pra colocar imagem da net
                          child: Image.network(
                            widget.imagem,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: 200,
                                child: Text(
                                  widget.nome,
                                  style: TextStyle(fontSize: 24),
                                  overflow: TextOverflow.ellipsis,
                                )),
                            Row(
                              children: [
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 1)
                                        ? Colors.blue
                                        : Colors.blue[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 2)
                                        ? Colors.blue
                                        : Colors.blue[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 3)
                                        ? Colors.blue
                                        : Colors.blue[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 4)
                                        ? Colors.blue
                                        : Colors.blue[100]),
                                Icon(Icons.star,
                                    size: 15,
                                    color: (widget.dificuldade >= 5)
                                        ? Colors.blue
                                        : Colors.blue[100]),
                              ],
                            )
                          ],
                        ),
                        Container(
                          height: 52,
                          width: 52,
                          child: ElevatedButton(
                              onPressed: () {
                                // SetState - Para ocorrer a atualização simultânea
                                setState(() {
                                  nivel++;
                                });
                              },
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceEvenly,
                                children: [
                                  Icon(Icons.arrow_drop_up),
                                  Text(
                                    'UP',
                                    style: TextStyle(fontSize: 15),
                                  )
                                ],
                              )),
                        )
                      ],
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child: LinearProgressIndicator(
                          color: Colors.white,
                          value: (widget.dificuldade > 0)
                              ? (nivel / widget.dificuldade) / 10
                              : 1,
                        ),
                        width: 200,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        'Nível: $nivel',
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
