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
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
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
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('台車アプリ'),
      ),
      
      body: Container(
        child: Padding(
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

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DropdownButton<String>(
                      items: const [
                        
                        DropdownMenuItem<String>(
                          child: Text('未選択'),
                          value: '未選択',
                          
                          
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋中央ルート'),
                          value: '＋中央ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋南部ルート'),
                          value: '＋南部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋西部ルート'),
                          value: '＋西部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋北部ルート'),
                          value: '＋北部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋のんキールート'),
                          value: '＋のんキールート',
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
                    SizedBox(width: 50),
                    DropdownButton<String>(
                      items: const [
                        DropdownMenuItem<String>(
                          child: Text('未選択'),
                          value: '未選択',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋中央ルート'),
                          value: '＋中央ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋南部ルート'),
                          value: '＋南部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋西部ルート'),
                          value: '＋西部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋北部ルート'),
                          value: '＋北部ルート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('＋のんキールート'),
                          value: '＋のんキールート',
                        ),
                        DropdownMenuItem<String>(
                          child: Text('× 未選択'),
                          value: '× 未選択',
                        ),
                      ],
                      onChanged: (String? value) {
                        setState(() {
                          isSelectedItem2 = value;
                        });
                      },
                      value: isSelectedItem2,
                    ),
                  ],
                ),

                SizedBox(height: 32),

                // Text('$isSelectedItem が選択されました。'),
                // Text('$isSelectedItem2 が選択されました。'),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
