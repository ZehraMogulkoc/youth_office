import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:youth_office/eurodesk_page.dart';

class EurodeskPageAlternative extends StatefulWidget {
  const EurodeskPageAlternative({Key? key}) : super(key: key);

  @override
  _EurodeskPageAlternativeState createState() => _EurodeskPageAlternativeState();
}

class _EurodeskPageAlternativeState extends State<EurodeskPageAlternative> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.redAccent ,
        title: Text('EuroDesk'),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child:Column(
            children: [
              SizedBox(height: 10,),
              Image.asset('assets/euro_desk.png'),
              SizedBox(height: 10,),
              const Text('Eurodesk',style: TextStyle(
                  fontWeight: FontWeight.bold,
                fontSize: 20
              ),),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Eurodesk, gençler için eğitim ve gençlik '
                    'alanlarındaki Avrupa fırsatları ve gençlerin Avrupa '
                    'faaliyetlerine katılımı hakkında bilgi sağlayan'
                    ' Avrupa Bilgi Ağıdır.',
                style: TextStyle(
                    fontWeight: FontWeight.bold
                ), ),
              ),
              const Padding(padding: EdgeInsets.all(8.0),
                child: Text('35 Avrupa ülkesinde  faaliyette bulunan Eurodesk'
                    ' Bilgi Ağı, ülkemizde de Türk Ulusal Ajansı bünyesinde'
                    ' 2008 yılından bu yana faaliyetlerini sürdürmektedir.'),
              ),
              const Padding(padding: EdgeInsets.all(8.0),
                child: Text('Eurodesk hizmetleri şunları içerebilir:',
                textAlign: TextAlign.left,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),),
              ),
              const Padding(padding: EdgeInsets.all(8.0),
                child: Text('* Ücretsiz soru yanıtlama hizmeti,\n'
                    '* Soru sahiplerine öneri ve yardım hizmetleri,\n'
                    '* Fonlarla ilgili Avrupa bilgisine internet erişimi sağlanması,\n'
                    '* Eğitimler düzenlenmesi ve destek hizmetleri,\n'
                    '* Konferanslar, seminerler ve diğer etkinliklerin düzenlenmesi,\n'
                    '* Kaynak materyallerin basılması ve dağıtılması,\n'
                    '* Gençlik Programı ile ilgili bilgilerin yaygınlaştırılması.'
                    ),
              ),
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text('Eurodesk Türkiye Temas Noktaları',style: TextStyle(
                    fontWeight: FontWeight.bold,
                  fontSize: 20
                ),),
              ),
              const Padding(padding: EdgeInsets.all(8.0),
                child: Text('Eurodesk Türkiye Temas Noktaları, TC. Dışişleri '
                    'Bakanlığı, Avrupa Birliği Başkanlığı, AB Eğitim ve Gençlik '
                    'Programları Merkezi Başkanlığı (Ulusal Ajans) tarafından, '
                    'gençlere ve gençlere hizmet edenlere Avrupa Fırsatları'
                    ' hakkında bilgi vermekle yetkilendirilmiş kuruluşlardır.'
                ),
              ),
              const Padding(padding: EdgeInsets.all(8.0),
                child: Text('Eurodesk Türkiye Birimi (eurodesktr@eurodesk.eu)'
                    ' ile doğrudan temas kurabileceğiniz gibi, size en yakın '
                    'temas noktası ile de yüzyüze görüşme imkânına sahipsiniz.'
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
                      builder: (context) => EuroDeskPage(),
                    )),
                child: Text('EURODEKS WEB PAGE'),

              ),
              SizedBox(height:10),
            ],
          )
        ),
      ),
    );
  }
}
final Uri _eurodeks_hakkinda = Uri.parse('http://eurodesk.ua.gov.tr/hakkimizda.aspx');

void _launchEurodeskHakkinda() async {
  if (!await launchUrl(_eurodeks_hakkinda)) throw 'Could not launch $_eurodeks_hakkinda';
}
