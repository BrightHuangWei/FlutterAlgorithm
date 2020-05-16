import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SelectionSort extends StatefulWidget {
  @override
  SelectionSortState createState() => new SelectionSortState();
}

class SelectionSortState extends State<SelectionSort> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('选择排序'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            MaterialButton(
              child: Text('开始排序'),
              textColor: Colors.white,
              color: Colors.blue,
              onPressed: () => _sort(),
            ),
          ],
        ),
      ),
    );
  }

  _sort() {
    List<int> data = [6, 5, 9, 4, 8, 1, 0];
    print('init data = $data');
    for (int i = 0; i < data.length; i++) {
      int miniIndex = i;
      for (int j = i + 1; j < data.length; j++) {
        if (data[j] < data[miniIndex]) miniIndex = j;
      }

      print('**********************************************************');
      print('****   before changed data = $data');
      print('****   data[$i] = ${data[i]}');
//      print('j = $j , data[i] = ${data[j]}');
      print('****   data[$miniIndex] = ${data[miniIndex]}');

      var temp = data[i];
      data[i] = data[miniIndex];
      data[miniIndex] = temp;

      print('****   after changed data = $data');
    }
    print('>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>');
    print('Finally data = $data');
  }
}
