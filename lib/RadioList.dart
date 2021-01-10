import 'dart:async';
import 'package:flutter/material.dart';
import 'package:radio/RadioListBag.dart';
import 'package:assets_audio_player/assets_audio_player.dart';

class PlayerControl {
  var assetsAudioPlayer = AssetsAudioPlayer.newPlayer();
  // var assetsAudioPlayer = AssetsAudioPlayer();
  String url;

  void play(String source) {
    // AssetsAudioPlayer.newPlayer().open(
    //   Audio.network(source),
    //   autoStart: true,
    //   showNotification: true,
    // );

    assetsAudioPlayer.open(
      Audio.network(source),
      // autoStart: true,
      showNotification: true,
    );
    assetsAudioPlayer.play();
    print('here');

  }

  void stop ()
  {
    assetsAudioPlayer.stop();
  }

  PlayerControl();
}


class RadioList extends StatelessWidget {
    List<RadioListBag> data = [
      RadioListBag(name: 'Хіт FM', title: 'Хіт FM', description: 'Тільки хіти! Стилі: dance, pop, disco, pop-rock, rock, rnb. Сайт: https://www.hitfm.ua'),
      RadioListBag(name: 'Люкс ФМ', title: 'Люкс ФМ', description: 'Радіо виключно гарного настрою. Веселі ведучі, жарти, добірна сучасна музика. Ви любите жити, любите вечірки з друзями і не любите спати? Тоді настроюйся на хвилю радіо Люкс ФМ.')
    ];

    @override
    Widget build(BuildContext context) {

      var playerControl = PlayerControl();

      var selected = '';
      return Scaffold(
        appBar: AppBar(
          title: Text('Онлайн радіо')
        ),
        //body: Text('Body Body Body')
        body: Container(
          child: ListView(
              children: <Widget>[
              Card(child:
                ListTile(
                  title: Text('Хіт FM'),
                  // subtitle: Text('Тільки хіти! Стилі: dance, pop, disco, pop-rock, rock, rnb. Сайт: https://www.hitfm.ua'),
                  trailing: IconButton(
                    // icon: Icon(Icons.pause_circle_outline, size: 40)
                    icon: Icon(
                        (selected == '5') ? Icons.pause_circle_outline : Icons.play_circle_outline,
                        size: 40
                    ),
                    onPressed: () {
                      if (selected == '5') {
                        print('====== stop 5');
                        playerControl.stop();
                        selected = '0';
                      } else {
                        selected = '5';
                        playerControl.play("http://online.hitfm.ua/HitFM");
                        print('====== start 5');
                      }
                    }
                  )
                ),
              ),
              Card(child:
                ListTile(
                    title: Text('Люкс ФМ'),
                    // subtitle: Text('Радіо виключно гарного настрою. Веселі ведучі, жарти, добірна сучасна музика. Ви любите жити, любите вечірки з друзями і не любите спати? Тоді настроюйся на хвилю радіо Люкс ФМ.'),
                    trailing: IconButton(
                      icon: Icon(
                          (selected == '6') ? Icons.pause_circle_outline : Icons.play_circle_outline,
                          size: 40
                      ),
                      onPressed: () {
                        if (selected == '6') {
                          print('====== stop 6');
                          playerControl.stop();
                          selected = '0';
                        } else {
                          selected = '6';
                          playerControl.play("http://icecast.luxnet.ua/lux_mp3");
                          print('====== start 6');
                        }
                      }
                    )
                )
              ),
              Card(child:
                ListTile(
                    title: Text('Авторадіо'),
                    // subtitle: Text('Радіо виключно гарного настрою. Веселі ведучі, жарти, добірна сучасна музика. Ви любите жити, любите вечірки з друзями і не любите спати? Тоді настроюйся на хвилю радіо Люкс ФМ.'),
                    trailing: IconButton(
                        icon: Icon(
                            (selected == '7') ? Icons.pause_circle_outline : Icons.play_circle_outline,
                            size: 40
                        ),
                        onPressed: () {
                          if (selected == '7') {
                            print('====== stop 7');
                            playerControl.stop();
                            selected = '0';
                          } else {
                            selected = '7';
                            playerControl.play("http://cast.radiogroup.com.ua:8000/avtoradio");
                            print('====== start 7');
                          }
                        }
                    )
                )
              ),
                Card(child:
                ListTile(
                    title: Text('Радіо Максимум'),
                    // subtitle: Text('Радіо виключно гарного настрою. Веселі ведучі, жарти, добірна сучасна музика. Ви любите жити, любите вечірки з друзями і не любите спати? Тоді настроюйся на хвилю радіо Люкс ФМ.'),
                    trailing: IconButton(
                        icon: Icon(
                            (selected == '8') ? Icons.pause_circle_outline : Icons.play_circle_outline,
                            size: 40
                        ),
                        onPressed: () {
                          if (selected == '8') {
                            print('====== stop 8');
                            playerControl.stop();
                            selected = '0';
                          } else {
                            selected = '8';
                            playerControl.play("http://icecast.luxnet.ua/radio24_mp3");
                            print('====== start 8');
                          }
                        }
                    )
                )
                )

              ]
          )
        )
      );
    }
}


// play_arrow play_circle_outline pause_circle_outline
// IconButton(
//   icon: Icon(Icons.volume_up),
//   tooltip: 'Increase volume by 10',
//   onPressed: () {
//   setState(() {
//   _volume += 10;
//   });
//   },
// ),