import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Our Community'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset('flowers-image.jpg'), // replace with path to your image
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'Dahlia flowers can range from small, button-like blooms to large, dinner-plate-sized flowers.\n\nThe rarest flower in the world is often considered to be the "Ghost Orchid" (Dendrophylax lindenii). This orchid is native to Cuba and Florida in the United States.\n\nMost poisonous flowers in the world is the "Nerium oleander," commonly known as Oleander. Oleander is a beautiful flowering shrub with attractive, fragrant blooms.',
            style: TextStyle(fontSize: 16),
          ),
        ),
      ],
    );
  }
}