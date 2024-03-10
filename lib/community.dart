import 'package:flutter/material.dart';
class CommunityPage extends StatefulWidget {
  @override
  _CommunityPageState createState() => _CommunityPageState();
}

class _CommunityPageState extends State<CommunityPage> {
  TextEditingController _commentController = TextEditingController();
  List<String> _comments = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Our Community"),
      ),
      body: Stack(
        children: [
          // Background image
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/ISOMO_BACKGROUND.jpg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: _comments.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_comments[index]),
                    );
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextField(
                  controller: _commentController,
                  decoration: InputDecoration(
                    hintText: "Enter your comment...",
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: () {
                  setState(() {
                    _comments.add(_commentController.text);
                    _commentController.clear();
                  });
                },
                child: Text("POST"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
