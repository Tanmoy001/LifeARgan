import 'package:LifeARgan/model/home_category_model.dart';

List<CategoryModel> getCategory_systems(){
  List<CategoryModel> category_systems= [];
  CategoryModel categoryModel= CategoryModel();

  categoryModel.categoryName="Vision";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRXNg1phCwz4PrNIBs-TQUqelwxNiKBWnmEyw&usqp=CAU";
  category_systems.add(categoryModel);
  categoryModel=CategoryModel();

  categoryModel.categoryName="Hemisected brain";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrsLL3QPjqTysA9ggnMCwvCAF34jyPKKrMKg&usqp=CAU";
  category_systems.add(categoryModel);
  categoryModel=CategoryModel();

  categoryModel.categoryName="Cranial nerves";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ_MwlsESVeFjn4B-ZbnVsRmjF4_iU8cVMn6g&usqp=CAU";
  category_systems.add(categoryModel);

  // categoryModel=CategoryModel();
  return category_systems;
}