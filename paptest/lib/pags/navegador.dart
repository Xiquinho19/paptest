import 'package:flutter/material.dart';
import 'package:paptest/biblioteca/bibb.dart';
import 'package:paptest/pags/cron.dart';
import 'package:paptest/pags/inicio.dart';
import 'package:paptest/pags/profile.dart';


class Home extends StatefulWidget{
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home>{

  int currenTab=0;
  final List<Widget> screens = [
    Inicio(),
    Bib(),
    CountdownPage(),
    Profile(),
  ];

  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = const Inicio();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(20),
        child: Material(
          elevation: 10,
          borderRadius: BorderRadius.circular(20),
          color: Colors.red,
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(25),
              color: currenTab == currenTab ? Colors.red: Colors.grey ,
            ),
            height:50,

            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(
                          minWidth: 80,
                          onPressed: (){
                            setState((){
                              currentScreen = Bib();
                              currenTab = 0;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/bib.png',
                                width: 30,
                                height: 30,
                                color: currenTab == 0 ? Colors.black : Colors.black,
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 80,
                          onPressed: (){
                            setState((){
                              currentScreen = Inicio();
                              currenTab = 1;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/corrida.png',
                                width: 30,
                                height: 30,
                                color: currenTab == 0 ? Colors.black : Colors.black,
                              ),
                            ],
                          ),
                        )
                      ]
                  ),
                  //Right Tab Bar Icons
                  Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        MaterialButton(

                          minWidth: 80,
                          onPressed: (){
                            setState((){
                              currentScreen = CountdownPage();
                              currenTab = 2;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/cronometro.png',
                                width: 30,
                                height: 30,
                                color: currenTab == 0 ? Colors.black: Colors.black,
                              ),
                            ],
                          ),
                        ),
                        MaterialButton(
                          minWidth: 80,
                          onPressed: (){
                            setState((){
                              currentScreen = Profile();
                              currenTab = 3;
                            });
                          },
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Image.asset(
                                'assets/images/users.png',
                                width: 30,
                                height: 30,
                                color: currenTab == 0 ? Colors.black : Colors.black,
                              ),
                            ],
                          ),
                        )
                      ]
                  )
                ]
            ),
          ),
        ),
      ),
    );
  }
}