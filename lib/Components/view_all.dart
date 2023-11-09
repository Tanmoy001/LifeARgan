import 'package:LifeARgan/model/home_category_model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ViewAll extends StatefulWidget {
  final List<CategoryModel> alldata;
  final String?name;

  const ViewAll({Key? key, required this.alldata,required this.name}) : super(key: key);

  @override
  State<ViewAll> createState() => _ViewAllState();
}

class _ViewAllState extends State<ViewAll> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Center(
          child: Text(widget.name!,style: const TextStyle(
            color: Colors.black87
          ),),
        ),
        backgroundColor: Colors.lightGreenAccent,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: SafeArea(
        child: SingleChildScrollView(

          child: SizedBox(


            child: Container(
              // height: MediaQuery.of(context).size.height-30,
              width: MediaQuery.of(context).size.width,
               padding: const EdgeInsets.symmetric(vertical: 5),
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(

                  color: Colors.white,
                borderRadius: BorderRadius.circular(15)
              ),
              child: Wrap(
                spacing: 10,
                runSpacing: 10,
                alignment: WrapAlignment.center,
                children: widget.alldata.map((CategoryModel category) {
                  return  Categories(
                      image: category.image,
                      categoryName: category.categoryName,
                    );
                }).toList(),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
//Categories

class Categories extends StatelessWidget {
  final String? image;
  final String?categoryName;
 const Categories({Key?key,this.categoryName, this.image}):super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {

        // Navigator.push(
        //     context,
        //     MaterialPageRoute(
        //         builder: (context) => Category(name: categoryName)));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10),
        child: Stack(
          children: [
            ClipRRect(
                borderRadius: BorderRadius.circular(11),
                child: CachedNetworkImage(
                  imageUrl: image!,
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
