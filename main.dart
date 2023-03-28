import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({
    super.key,
  });


  @override
  Widget build(BuildContext context) {
    return Scaffold(

      // widget untuk tampilan AppBar
      appBar: AppBar( 
          //  "Leading: Icon" untuk membuat bottom arrow back (tombol kembali)
        leading: Icon(Icons.search),
        title: Text("Flutter Layout Demo"),
        centerTitle: true,
        
      ),
      body: 
      Column(
        children: [
          // Menampilkan gambar  dari asset image/lake.jpg
          Image(image: AssetImage('image/lake.jpg',
          ),
          ),
          
          // Membuat container baru
          Container(
            padding: EdgeInsets.all(32),
            child:  Row(
              children: [
                Expanded(child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // container untuk menampilkan widget text
                  Container(
                    padding: EdgeInsets.only(bottom: 8),
                    child: Text(
                    'Oeschinen Lake Campground',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ),
                  Text(
                     'Kandersteg, Switzerland',
                     style: TextStyle(
                      color: Colors.grey[500],
                     ),
                  )
                ],
                )
                ),

                // Menampilkan widget icon bintang dan 
                Icon(
                  Icons.star,
                  color: Colors.amber[500],
                ),
                Text('55'),
              ],
            ),
          ),

          // membuat Botton call, route, dan share
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Icon(
                    Icons.call,
                    color: Colors.black,
                  ),
                  Text('Panggil'),
                ],
              ),
              // SizedBox(width: 20,),
              Column(
                children: [
                  Icon(
                    Icons.route,
                    color: Colors.black,
                  ),
                  Text('Rute'),
                ],
              ),
              Column(
                children: [
                  Icon(
                    Icons.share,
                    color: Colors.black,
                  ),
                  Text('Bagikan'),
                ],
              )
            ],
          ),

          // membuat widget text untuk isi konten aplikasi
          Container(
            padding:  EdgeInsets.all(32),
            child: Text(
              'Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
    'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
    'half-hour walk through pastures and pine forest, leads you to the '
    'lake, which warms to 20 degrees Celsius in the summer. Activities '
    'enjoyed here include rowing, and riding the summer toboggan run.',
    softWrap: true,
            ),
          ),
        ],
          
      ),

      // Menambahkan widget Bottom Navigation Bar untuk menu pada bagian bawah aplikasi
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label: "Home"),
        BottomNavigationBarItem(icon: Icon(Icons.person),label: "Contact"),
        BottomNavigationBarItem(icon: Icon(Icons.arrow_back),label: "Back"),
      ],),
    );
  }
  
}