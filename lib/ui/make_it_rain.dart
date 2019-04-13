import 'package:flutter/material.dart';

class MakeItRain extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MakeItRainState();
  }
}

class MakeItRainState extends State<MakeItRain> {
  int _moneyCounter = 0;

  Widget _changeText(int money) {
    Color _textColor = Colors.greenAccent;
    double _textSize = 46.9;

    if (money >= 1000) {
      _textColor = Colors.blue;
      _textSize = 60.0;
    }

    return Text(
      '\$$money',
      style: TextStyle(
          color: _textColor,
          fontSize: _textSize,
          fontWeight: FontWeight.w800
      ),
    );
  }

  void _rainMoney() {
    setState(() {
      // set State is called each time we need to update the UI
      _moneyCounter += 100;

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Make It Rain'),
        backgroundColor: Colors.lightGreen,
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Center(
              child: Text(
                  'Get Rich',
                  style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w400,
                      fontSize: 29.9
                  ),
                )
            ),
            Expanded(
              child: Center(
                child:Text(
                  '\$$_moneyCounter',
                  style: TextStyle(
                      color: _moneyCounter > 1000 ? Colors.blue : Colors.greenAccent,
                      fontSize:_moneyCounter > 1000 ? 45.0 : 50.0,
                      fontWeight: FontWeight.w800
                  ),
                )
              )
            ),
            Expanded(
              child: Center(
                child: FlatButton(
                    shape: Border.all(
                        color: Colors.lime,
                        width: 2.0,
                        style: BorderStyle.solid,
                    ),
                    color: Colors.lightGreen,
                    textColor: Colors.white70,
                    onPressed: _rainMoney,
                    child: Text(
                      'Let It Rain',
                      style: TextStyle(
                        fontSize: 19.9,
                      ),
                    )
                )
              )
            ),
          ],
        )
      ),
    );
  }
}