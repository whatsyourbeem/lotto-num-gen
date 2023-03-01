import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List numArray = [ 'L', 'O', 'T', 'T', 'O', '!',];

  generate() {
    List tempNumArray = []; // 임시로 쓸 공간을 하나 만들고(tempNumArray)
    while (tempNumArray.length < 6) {
      // 공간의 값이 6개보다 적게 모였을 때
      int num = Random().nextInt(45) + 1; // 1~46 중에 하나를 랜덤으로 뽑아서
      if (!tempNumArray.contains(num)) {
        // tempNumArray에 있는 값과 중복되는 숫자가 없을시에
        tempNumArray.add(num.toString()); // 랜덤으로 뽑은 값을 lottoNumbers에 넣어 줍니다.
      }
    }
    setState(() {
      numArray = tempNumArray; // tempNumArray에 값이 6개 모였으니 화면에 표시할 공간인 numArray에 넣어줍니다.
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Lotto Number Generator'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(numArray[0]),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(numArray[1]),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(numArray[2]),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(numArray[3]),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(numArray[4]),
                ),
                Container(
                  padding: const EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    border: Border.all(width: 1),
                    shape: BoxShape.circle,
                  ),
                  child: Text(numArray[5]),
                ),
              ],
            ),
            ElevatedButton(
              onPressed: generate,
              child: const Text('GENERATE'),
            )
          ],
        ),
      ),
    );
  }
}
