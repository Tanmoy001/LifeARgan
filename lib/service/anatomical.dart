import 'package:LifeARgan/model/home_category_model.dart';

List<CategoryModel> getCategory_anatomical(){
  List<CategoryModel> category_anatomical  = [];
  CategoryModel categoryModel= CategoryModel();
  categoryModel.categoryName="Skeleton";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQAu3SvIot-AuUXFl2bphI6dhnmnwadXUvocQ&usqp=CAU";
  category_anatomical.add(categoryModel);


  categoryModel=CategoryModel();
  categoryModel.categoryName="Abdomen";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT3vUn83m01hy9x7a29-myuzXn2ZsOS2lkcxA&usqp=CAU";
  category_anatomical.add(categoryModel);

  categoryModel=CategoryModel();
  categoryModel.categoryName="Skull";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6HH6Xfc9r1gbD1pfOIgd7FHKW8UmMKoj4UQ&usqp=CAU";
  category_anatomical.add(categoryModel);

  categoryModel=CategoryModel();
  categoryModel.categoryName="Male Pelvis";
  categoryModel.image="https://upload.wikimedia.org/wikipedia/commons/thumb/9/98/Gray241.png/375px-Gray241.png";
  category_anatomical.add(categoryModel);

  categoryModel=CategoryModel();
  categoryModel.categoryName="Female Pelvis";
  categoryModel.image="https://upload.wikimedia.org/wikipedia/commons/thumb/0/0f/Gray242.png/375px-Gray242.png";
  category_anatomical.add(categoryModel);


  categoryModel=CategoryModel();
  categoryModel.categoryName="Spinal cord";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYEH2pqygKty4thGeqzF5n0ZO8EsUxXC6EaQ&usqp=CAU";
  category_anatomical.add(categoryModel);
  // categoryModel=CategoryModel();
  //
  // categoryModel.categoryName="Upper limb muscles";
  // categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQx-1Fm3PkrskXIjm3080DGYp6aS4_XhLq8Fw&usqp=CAU";
  // category_anatomical.add(categoryModel);


  categoryModel=CategoryModel();
  categoryModel.categoryName="Thorax";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRoYpovZIdLMO-pxUiPsoP6rE9XSBJJvbIPg&usqp=CAU";
  category_anatomical.add(categoryModel);

  categoryModel=CategoryModel();
  categoryModel.categoryName="Teeth";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcROk7PteTO4_8xxKEKgYuNoca7TXFdT-dFf9A&usqp=CAU";
  category_anatomical.add(categoryModel);

  categoryModel=CategoryModel();
  categoryModel.categoryName="Hand";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcScAqcyYAO9UEkYAYN3_vDuwTzMQCmiAuXDvw&usqp=CAU";
  category_anatomical.add(categoryModel);

  // categoryModel=CategoryModel();
  return category_anatomical;
}