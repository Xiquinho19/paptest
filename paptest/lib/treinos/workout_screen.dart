import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:paptest/codsupl/round_info_container.dart';
import 'package:paptest/treinos/detailsteste.dart';
import 'package:paptest/treinos/workout_data.dart';
import 'package:paptest/pags/treinoprefeito.dart';

class Workout_Screen extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 370.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/tb.jpg'),
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(25.0),
                      bottomRight: Radius.circular(25.0),
                    ),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 1, sigmaY: 2),
                    child: Container(
                      color: Colors.white.withOpacity(.123),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  left: 10,
                  right: 10,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(Icons.chevron_left),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(Icons.favorite),
                        iconSize: 30,
                        color: Colors.white,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Positioned(
                  bottom: 20.0,
                  left: 10,
                  right: 10,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                          padding: EdgeInsets.symmetric(vertical: 30.0, horizontal: 20.0),
                        child: Text(
                          'FULL - BODY KILLER\nWORKOUT',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28.0,
                          ),
                          textAlign: TextAlign.start,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          RoundInfoContainer(
                            title: '26',
                            subtitle: 'Minutes',
                          ),
                          _divider(),
                          RoundInfoContainer(
                            title: '3',
                            subtitle: 'Rounds',
                          ),
                          _divider(),
                          RoundInfoContainer(
                            title: 'Iniciante',
                            subtitle: 'Level',
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 20.0, horizontal: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Round 1', style: TextStyle(fontSize: 17.0),),
                  Text('Full Body',style: TextStyle(fontSize: 17.0),),
                ],
              ),
            ),
            Expanded(child:
            ListView.builder(
              physics: BouncingScrollPhysics(),
              itemCount: round1.length,
              itemBuilder: (BuildContext context, int index){
                DataExerc dataexerc = round1[index];
                return Card(
                  child: ListTile(
                      isThreeLine: true,
                      leading: Container(
                        width: 90.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(dataexerc.leading),
                            fit: BoxFit.cover,
                          ),
                          borderRadius: BorderRadius.circular(10.0),
                        ),
                      ),
                      title: Text(dataexerc.title),
                      subtitle: Text(dataexerc.subtitle),
                      trailing: Icon(Icons.arrow_forward_ios_rounded),
                    onTap:(){
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder:(context) => DetalhesScreen(dataexerc))
                        );
                    },
                    ),
                );
              },
            ),
            ),
          ],
        ),
      ),
    );
  }
  Widget _divider(){
    return Container(
      width: 1.2,
      height: 35,
      color: Colors.white.withOpacity(.6),
    );
  }
}