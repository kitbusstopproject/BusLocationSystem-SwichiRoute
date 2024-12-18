import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '台車アプリ',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 232, 228, 240)),
        useMaterial3: true,
      ),
      home: const BusstopRoute(),
    );
  }
}

class BusstopRoute extends StatefulWidget {
  const BusstopRoute({super.key});

  @override
  Busstate createState() => Busstate();
}

class Busstate extends State<BusstopRoute> {
  String? isSelectedItem1 = '未選択';
  String? isSelectedItem2 = '未選択';

  @override
  Widget build(BuildContext context) {
    // 初期の枠線色設定
    Color borderColor1 = const Color.fromARGB(255, 0, 0, 0);
    Color borderColor2 = const Color.fromARGB(255, 0, 0, 0);

    // ルート選択に基づく条件分岐
    if (isSelectedItem1 == '中央ルート') {
      borderColor1 = const Color.fromARGB(255, 255, 82, 65);
    } else if (isSelectedItem1 == '南部ルート') {
      borderColor1 = const Color.fromARGB(255, 241, 157, 56);
    } else if (isSelectedItem1 == '西部ルート') {
      borderColor1 = const Color.fromARGB(255, 73, 148, 236);
    } else if (isSelectedItem1 == '北部ルート') {
      borderColor1 = const Color.fromARGB(255, 151, 193, 92);
    } else if (isSelectedItem1 == 'のんキールート') {
      borderColor1 = const Color.fromARGB(255, 142, 78, 189);
    } else if (isSelectedItem1 == '未選択') {
      borderColor1 = const Color.fromARGB(255, 67, 71, 78);
    }

    if (isSelectedItem2 == '中央ルート') {
      borderColor2 = const Color.fromARGB(255, 255, 82, 65);
    } else if (isSelectedItem2 == '南部ルート') {
      borderColor2 = const Color.fromARGB(255, 241, 157, 56);
    } else if (isSelectedItem2 == '西部ルート') {
      borderColor2 = const Color.fromARGB(255, 73, 148, 236);
    } else if (isSelectedItem2 == '北部ルート') {
      borderColor2 = const Color.fromARGB(255, 151, 193, 92);
    } else if (isSelectedItem2 == 'のんキールート') {
      borderColor2 = const Color.fromARGB(255, 142, 78, 189);
    } else if (isSelectedItem2 == '未選択') {
      borderColor2 = const Color.fromARGB(255, 67, 71, 78);
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
              const Text(
                '台車で走るルートを選択してください',
                style: TextStyle(
                  fontSize: 40,
                ),
              ),
              const SizedBox(height: 100),

              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '台車1の選択',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                  SizedBox(width: 216),
                  Text(
                    '台車2の選択',
                    style: TextStyle(
                      fontSize: 30,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 10),

              // ルート選択の表示
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // 1台目の枠線
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor1, // 1台目の色
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(1),
                    width: 300,
                    child: DropdownButton<String>(
                      isExpanded: true,
                      underline: Container(),
                      items: const [
                        DropdownMenuItem<String>(
                          value: '中央ルート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 225, 82, 65),
                                size: 35),
                            Text(
                              '中央ルート',
                              style: TextStyle(fontSize: 24),
                            )
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: '南部ルート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 242, 157, 56),
                                size: 35),
                            Text(
                              '南部ルート',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: '西部ルート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 73, 148, 236),
                                size: 35),
                            Text(
                              '西部ルート',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: '北部ルート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 151, 193, 92),
                                size: 35),
                            Text(
                              '北部ルート',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: 'のんキールート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 142, 78, 189),
                                size: 35),
                            Text(
                              'のんキールート',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: '未選択',
                          child: Row(children: <Widget>[
                            Icon(Icons.close,
                                color: Color.fromARGB(255, 67, 71, 78),
                                size: 35),
                            Text(
                              '未選択',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          isSelectedItem1 = value;
                        });
                      },
                      value: isSelectedItem1,
                    ),
                  ),
                  const SizedBox(width: 90),

                  // 2台目の枠線
                  Container(
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: borderColor2, // 2台目の色
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.all(1),
                    width: 300,
                    child: DropdownButton<String>(
                      isExpanded: true,
                      underline: Container(),
                      items: const [
                        DropdownMenuItem<String>(
                          value: '中央ルート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 225, 82, 65),
                                size: 35),
                            Text(
                              '中央ルート',
                              style: TextStyle(fontSize: 24),
                            )
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: '南部ルート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 242, 157, 56),
                                size: 35),
                            Text(
                              '南部ルート',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: '西部ルート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 73, 148, 236),
                                size: 35),
                            Text(
                              '西部ルート',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: '北部ルート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 151, 193, 92),
                                size: 35),
                            Text(
                              '北部ルート',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: 'のんキールート',
                          child: Row(children: <Widget>[
                            Icon(Icons.add,
                                color: Color.fromARGB(255, 142, 78, 189),
                                size: 35),
                            Text(
                              'のんキールート',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                        DropdownMenuItem<String>(
                          value: '未選択',
                          child: Row(children: <Widget>[
                            Icon(Icons.close,
                                color: Color.fromARGB(255, 67, 71, 78),
                                size: 35),
                            Text(
                              '未選択',
                              style: TextStyle(fontSize: 24),
                            ),
                          ]),
                        ),
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          isSelectedItem2 = value;
                        });
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
