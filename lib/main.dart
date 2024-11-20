

import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '台車アプリ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 232, 228, 240)),
        useMaterial3: true,
      ),
      home: BusstopRoute(),
    );
  }
}

class BusstopRoute extends StatefulWidget {
  @override
  Busstate createState() => Busstate();
}

class Busstate extends State<BusstopRoute> {
  String? isSelectedItem = '未選択';
  String? isSelectedItem2 = '未選択';

  @override
  Widget build(BuildContext context) {
    // 初期の枠線色設定
    Color borderColor1 = Colors.black;
    Color borderColor2 = Colors.black;

    // ルート選択に基づく条件分岐
    if (isSelectedItem == '＋ 中央ルート') {
      borderColor1 = Colors.red;
    } else if (isSelectedItem == '＋ 南部ルート') {
      borderColor1 = Colors.yellow;
    } else if (isSelectedItem == '＋ 西部ルート') {
      borderColor1 = Colors.blue;
    } else if (isSelectedItem == '＋ 北部ルート') {
      borderColor1 = Colors.green;
    } else if (isSelectedItem == '＋ のんキールート') {
      borderColor1 = Colors.purple;
    } else if (isSelectedItem == '× 未選択') {
      borderColor1 = Colors.grey;
    }

    if (isSelectedItem2 == '＋ 中央ルート') {
      borderColor2 = Colors.red;
    } else if (isSelectedItem2 == '＋ 南部ルート') {
      borderColor2 = Colors.yellow;
    } else if (isSelectedItem2 == '＋ 西部ルート') {
      borderColor2 = Colors.blue;
    } else if (isSelectedItem2 == '＋ 北部ルート') {
      borderColor2 = Colors.green;
    } else if (isSelectedItem2 == '＋ のんキールート') {
      borderColor2 = Colors.purple;
    } else if (isSelectedItem2 == '× 未選択') {
      borderColor2 = Colors.grey;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('台車アプリ'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(80.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                '台車で走るルートを選択してください',
                style: TextStyle(
                  fontSize: 30,
                ),
              ),
              SizedBox(height: 40),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '台車1の選択',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                  SizedBox(width: 85),
                  Text(
                    '台車2の選択',
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 40),

              // ルート選択の表示
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 1台目の枠線
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor1, // 1台目の色
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(1),
                    child: DropdownButton<String>(
                      items: const [
                        DropdownMenuItem<String>(
                          child: Text('未選択'),
                          value: '未選択',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ 中央ルート'),
                          value: '＋ 中央ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ 南部ルート'),
                          value: '＋ 南部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ 西部ルート'),
                          value: '＋ 西部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ 北部ルート'),
                          value: '＋ 北部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ のんキールート'),
                          value: '＋ のんキールート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('× 未選択'),
                          value: '× 未選択',
                        ),
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          isSelectedItem = value;
                        });
                      },
                      value: isSelectedItem,
                    ),
                  ),
                  SizedBox(width: 50),

                  // 2台目の枠線
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor2, // 2台目の色
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: EdgeInsets.all(1),
                    child: DropdownButton<String>(
                      items: const [
                        DropdownMenuItem<String>(
                          child: Text('未選択'),
                          value: '未選択',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ 中央ルート'),
                          value: '＋ 中央ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ 南部ルート'),
                          value: '＋ 南部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ 西部ルート'),
                          value: '＋ 西部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ 北部ルート'),
                          value: '＋ 北部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋ のんキールート'),
                          value: '＋ のんキールート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('× 未選択'),
                          value: '× 未選択',
                        ),
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          isSelectedItem2 = value;
                        }
                        );
                      },
                      value: isSelectedItem2,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
