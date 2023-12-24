import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
   double screenWidth = 0.0; // Déclarer la variable en dehors de la méthode build


  @override
  Widget build(BuildContext context) {
     screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
               Image (
                image: AssetImage('assets/images/sharigun.png'),
                width: 50,
                height: 50,
                fit: BoxFit.cover,),

                Text('KonohaSchool',
                style: TextStyle(color: Colors.white, fontSize: 26, fontWeight: FontWeight.bold, fontFamily: 'CAMPUS'),),
                 
               IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  showSearch(context: context, delegate: MySearchDelegate());
                },
               )

           ],
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView(
          child: Container(
        width: double.infinity,
        child: Column(
          children: [
              Container(
                margin: EdgeInsets.only(top:20.0, left: 10.0, right: 10.0),
                height: 60,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth*0.3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.orange,),
                    ),
                    Container(
                      width: screenWidth*0.3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.green,),
                    ),
                    Container(
                      width: screenWidth*0.3,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.black,),
                    ),
                  ],
               )
              ),
              Container(
                margin: EdgeInsets.only(top:16.0, left:10.0, right: 10.0,),
                height: 300,
                child : Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      width: screenWidth*0.45,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.grey),
                    ),
                    Container(
                      width: screenWidth*0.45,
                      height: 300,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 140,
                            decoration: BoxDecoration(color: Colors.yellow, borderRadius: BorderRadius.circular(10),),
                          ),
                          Container(
                            height: 140,
                            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.blue),
                          )
                          ],)
                    )
                  ], 
                )
              ),
              Container(
                margin: EdgeInsets.only(top:20.0),
                width: screenWidth*1,
                height: 230,
                color : Colors.black,
                child: Row(
                  children:[
                    Container(
                      margin: EdgeInsets.only(top:10, bottom: 10, right: 30, left:10),
                      width: screenWidth*0.44,
                      height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                    ),
                    Container(
                      width: screenWidth*0.44,
                      height: 200,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color: Colors.white),
                    )
                  ]
                )
              ),
              Container(
                margin: EdgeInsets.only(top: 10.0),
                width: screenWidth*1,
                height: 200,
                decoration: BoxDecoration(color: Colors.blue),
                child: Row(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top:10, left: 10, right : 10, bottom: 10),
                      width: screenWidth*0.25,
                      height: 170,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth*0.15,
                            height: 80,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),

                          Container(
                            width: screenWidth*0.15,
                            height: 80,
                            decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          )
                        ]),
                    ),
                    Container(
                      width: screenWidth*0.3,
                      height: 190,
                      margin: EdgeInsets.only(top:10, bottom: 10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                              width: screenWidth*0.3,
                              height: 50,
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                              width: screenWidth*0.3,
                              height: 50,
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          ),
                          Container(
                              width: screenWidth*0.3,
                              height: 50,
                              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(10)),
                          )
                        ]),
                    ),
                    Container(
                      margin: EdgeInsets.only(left:20),
                      width: screenWidth*0.32,
                      height: 180,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(10), color : Colors.white),
                    )
                  ],)
              ),
              Container(
                width: screenWidth*1,
                decoration: BoxDecoration(color: Colors.black),
                child : Center(
                  child: Text('© 2021 Hancruz | Developed by Ecole241business',
                   style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold, fontSize: 16),) ,)
              )
          ] ),
      )
      ) 
     
    );
  }
}


class MySearchDelegate extends SearchDelegate<String> {
  @override
  List<Widget> buildActions(BuildContext context) {
    // Actions pour la barre de recherche (effacer, annuler, etc.)
    return [
      IconButton(
        icon: Icon(Icons.clear),
        onPressed: () {
          query = '';
        },
      ),
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    // Icône de gauche dans la barre de recherche (retour arrière, annulation, etc.)
    return IconButton(
      icon: Icon(Icons.arrow_back),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    // Résultats de la recherche en fonction de la query
    return Center(
      child: Text('Résultats pour : $query'),
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    // Suggestions de recherche basées sur la query
    final List<String> suggestions = ['Apple', 'Banana', 'Orange', 'Grapes'];

    final List<String> filteredSuggestions = suggestions
        .where((suggestion) => suggestion.toLowerCase().contains(query.toLowerCase()))
        .toList();

    return ListView.builder(
      itemCount: filteredSuggestions.length,
      itemBuilder: (context, index) {
        return ListTile(
          title: Text(filteredSuggestions[index]),
          onTap: () {
            // Action à effectuer lorsqu'un élément est sélectionné
            close(context, filteredSuggestions[index]);
          },
        );
      },
    );
  }
}
