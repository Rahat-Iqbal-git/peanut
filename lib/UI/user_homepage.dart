import 'package:flutter/material.dart';

class UserHomePage extends StatefulWidget {
  const UserHomePage({ Key? key }) : super(key: key);

  @override
  _UserHomePageState createState() => _UserHomePageState();
}

class _UserHomePageState extends State<UserHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple[300],
        title:const Text(
          "The Dictionary",
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(45),
          child: Center(
            child: Row(
              children: [
                Expanded(
                    child: Container(
                  margin:
                      const EdgeInsets.only(left: 15, right: 15, bottom: 15),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.white,
                  ),
                  child: TextFormField(
                    onChanged: null,
                    // (String text) {
                    //   if (_timer?.isActive ?? false) _timer?.cancel();
                    //   _timer = Timer(const Duration(milliseconds: 1000), () {
                    //     searchtext();
                    //   });
                    // },
                    // controller: _textEditingController,

                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      contentPadding: EdgeInsets.only(left: 10),
                      hintText: " Search your word here",
                    ), //TO DO
                  ),
                )),
                IconButton(
                    onPressed: () {
                      // searchtext();
                    },
                    icon: const Icon(
                      Icons.search,
                      color: Colors.white,
                    ))
              ],
            ),
          ),
        ),
      ),
      body: 
      // Container(
      //   alignment: const Alignment(0.0, -1.0),
      //   margin: const EdgeInsets.all(5),
      //   child: StreamBuilder(
      //     builder: (BuildContext context,
      //     AsyncSnapshot snapshot){
      //       if(snapshot.data == null){
      //         return const Center(
      //           child: Text("Search something"),
      //         ); 
      //       };
      //       if(snapshot.data == "waiting"){
      //         return const Center(
      //           child: CircularProgressIndicator(),
      //         );
      //       };
      //       return ListView.builder(
      //         itemCount: snapshot.data["definitions"]?.length,
      //         itemBuilder: (BuildContext context, int index){
      //           return ListBody(
      //             children: [
      //               Container(
      //                 color: Colors.grey,
      //                 child: ListTile(
      //                   leading: snapshot.data["definitions"]["image_url"]== null ? null:
      //                   CircleAvatar(
      //                     backgroundImage: NetworkImage(snapshot.data["definitions"][index]["image_url"]),
      //                   ),
      //                   title: Text(_textEditingController.text.trim() + "(" + snapshot.data["definitions"][index]["type"]+ ")",),

      //                 ),),
      //                 Padding(padding: 
      //                 const EdgeInsets.all(8),
      //                 child: 
      //                 Text(snapshot.data["definitions"][index]["definitions"]))
      //             ],
      //           );
      //         },
      //       );
           
      //     },
      //      stream : _stream,
      //      )
        Container(
          height: 200,
          width: 350,
          margin: const EdgeInsets.all(7),
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.purple[100],
            borderRadius: BorderRadius.circular(5),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                "happy",
                style: TextStyle(
                  color: Colors.black87,
                  // fontFamily:
                  // fontWeight: FontWeight.bold,
                  fontSize: 20,
                  // fontFamily: 'RobotoMono',
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "-adjective",
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 8,
              ),
              Text(
                "1.  feeling or showing pleasure or contentment.",
                style: TextStyle(
                  color: Colors.black87,
                  // fontFamily:
                  // fontWeight: FontWeight.bold,
                  // fontSize: 20,
                  // fontFamily: 'RobotoMono',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Example - Melissa came in looking happy and excited",
                style: TextStyle(
                  color: Colors.black87,
                  // fontFamily:
                  // fontWeight: FontWeight.bold,
                  fontSize: 11,
                  fontStyle: FontStyle.italic,
                  // fontFamily: 'RobotoMono',
                ),
              ),
              SizedBox(
                height: 11,
              ),
              Text(
                "2.  fortunate and convenient.",
                style: TextStyle(
                  color: Colors.black87,
                  // fontFamily:
                  // fontWeight: FontWeight.bold,
                  // fontSize: 20,
                  // fontFamily: 'RobotoMono',
                ),
              ),
              SizedBox(
                height: 5,
              ),
              Text(
                "Example - he had the happy knack of making people like him",
                style: TextStyle(
                  color: Colors.black87,
                  // fontFamily:
                  // fontWeight: FontWeight.bold,
                  fontSize: 11,
                  fontStyle: FontStyle.italic,
                  // fontFamily: 'RobotoMono',
                ),
              ),
            ],
          ),
        ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.purple[300],
        selectedItemColor: Colors.white,
        // unselectedItemColor: Colors.white,
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_filled),
            title: Text("Home"),
            // backgroundColor: Colors.black,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            title: Text("Favourite words"),
            // backgroundColor: Colors.black,
          )
        ],
      )
    );
  }
}