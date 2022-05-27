import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AboutUs extends StatefulWidget {
  const AboutUs({Key? key}) : super(key: key);

  @override
  _AboutUsState createState() => _AboutUsState();
}

class _AboutUsState extends State<AboutUs> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor:Colors.redAccent,
        title: Text('About Us'),

      ),
          body: Center(
            child: SingleChildScrollView(
              child: Column(
         children:  <Widget>[
           Image.asset('assets/AGU YOUTH FACTORY_1.png'),
           Text('  AGU Youth Factory, a first – class in its field and in Turkey, is located in Abdullah Gül University Sumer Campus. Sumer campus is situated at the location of the old Sumer Textile Factory,'
               ' which was found in Kayseri with the vision of production and development in the first years of the Turkish Republic. AGU Youth Factory takes inspiration from the same vision of the historical factory and'
               ' invests in youths as its raw material.',),
           SizedBox(height:10.0),
           Text('  Youth Factory is a youth – oriented center that trains youths, brings skills to life, provides with an international vision, encourages young people to be creative and innovative, enables them to '
               'participate in social life and expresses the pleasure of learning and producing together.'),
           SizedBox(height:10.0,),

           Text('This Youth Factory focuses on not only in AGU, but also on national and international field.'),

           SizedBox(height:10.0),

           Image.asset('assets/dosya2.jpg'),
                SizedBox(height:10.0),

                SingleChildScrollView(
             child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
               children: [
                 Text('Our Mission', style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20.0,),),
              Text('  -To train individuals who will shape the future with a learner-oriented approach and to transform knowledge into value with the partnerships it has established as a research university seeking solutions to global problems.'),
               SizedBox(height: 10.0,),
             Text("  -To develop young people's knowledge, skills and attitudes through inclusion and participatory learning, making them aware of global problems and producing solutions through national and international networks and mobilities."),
               Text('Our Vision', style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold),),
                 Text('  -To be a respected university that internalizes innovation and creativity, produces knowledge and contributes to science and society at an advanced level by transforming knowledge into value.'),
              Container(
                  child: Text('  -To be an organization that enables them to make a positive contribution to society and make a difference by providing support and guidance.')),
               ],
             ),

           )


         ],
    ),
            ),
          ),
    );
  }
}
