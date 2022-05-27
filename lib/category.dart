

import 'package:flutter/cupertino.dart';

class Category {
  final String id;
  final String title;
  final AssetImage img;

   Category({
    required this.id,
    required this.title,
    required this.img,
  });

}
class CategoryList{
   List<Category> items = [
     Category(
         id: 'c1',
         title: 'Erasmus+',
         img:AssetImage('assets/erasmus.png')
      
     ),
     Category(
         id: 'c2',
         title: 'European Youth Portal',
         img:AssetImage('assets/topic_youth.jpg')
       
     ),
     Category(
         id: 'c3',
         title: 'Turkish National Agency',
         img:AssetImage('assets/ulusal_ajans.jpg')
       
     ),
     Category(
         id: 'c4',
         title: 'Eurodesk',
         img:AssetImage('assets/eurodesk.png')
       
     ),


     Category(
         id: 'c5',
         title: 'SDG Guide',
         img:AssetImage('assets/sdg_button.png')
       
     ),
     Category(
         id: 'c6',
         title: 'Cv & Motivation Letter Helper',
         img:AssetImage('assets/cv_motivation.PNG')
     
     ),
  ];
}
