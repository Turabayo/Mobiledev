import 'package:flutter/material.dart';

import 'our.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  
  
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(   
      home: Scaffold(
        appBar: AppBar(
          title: const Text('our community'),
        
        ),
      ),
     );
  }

  our community; newMethod() => const ourcommunity;
}

class our community extends StatelessWidget {
  const CommentPage({super.key}) {
   // TODO: implement CommentPage
   throw UnimplementedError();
   }

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20.0),
          Text(
            '12:00',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'OUR COMMUNITY',
            style: TextStyle(
              fontSize: 24.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Share your thoughts with us',
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10.0),
          TextField(
            maxLines: 4,
            decoration: InputDecoration(
              hintText: 'Your Message',
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: 10.0),
          
          SizedBox(height: 20.0),

          Text(
            'Dahlia flowers can range from small, button-like blooms to large, dinner-plate-sized flowers.',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'The rarest flower in the world is often considered to be the "Ghost Orchid" (Dendrophylax lindenii). This orchid is native to Cuba and Florida in the United States.',
            style: TextStyle(fontSize: 16.0),
          ),
          SizedBox(height: 10.0),
          Text(
            'Most poisonous flower in the world is the "Nerium oleander," commonly known as Oleander. Oleander is a beautiful flowering shrub with attractive, fragrant blooms.',
            style: TextStyle(fontSize: 16.0),
          ),
        ],
      ),
    );
  }
}