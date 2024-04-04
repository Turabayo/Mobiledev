import 'package:flutter/material.dart';
import 'package:flutter_application_1/SearchItems.dart';
import 'package:flutter_application_1/Communitypage.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Here you can search your favorite flower"),   
        actions: [
          IconButton(
            onPressed: () {
              showSearch(context: context, delegate: StudentSearch());
            },
            icon: Icon(Icons.search),
          ),
        ],
      ),
      body: Center( 
        child: ElevatedButton( 
          onPressed: () {
            Navigator.push( 
              context,
              MaterialPageRoute(builder: (context) => CommunityPage()),
            );
          },
          child: Text('Share your flori thoughts'),        )
      ),
    
    );
  }
}

class StudentSearch extends SearchDelegate<Students> {
  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        onPressed: () {
          query = "";
        },
        icon: Icon(Icons.clear),
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: Icon(Icons.navigate_before),
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return Center(
      child: Text(query),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    final listItems = query.isEmpty
        ? studentDetails
        : studentDetails
            .where((element) => element.name
                .toLowerCase()
                .startsWith(query.toLowerCase().toString()))
            .toList();

    return listItems.isEmpty
        ? Center(child: Text("No Data Found!"))
        : GridView.builder(
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 5),
            itemCount: listItems.length,
            itemBuilder: (context, index) {
              return Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 5.0, vertical: 5.0),
                  child: Column(
                    children: [
                      ListTile(
                        leading: Image(image: AssetImage('images/amaryllis.png')
                            //Icons.person,
                            //size: 40,
                            ),
                        title: Text(listItems[index].name),
                        //subtitle: Text(
                        //  "Roll No : ${(listItems[index].id.toString())}"),
                        onTap: () {
                          showResults(context);
                        },
                      ),
                      Divider(),
                      ListTile(
                      leading: Image(image: AssetImage('images/begonia.png')
                           //Icons.person,
                            //size: 40,
                          ),
                        title: Text(listItems[index].name),
                        //subtitle: Text(
                        //  "Roll No : ${(listItems[index].id.toString())}"),
                        onTap: () {
                          showResults(context);
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Image(image: AssetImage('images/Camelia.jpg')
                            //Icons.person,
                            //size: 40,
                            ),
                        title: Text(listItems[index].name),
                        //subtitle: Text(
                        //  "Roll No : ${(listItems[index].id.toString())}"),
                        onTap: () {
                          showResults(context);
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Image(image: AssetImage('images/begonia.png')
                            //Icons.person,
                            //size: 40,
                            ),
                        title: Text(listItems[index].name),
                        //subtitle: Text(
                        //  "Roll No : ${(listItems[index].id.toString())}"),
                        onTap: () {
                          showResults(context);
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Image(image: AssetImage('images/begonia.png')
                            //Icons.person,
                            //size: 40,
                            ),
                        title: Text(listItems[index].name),
                        //subtitle: Text(
                        //  "Roll No : ${(listItems[index].id.toString())}"),
                        onTap: () {
                          showResults(context);
                        },
                      ),
                      Divider(),
                      ListTile(
                        leading: Image(image: AssetImage('images/begonia.png')
                            //Icons.person,
                            //size: 40,
                            ),
                        title: Text(listItems[index].name),
                        //subtitle: Text(
                        //  "Roll No : ${(listItems[index].id.toString())}"),
                        onTap: () {
                          showResults(context);
                        },
                      ),
                      Divider(),
                    ],
                  ));
            });
  }
}