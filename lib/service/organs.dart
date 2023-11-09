import 'package:LifeARgan/model/home_category_model.dart';

List<CategoryModel> getCategory_organs(){
  List<CategoryModel> category_organs = [];
  CategoryModel categoryModel= CategoryModel();

  categoryModel.categoryName="Kidney";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQDzXtW1Y0oYOPfQeiHwtQ4Yi5vnVeKxi-3f5tuXpuSljMypKprJ6h7z0Zc4l-p2_D3IP4&usqp=CAU";
  category_organs.add(categoryModel);
  categoryModel=CategoryModel();

  categoryModel.categoryName="Heart";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSsFF3mCCcwPlkrVBnEi-LAilRVwxtpPRythg&usqp=CAU";
  category_organs.add(categoryModel);
  categoryModel=CategoryModel();

  categoryModel.categoryName="Eye";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSPoiEqXLBvYG2Foh6-3zxB_tdbGDBdlbrJyA&usqp=CAU";
  category_organs.add(categoryModel);
  categoryModel=CategoryModel();

  categoryModel.categoryName="Brain";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzz2makqRwXvNjtWLLZOR1sBnQ3R3xD9kQQA&usqp=CAU";
  category_organs.add(categoryModel);
  categoryModel=CategoryModel();

  categoryModel.categoryName="Lungs";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ71k6V1zO7ay7U-1xJGLEzHDvYVZIM2l9PjqSwc9TJi9BYow-RlkP-HmgZtm-YZ1K1uYA&usqp=CAU";
  category_organs.add(categoryModel);
  categoryModel=CategoryModel();

  categoryModel.categoryName="Uterus";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQu3xYoP7_nV_ujNskVKgxiJToUmkRb3fUTkA&usqp=CAU";
  category_organs.add(categoryModel);

  categoryModel=CategoryModel();
  categoryModel.categoryName="Artery";
  categoryModel.image="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR9IKIusWkhbi9jOrS7x7iMOexImgTSfq71mw&usqp=CAU";
  category_organs.add(categoryModel);
  // categoryModel=CategoryModel();
  return category_organs;
}