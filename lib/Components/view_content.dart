import 'package:LifeARgan/model/content_model.dart';
import 'package:LifeARgan/service/contents.dart';
import 'package:flutter/material.dart';
import 'package:model_viewer_plus/model_viewer_plus.dart';
class Content extends StatefulWidget {
  String ?name;
  Content({Key?key,required this.name}):super(key: key);

  @override
  State<Content> createState() => _ContentState();
}

class _ContentState extends State<Content> {
  List<Content_model> contents = [];

  Content_model? selectedContent;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    contents=getContents();

    for (var content in contents) {
      if (widget.name == content.name) {
        selectedContent = content;
        break;
      }
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black87,
      appBar: AppBar(
        iconTheme: const IconThemeData(color: Colors.black87),
        backgroundColor: Colors.lightGreenAccent,
        title:  Center(
          child: Text(widget?.name??"Human Body",style: const TextStyle(
            color: Colors.black87
          ),),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                child:  ModelViewer(
                  src:selectedContent?.url??"assets/human.glb",
                  ar: true,
                  alt: 'A 3D model of Lateral Pterygoid Muscle',
                  autoPlay: true,
                  autoRotate: true,
                  cameraControls: true,
                ),
              ),
               HeadingContainer(name: selectedContent?.name??"Human"),
               CategoriesContainer(description: selectedContent?.content??"It is a body part",)
            ],
          ),
        ),
      ),
    );
  }
}

class HeadingContainer extends StatelessWidget {
 final String? name;
 const HeadingContainer({Key?key, required this.name}):super(key: key);
  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),

      // clipper: CircularClipper(),
      child: Container(
        width: double.infinity,
        height: 90, // Adjust the height according to your requirement
        color: Colors.white, // Change the color as desired
        child: Stack(
          children: [
            Center(
                child: Text(
                  name!,
                  style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
                )),
            Positioned(
              left: 0,
              bottom: 0,
              child: Container(
                width: 8, // Adjust the semicircle width as needed
                height: 5, // Adjust the semicircle height as needed
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50.0),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
                // Adjust the semicircle height as needed
                // child: CustomPaint(
                //   painter: HalfCirclePainter(),
                // ),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2,
              bottom: 0,
              child: Container(
                width: 8, // Adjust the semicircle width as needed
                height: 5, // Adjust the semicircle height as needed
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50.0),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Container(
                width: 8, // Adjust the semicircle width as needed
                height: 5, // Adjust the semicircle height as needed
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(50.0),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(0, 0, 40, 0),
                // child: CustomPaint(
                //   painter: HalfCirclePainter(),
                // ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoriesContainer extends StatelessWidget {
  final String?description;

  const CategoriesContainer({Key?key,required this.description}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFFFbf68e7), Colors.lightBlueAccent],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              left: 0,
              top: 0,
              child: Container(
                width: 8,
                height: 5,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50.0),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(40, 0, 0, 0),
              ),
            ),
            Positioned(
              left: MediaQuery.of(context).size.width / 2,
              top: 0,
              child: Container(
                width: 8,
                height: 5,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50.0),
                  ),
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 0,
              child: Container(
                width: 8,
                height: 5,
                decoration: const BoxDecoration(
                  color: Colors.black,
                  shape: BoxShape.rectangle,
                  borderRadius: BorderRadius.vertical(
                    bottom: Radius.circular(50.0),
                  ),
                ),
                margin: const EdgeInsets.fromLTRB(0, 0, 40, 0),
              ),
            ),
            const SizedBox(
              // height: 10,
            ),
            Positioned(

                child: SizedBox(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 30,horizontal: 10),
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(11),
                    ),
                    child: Container(
                         margin: EdgeInsets.symmetric(horizontal: 15,vertical: 18),

                        child: Text(description!,style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w400
                        ),)),
                  ),

            ))
            // Positioned(
            //   top: 66,
            //   right: 15,
            //   left: 10,
            //   child: SizedBox(
            //     height: 150,
            //     child: ListView.builder(
            //       shrinkWrap: true,
            //       scrollDirection: Axis.horizontal,
            //       itemCount: categories.length,
            //       itemBuilder: (BuildContext context, int index) {
            //         return Categories(
            //           image: categories[index].image,
            //           categoryName: categories[index].categoryName,
            //         );
            //       },
            //     ),
            //   ),
            // ),
          ],
        ),
      ),
    );
  }
}


