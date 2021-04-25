import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:test_widgets/drink_detail.dart';

class Carad extends StatefulWidget {
  @override
  _CaradState createState() => _CaradState();
}

class _CaradState extends State<Carad> {
  var api =
      'https://www.thecocktaildb.com/api/json/v1//1/filter.php?c=Cocktail';
  var res, drinks;
  @override
  void initState() {
    super.initState();
    fetchData();
  }

  fetchData() async {
    res = await http.get(api);
    drinks = jsonDecode(res.body)['drinks'];
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: res != null
          ? ListView.builder(
              itemCount: drinks.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Hero(
                    tag: drinks[index]['idDrink'],
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(
                        drinks[index]['strDrinkThumb'] ??
                            'https://st4.depositphotos.com/17828278/24401/v/600/depositphotos_244011872'
                                '-stock-illustration-image-vector-symbol-missing-available.jpg',
                      ),
                    ),
                  ),
                  title: Text(
                    '${drinks[index]['strDrink']}',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 22.0,
                    ),
                  ),
                  subtitle: Text(
                    '${drinks[index]['idDrink']}',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return Detail(drinks: drinks[index]);
                    }));
                  },
                );
              })
          : CircularProgressIndicator(
              backgroundColor: Colors.white,
            ),
    );
  }
}
