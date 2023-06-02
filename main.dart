import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const SetLocation(),
    );
  }
}
class SetLocation extends StatefulWidget {
  const SetLocation({Key? key}) : super(key: key);

  @override
  State<SetLocation> createState() => _SetLocationState();
}

class _SetLocationState extends State<SetLocation> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(400),
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 8),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  const Text('Set Location'),
                  const SizedBox(height: 108,),
                  SizedBox(width: 250,height: 250,child: Image.asset('asset/image/pic.png'))
                ],
              ),
            ),
          )),
      body: SizedBox(width: double.infinity,height:300 ,
        child: Column(
          children: [
            const Text('FIND RESTAURANTS AND FOODS NEAR YOU',style: TextStyle(fontSize: 19,fontWeight: FontWeight.bold),),
            const SizedBox(height: 25),
            const Text('By allowing Location access, You can search for restaurants',
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),),
            const Text('and foods near you and receive more accurate delivery',
              style: TextStyle(fontSize: 12,fontWeight: FontWeight.bold,color: Colors.grey),),
            const SizedBox(height: 35),
            SizedBox(height: 60,width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: const BorderSide(color: Colors.orange,width: 2))),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.orange),
                    ),
                    onPressed: () {

                    }, child:Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.my_location_outlined),
                        Text(' Use Current Location',
                  style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold,
                        color: Colors.white,),
                ),
                      ],
                    )
                ),
              ),
            ),
            SizedBox(height: 60,width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5.0),
                              side: const BorderSide(color: Colors.orange,width: 2))),
                      backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                    ),
                    onPressed: () {

                    }, child:Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: const [
                        Icon(Icons.map_sharp,color: Colors.orange,),
                        Text(' Set From Map',
                  style: TextStyle(
                        fontSize: 18,fontWeight: FontWeight.bold,
                        color: Colors.orange,),
                ),
                      ],
                    )
                ),
              ),
            ),
          ],

        ),
      ),
    );
  }
}
