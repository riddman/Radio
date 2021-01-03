import 'package:flutter/material.dart';
import 'package:radio/RadioListBag.dart';

class RadioList extends StatelessWidget {
    List<RadioListBag> data = [
      RadioListBag(name: 'Хіт FM', title: 'Хіт FM', description: 'Тільки хіти! Стилі: dance, pop, disco, pop-rock, rock, rnb. Сайт: https://www.hitfm.ua'),
      RadioListBag(name: 'Люкс ФМ', title: 'Люкс ФМ', description: 'Радіо виключно гарного настрою. Веселі ведучі, жарти, добірна сучасна музика. Ви любите жити, любите вечірки з друзями і не любите спати? Тоді настроюйся на хвилю радіо Люкс ФМ.')
    ];

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('App bar title')
        ),
        //body: Text('Body Body Body')
        body: Container(
          child: ListView(
              children: <Widget>[
                ListTile(title: Text('Хіт FM'), subtitle: Text('Тільки хіти! Стилі: dance, pop, disco, pop-rock, rock, rnb. Сайт: https://www.hitfm.ua')),
                ListTile(title: Text('Люкс ФМ'), subtitle: Text('Радіо виключно гарного настрою. Веселі ведучі, жарти, добірна сучасна музика. Ви любите жити, любите вечірки з друзями і не любите спати? Тоді настроюйся на хвилю радіо Люкс ФМ.'))
              ]
          )
        )
      );
    }
}