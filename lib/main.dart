import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _adad = 0;
  void _hesab() {
    setState(() {
      _adad++;
    });
  }
  void _e3adh() {
    setState(() {
      _adad = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'عداد الاستغفار',
      home: Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: const AssetImage('assests/img1.jpg'),
                    fit: BoxFit.fill,
                  )
              ),
              child: Center(
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                        height: 370,
                        width: 500,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white10,
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '$_adad',
                              style: TextStyle(
                                color: Colors.white,
                                fontSize: 35,
                              ),
                            ),
                          ],
                        )
                    ),
                    SizedBox(height: 40,),
                    InkWell(
                      onTap: _hesab,
                      child: Text("أستغفر الله ",style: TextStyle(color: Colors.green,fontSize: 42,fontWeight: FontWeight.bold,wordSpacing: 1.5),),
                    ),
                    InkWell(
                      onTap: _e3adh,
                      child:  Container(
                        child: Icon(
                          Icons.replay_circle_filled,
                          color: Colors.white,
                          size: 50,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}