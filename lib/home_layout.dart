import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:pdf_viewer/screens/material_details.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Color.fromARGB(255, 97, 166, 168),
      // appBar: AppBar(
      //   backgroundColor: Colors.transparent,
      //   elevation: 0,
      //   actions:const [ Padding(
      //     padding:  EdgeInsets.all(8.0),
      //     child: CircleAvatar(
      //       // backgroundColor: Color.fromARGB(0, 52, 47, 47),

      //       backgroundImage: AssetImage('assets/images/cloud.png'),
      //       radius: 40.0,
      //     ),
      //   ),],
      //   title: const Text("home",style: TextStyle(
      //     color: Colors.amber
      //   ),),
      //  leading : null
      // ),

      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: CircleAvatar(
                // backgroundColor: Color.fromARGB(0, 52, 47, 47),

                backgroundImage: AssetImage('assets/images/cloud.png'),
                radius: 40.0,
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "Materials",
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w500,
                    fontSize: 24),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text(
                "discaver  your material with us ",
                style: TextStyle(
                    color: Colors.blueGrey,
                    fontWeight: FontWeight.w400,
                    fontSize: 16),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // Container(child: ,),
            Expanded(
              child: GridView.builder(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Number of columns in the grid
                  crossAxisSpacing: 8.0, // Spacing between columns
                  mainAxisSpacing: 8.0, // Spacing between rows
                ),
                itemCount: 6, // Number of items in the grid
                itemBuilder: (BuildContext context, int index) {
                  return GridItem(index: index);
                },
              ),

              //ListView.builder(
              //     itemCount: 5,
              //     itemBuilder: (BuildContext context, index) {
              //       return Padding(
              //         padding: EdgeInsets.all(10),
              //         child: Container(
              //           height: 100,
              //           width: 200,
              //           child: const Card(
              //             child: Center(
              //               child:Row(
              //                 children: [
              //                 Icon(Icons.book),
              //                 ],
              //               )
              //             ),
              //           ),
              //         ),
              //       );
              //     }),
            ),
          ],
        ),
      ),
    );
  }
}

class GridItem extends StatelessWidget {
  final int index;

  GridItem({required this.index});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: InkWell(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (
                context,
              ) =>
                      MatrialDetialsScreen(
                        Gridindex: index,
                      )));
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(22),
            color: const Color.fromARGB(255, 94, 167, 227),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                Materiales[index]['image']!,
                width: 100,
                height: 100,
              ),
              Text(
                ' ${Materiales[index]['name']}',
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

List<Map<String, String>> Materiales = [
  {
    'image': 'assets/images/ml.png',
    'name': "machine learing",
  },
  {
    'image': 'assets/images/dm.png',
    'name': "Data Minning",
  },
  {
    'image': 'assets/images/cloud.png',
    'name': "Cloud",
  },
  {
    'image': 'assets/images/dm.png',
    'name': "Data Minning",
  },
  {
    'image': 'assets/images/dm.png',
    'name': "Data Minning",
  },
  {
    'image': 'assets/images/dm.png',
    'name': "Data Minning",
  },
];
// ListTile(
//                               leading: Container(
//                                   width: 200.0,
//                                   height: 200.0,
//                                   decoration: const BoxDecoration(
//                                       shape: BoxShape.circle,
//                                       image: DecorationImage(
//                                           fit: BoxFit.fill,
//                                           image: NetworkImage(
//                                               "https://i.imgur.com/BoN9kdC.png")))),
//                               title: Text("xxxxxx"),
//                             ),
