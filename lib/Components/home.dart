
import 'package:LifeARgan/Components/view_all.dart';
import 'package:LifeARgan/Components/view_content.dart';
import 'package:LifeARgan/service/systems.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:LifeARgan/model/home_category_model.dart';
import 'package:LifeARgan/service/anatomical.dart';
import 'package:LifeARgan/service/organs.dart';
 import 'package:model_viewer_plus/model_viewer_plus.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<CategoryModel> organs = [];
  List<CategoryModel> anatomical  = [];
  List<CategoryModel> systems = [];

  @override
  void initState() {
    super.initState();
    // TODO: implement initState
    organs = getCategory_organs();
    anatomical= getCategory_anatomical();
    systems=getCategory_systems();
  }
  Widget buildModelViewer() {
    try {
      return const ModelViewer(
        src: 'assets/human.glb',
        ar: true,
        alt: 'A 3D model of Anatomy',
        autoPlay: true,
        autoRotate: true,
        cameraControls: true,
        // Other parameters...
      );
    } catch (e) {
      debugPrint('Error loading 3D model: $e');
      return const Text('Failed to load the 3D model'); // Placeholder or error message
    }
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       backgroundColor: Colors.black87,
       // appBar: AppBar(
         // backgroundColor: Colors.lightGreenAccent,
       // ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SemicircleBottomContainerheading(),
              const SizedBox(
                height: 5,
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.4,
                width: MediaQuery.of(context).size.width+10,
                child: buildModelViewer(),
              ),


              const HeadingContainer(name: "Organs"),
              CategoriesContainer(
                categories: organs,
                name:"Organs" ,
              ),
              const SizedBox(
                height: 5,
              ),
              const HeadingContainer(
                name: "Anatomical Divisions",
              ),
              CategoriesContainer(
                categories: anatomical,
                name: "Anatomical Divisions",
              ),
              const SizedBox(
                height: 5,
              ),
              const HeadingContainer(
                name: "Systems",
              ),
              CategoriesContainer(
                categories: systems,
                name: "Systems",
              ),

              const SizedBox(
                height: 10,
              ),
              const Center(
                  child: Text(
                "©The codes are done by Tanmoy Chowdhury",
                style: TextStyle(
                  color: Colors.white,
                  height: 5,
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}

class SemicircleBottomContainerheading extends StatelessWidget {
  const SemicircleBottomContainerheading({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CircularClipper(),
      child: Container(
        width: double.infinity,
        height: 80, // Adjust the height according to your requirement
        color: Colors.lightGreenAccent, // Change the color as desired
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "LifeARgan",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 18,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Center(
              child: Text(
                "Know about your body parts",
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 8,
                    fontWeight: FontWeight.w400),
              ),
            ),
          ],
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
  final List<CategoryModel> categories;
  final String?name;

  const CategoriesContainer({Key?key ,required this.categories,this.name}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30),
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 200,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xfffbf68e7), Colors.lightBlueAccent],
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
              height: 10,
            ),
            Positioned(
              right: 30,
              top: 10,
              child: Container(
                height: 30,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.lightGreenAccent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ViewAll(alldata: categories,name: name,)));

                  },
                  child: const Icon(
                    Icons.arrow_forward,
                    color: Colors.black,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 66,
              right: 15,
              left: 10,
              child: SizedBox(
                height: 150,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Categories(
                      image: categories[index].image,
                      categoryName: categories[index].categoryName,
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CircularClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();

    path.lineTo(0, size.height - 10); // Bottom left
    path.arcToPoint(Offset(10, size.height),
        radius: const Radius.circular(10), clockwise: false);

    path.lineTo(size.width - 10, size.height); // Bottom right
    path.arcToPoint(Offset(size.width, size.height - 10),
        radius: const Radius.circular(10), clockwise: false);

    path.lineTo(size.width, 0); // Top right
    path.lineTo(0, 0); // Top left

    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}

//Categories

class Categories extends StatelessWidget {
  final String?image;
  final String?categoryName;
  const Categories({ Key?key ,this.categoryName, this.image}):super(key: key);
  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {

        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>  Content(name: categoryName!,)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),

        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: CachedNetworkImage(

                  progressIndicatorBuilder: (context, url, progress) => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  errorWidget: (context, url, error) => Image.network(
                   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVeDmyVhEs1maRovAIBETq6MMScSU2Rb3Meg&usqp=CAU",
                    height: 80,
                    width: 120,
                    fit: BoxFit.cover,
                  ),

                    imageUrl:image!,

                    width: 120,
                    height: 80,
                    fit: BoxFit.cover,

                )),
            Container(
              height: 80,
              width: 120,
              decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(11),
                  gradient: const LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [
                        Colors.black12,
                        Colors.black38,
                      ])),
              child: Center(
                child: Text(
                  categoryName!,
                  style: const TextStyle(
                    color: Colors.lightGreenAccent,
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
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
