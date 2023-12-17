import 'package:flutter/material.dart';
import 'package:pdf_viewer/screens/matarial.dart';

class MatrialDetialsScreen extends StatelessWidget {
  const MatrialDetialsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("xxx"),
      ),
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
                itemCount: 4,
                itemBuilder: (BuildContext context, index) {
                  return Padding(
                    padding: EdgeInsets.all(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (BuildContext context) {
                          return MatrialScreen(pdf: ImageDetialesMateriales[index]['Pdf_navigate']!,);
                        }));
                      },
                      child: Container(
                        height: 100,
                        width: 200,
                        decoration: BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage(
                                    ImageDetialesMateriales[index]['image']!),
                                fit: BoxFit.cover),
                            color: Color.fromARGB(255, 56, 179, 161),
                            borderRadius: BorderRadius.circular(16)),
                        child: Row(
                          // mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            // const Expanded(child: Icon(Icons.book)),
                            Expanded(
                                child: Padding(
                              padding: EdgeInsets.only(left: 45),
                              child: Text(
                                ImageDetialesMateriales[index]['name']!,
                                style: const TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w700,
                                    fontSize: 18),
                              ),
                            ))
                          ],
                        ),
                      ),
                    ),
                  );
                }),
          ),
        ],
      ),
    );
  }
}

List<Map<String, String>> ImageDetialesMateriales = [
  {
    'image': 'assets/images/book.jpg',
    'name': "Subject Book",
    'Pdf_navigate': 'assets/ch1.pdf',
  },
  {
    'image': 'assets/images/quiz.jpg',
    'name': "Quizes",
  },
  {
    'image': 'assets/images/online.jpg',
    'name': "Online Materials",
  },
  {
    'image': 'assets/images/p1.jpg',
    'name': "Flow Chart",
  },
];
