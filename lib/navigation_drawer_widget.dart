import 'package:flutter/material.dart';
import 'package:youth_office/ask_us_page.dart';

class NavigationDrawerWidget extends StatelessWidget {
  //const NavigationDrawerWidget({Key? key}) : super(key: key);
  final padding =EdgeInsets.symmetric(horizontal: 10);
  @override
  Widget build(BuildContext context) {
    final name = "Ali Akkaya";
    final email = "ali.akkaya@agu.edu.tr";
    final urlImage = "https://media.licdn.com/media/AAYQAQSOAAgAAQAAAAAAAB-zrMZEDXI2T62PSuT6kpB6qg.png";
    return Drawer(
      child: Material(
        color: Color.fromRGBO(169, 54, 42, 1),
        child: ListView(
          padding: padding,
          children: <Widget>[
            // TODO: Add related ares to drawer.
            // TODO: Create USer page for header and naviagete there.
            buildHeader(urlImage: urlImage, name: name, email: email, onClicked: ()=>Navigator.of(context).push(MaterialPageRoute(
              builder: (context) => AskUs(),
            ))),
            const SizedBox(height: 48,),
            buildMenuItem(
              text: 'Erasmus+',
              icon: Icons.info,
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'ESC',
              icon: Icons.info,
            ),
            const SizedBox(height: 16,),
            buildMenuItem(
              text: 'Youth Portal',
              icon: Icons.info,
            ),
            const SizedBox(height: 24,),
            Divider(color: Colors.white70,),
            const SizedBox(height: 24,),
            buildMenuItem(
              text: 'Ask Us',
              icon: Icons.mail,
              onClicked: () => selectedItem(context, 0),
            ),
          ],
        ),
      ),
    );
  }



  Widget buildHeader({
    required String urlImage,
    required String name,
    required String email,
    required VoidCallback onClicked,
  }) => InkWell(
    onTap: onClicked,
    child: Container(
      padding: padding.add(EdgeInsets.symmetric(vertical: 40)),
      child: Row(
        children: [
          CircleAvatar(radius: 30, backgroundImage: NetworkImage(urlImage),),
          SizedBox(width: 20,),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name, style: TextStyle(fontSize: 20, color: Colors.white),),
              const SizedBox(height: 4,),
              Text(email, style: TextStyle(fontSize: 14, color: Colors.white),),

            ],
          )
        ],
      ),
    ),
  );



  Widget buildMenuItem({
    required String text,
    required IconData icon,
    VoidCallback? onClicked,
  }) {
    final color = Colors.white;
    final hoverColor = Colors.white70;

    return ListTile(
      leading: Icon(icon, color: color),
      title: Text(text, style: TextStyle(color: color),),
      hoverColor: hoverColor,
      onTap: onClicked,
    );
  }

  void selectedItem(BuildContext context, int index){
    Navigator.of(context).pop(); // It closes navigator before changing route.
    // TODO: Add each index of related page and navigator push method.
    switch(index){
      case 0:
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => AskUsPage(),
        ));
        break;
    }
  }
}
