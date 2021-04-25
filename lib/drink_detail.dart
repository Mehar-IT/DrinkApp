import 'package:flutter/material.dart';
import 'package:test_widgets/main.dart';

class Detail extends StatelessWidget {
  final drinks;
  const Detail({Key key, @required this.drinks}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          myColor,
          Colors.yellow,
        ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        appBar: AppBar(
          elevation: 0.0,
          backgroundColor: Colors.transparent,
          iconTheme: IconThemeData(color: Colors.white),
          title: Text(
            drinks['strDrink'],
            style: TextStyle(color: Colors.white),
          ),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Hero(
                tag: drinks['idDrink'],
                child: CircleAvatar(
                  radius: 100.0,
                  backgroundImage: NetworkImage(drinks['strDrinkThumb']),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Text(
                'ID: ${drinks['idDrink']}',
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text(
                '${drinks['strDrink']}',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 22.0,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
