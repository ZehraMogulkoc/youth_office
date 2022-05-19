
import 'package:flutter/material.dart';
import 'package:youth_office/european_youth_portal.dart';

class EuropeanYouthPortalAlternative extends StatefulWidget {
  const EuropeanYouthPortalAlternative({Key? key}) : super(key: key);

  @override
  _EuropeanYouthPortalAlternativeState createState() => _EuropeanYouthPortalAlternativeState();
}

class _EuropeanYouthPortalAlternativeState extends State<EuropeanYouthPortalAlternative> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.redAccent,
        title: Text('ESC ve European Youth Portal'),
      ),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 10,),
                Image.asset('assets/esc_image.jpg'),
                SizedBox(height: 10,),
                const Text('European Solidarity Corps',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text('The European Solidarity Corps brings together '
                      'young people to build a more inclusive society, '
                      'supporting vulnerable people and responding to societal '
                      'challenges. It offers an inspiring and empowering '
                      'experience for young people who want to help, learn and develop.',
                    style: TextStyle(
                        fontWeight: FontWeight.bold
                    ), ),
                ),
                const Padding(padding: EdgeInsets.all(8.0),
                  child: Text('Young people planning to join the European '
                      'Solidarity Corps should read this document carefully. '
                      'As a European Solidarity Corps participant, one agrees '
                      'to uphold the following principles:'),
                ),
                const Padding(padding: EdgeInsets.all(8.0),
                  child: Text('* European Solidarity Corps participants embrace the values of solidarity, respect for human dignity and human rights, and believe in the promotion of a fair and equal society in which pluralism, non-discrimination, tolerance, justice, solidarity and equality prevail;,\n'
                      '* European Solidarity Corps participants are willing to make meaningful contributions to society and will show solidarity, cooperation and mutual understanding;\n'
                      '* European Solidarity Corps participants must not act in any way that could put others or themselves at risk of being harmed;\n'
                      '* European Solidarity Corps participants must respect the rules, organisational structure and practices that govern the hosting organisation, bearing in mind also that this frame may be necessary to respect the personal health, safety and dignity of individuals involved in the activity. European Solidarity Corps participants must also abide by the laws in force in the host country;\n'
                      '* the participation in the European Solidarity Corps does not involve the payment of any fee;\n'
                      '* at the end of their placement, European Solidarity Corps participants are entitled to receive a European Solidarity Corps certificate, confirming their participation in the activity;\n'
                      '* prior to the start of the activity and during their deployment, European Solidarity Corps participants will receive clear information about the tasks they will carry out and, where appropriate, adequate training and linguistic support'
                  ),
                ),
                SizedBox(height: 10,),
                const Text('European Youth Portal',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
                ),
                const Padding(padding: EdgeInsets.all(8.0),
                  child: Text('The European Youth Portal offers European and country level information about opportunities and initiatives that are of interest to young people who are living, learning and working in Europe.\n'
                      'The European Youth Portal addresses young people, but also other stakeholders working in the field of youth (youth organisations, youth workers, policy makers, etc.).'),
                ),
                const Text('You can find 4 main types of content on the European Youth Portal, each grouped in a specific section:',style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20
                ),
                ),
                const Padding(padding: EdgeInsets.all(8.0),
                  child: Text('* Thematic pages related to EU youth policies: “Get involved”\n'
                      '* Thematic pages related to opportunities to go abroad: “Go abroad”\n'
                      '* Fonlarla ilgili Avrupa bilgisine internet erişimi sağlanması,\n'
                      '* EU-funded programme/initiative pages: “EU initiatives”\n'
                      '* Policy pages: “EU Youth Strategy”\n'
                      '* In addition to these 4 main types of content, you can read stories and testimonials of young people, news, and check for events. '
                  ),
                ),


                SizedBox(height:20),

                ElevatedButton(


                  style: ElevatedButton.styleFrom(
                    primary: Colors.redAccent,
                    minimumSize: const Size(300, 50),
                    maximumSize: const Size(300, 50),
                  ),
                  onPressed: ()=>Navigator.push(context,
                      MaterialPageRoute(
                        builder: (context) => european_youth_portal(),
                      )),
                  child: Text('EUROPEAN YOUTH PORTAL ORGANISATIONS IN TURKEY'),

                ),
                SizedBox(height:10),

              ],
            ),
          )),
    );
  }
}