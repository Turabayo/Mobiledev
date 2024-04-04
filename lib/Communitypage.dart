import "package:flutter/material.dart";

class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  TextEditingController _commentController = TextEditingController();
  List<String> _comments = [
    "Dahlia flowers can range from small, button-like blooms to large, dinner-plate-sized flowers.",
    "The rarest flower in the world is often considered to be the 'Ghost Orchid (Dendrophylax lindenii)'. This orchid is native to Cuba and Florida in the United States.",
    "Most poisonous flowers in the world is the 'Nerium oleander', commonly known as Oleander. Oleander is a beautiful flowering shrub with attractive, fragrant blooms.",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Community"),
      ),
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/ISOMO_BACKGROUND.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: _comments.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(_comments[index]),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: TextField(
                controller: _commentController, // Add controller to TextField
                decoration: InputDecoration(
                  hintText: 'Add a comment...',
                  suffixIcon: IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      if (_commentController.text.isNotEmpty) {
                        setState(() {
                          _comments.add(_commentController.text);
                          _commentController.clear();
                        });
                      }
                    },
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}