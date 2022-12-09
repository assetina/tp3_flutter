import 'package:flutter/material.dart';
import 'package:im_animations/im_animations.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Ma carte',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        centerTitle: true,
        title:  const Text("My ipnet Card",
         style: TextStyle(
          color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'courgette',

         ),
         ),
      ),
      body:Center(
        child:Column(
          mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(
            height: 35.0,
          ),
          ColorSonar(
          // wavesDisabled: true,
          // waveMotion: WaveMotion.synced,
          contentAreaRadius: 48.0,
          waveFall: 15.0,
          // waveMotionEffect: Curves.elasticIn,
          waveMotion: WaveMotion.synced,
          // duration: Duration(seconds: 5),
          child: const CircleAvatar(
            backgroundImage: AssetImage("Capture.png"),
            radius:85.0
          ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          const Text('LEMBO Bright Assana Assetina',
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            fontFamily: 'courgette',
          ),
          ),
          const SizedBox(
            width: 200.0,
            height: 40.0,
            child: Divider(
              color: Colors.pink,
              height: 10.0,
              thickness: 3,

            ),
          ),
          const Text("DEVELOPPEUSE FULL STACK",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'courgette',
          ),
          ),
          const SizedBox(
            height: 40.0,
          ),
          Padding(padding: const EdgeInsets.all(8),
          child: Card(
            margin: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 30.0),
            
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.phone,
                color: Colors.white,
                size: 40.0,
                
                ),
                Text("+228 91 94 26 55",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'courgette',
                ),
                ),
              ],
            ),
          ),
          ),
          Padding(padding: const EdgeInsets.all(8),
          child:Card(
            margin: const EdgeInsets.symmetric(vertical: 15.0,horizontal: 30.0),
            
            color: Colors.blueGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: const [
                Icon(Icons.mail,
                color: Colors.white,
                size: 40.0,
                
                ),
                Text("brightlembo@gmail.com",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'courgette',
                ),
                ),
              ],
            ),
          ),
          ),
        ],
      ),
      ),
    );
  }
}