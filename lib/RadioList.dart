import 'dart:async';
import 'package:flutter/material.dart';
import 'package:radio/RadioListBag.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class RadioList extends StatelessWidget {
    List<RadioListBag> data = [
      RadioListBag(name: 'Хіт FM', title: 'Хіт FM', description: 'Тільки хіти! Стилі: dance, pop, disco, pop-rock, rock, rnb. Сайт: https://www.hitfm.ua'),
      RadioListBag(name: 'Люкс ФМ', title: 'Люкс ФМ', description: 'Радіо виключно гарного настрою. Веселі ведучі, жарти, добірна сучасна музика. Ви любите жити, любите вечірки з друзями і не любите спати? Тоді настроюйся на хвилю радіо Люкс ФМ.')
    ];

    @override
    Widget build(BuildContext context) {
      final assetsAudioPlayer = AssetsAudioPlayer();

      AssetsAudioPlayer.newPlayer().open(
        Audio.network("http://online.hitfm.ua/HitFM"),
        autoStart: true,
        showNotification: true,
      );

      /*
      try {
        await assetsAudioPlayer.open(
          Audio.network("http://www.mysite.com/myMp3file.mp3"),
        );
      } catch (t) {
        //mp3 unreachable
      }
*/
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