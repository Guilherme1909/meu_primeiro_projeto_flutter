import 'package:flutter/material.dart';

class MyFirstWidget extends StatelessWidget {
  const MyFirstWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(alignment: AlignmentDirectional.center, children: [
            Container(
              color: Colors.blue,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.red,
              width: 60,
              height: 60,
            ),
          ]),
          Stack(alignment: Alignment.center, children: [
            Container(
              color: Colors.red,
              width: 100,
              height: 100,
            ),
            Container(
              color: Colors.blue,
              width: 60,
              height: 60,
            ),
          ]),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            Container(color: Colors.red, width: 50, height: 50),
            Container(color: Colors.yellow, width: 50, height: 50),
            Container(color: Colors.green, width: 50, height: 50),
          ]),
          Container(
            color: Colors.purple,
            width: 500,
            height: 50,
            child: Text(
              'Bloqueio!',
              style: TextStyle(
                  color: Colors.black, fontSize: 40, inherit: false),
              textAlign: TextAlign.center,
            ),
          ),
          ElevatedButton(
            onPressed: () {
              print('Você apertou o Botão!');
            },
            child: Text('BUTTON'),
          ),
        ],
      ),
    );
  }
}
