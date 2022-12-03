import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';

class CTase2Teadmised extends StatefulWidget {
  const CTase2Teadmised({Key? key}) : super(key: key);

  @override
  State<CTase2Teadmised> createState() => _CTase2TeadmisedState();
}

class _CTase2TeadmisedState extends State<CTase2Teadmised> {

  PageController _controller = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [
                Color(0xffFF5F6D),
                Color(0xffFF5F6D),
                Color(0xffFFC371),
              ],
            ),
          ),
          height: 1000,
          width: 500,
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: WaveClipperTwo(),
                    child: Container(
                      height: 100,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.white12,
                            Colors.white12,
                          ],
                        ),
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.of(context).push(
                          PageTransition(
                            child: Crypto(),
                            type: PageTransitionType.fade,
                            alignment: Alignment.center,
                          ),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(15),
                          child: Container(
                            color: Colors.transparent,
                            height: 50,
                            width: 60,
                            child: Icon(
                              Icons.subdirectory_arrow_left,
                              color:  Colors.white,
                              size: 50,
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text("tase 2",
                          style: GoogleFonts.bebasNeue(
                            fontSize: 60,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Stack(
                  children: [
                    Container(
                      height: 500,
                      width: 350,
                      child: PageView(
                        controller: _controller,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Coin Tüübid",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Memecoinid ehk Meemicoinid on meemi põhised coinid. Dogecoin on loodud kuulsa meemi põhjal milleks on Shiba Inu tõugu koer kes nimetati internetis Dogeks ning tehti populaarseks meemide teel. Koera päris nimi on KabosuSuurimad nt. on Dogecoin ehk DOGE ja Shiba Inu ehk SHIB. Need coinid ei tõuse nagu teised coinid. Nende hinda mõjutab nende asjakohasus ja populaarsus tol hetkel. Nt. DOGE tõusis, siis kui Elon Musk üks populaarsemaid inimesi planeedil ütles, et Teslasid saab osta DOGE-s, hind kohe tõusis, sest tal oli nüüd mingi väärtus ja kasutus. Need ei ole head pikaajalised investeeringud, sest kui midagi ei juhtu olulist, siis nende hind ka ei tõuse, lisaks on need coinid väga ettearvamatud.  Altcoinid on kõik coinid välja arvatud Bitcoin, neid coine peetakse Bitcoini alternatiiviks. Samas neid võib ka liigitada ka lihtsalt coinideks nagu Bitcoini. Osadel puudub oma Blockchain, kuid nt ETH-il ja XRP-l on oma Blockchain. Stablecoinid jälgivad mingi muu valuuta hinda, kõige tavalisem on USA Dollar. Nad ei ole suured raha teenimis võimalused, kuid nende pluss on see, et nende hind ei kõigu suurte protsentidega. Need coinid on suurepärased maksevahendid, sest nende hind püsib enam-vähem samal tasemel alati. Nad on alternatiivne maksevahend Bitcoinile, sest Bitcoin kõigub väga tihti sadu eurosid. Shitcoinid on rahva poolt väljamõeldud termin kasutule või väärtusetule coinile. Neid coine on tuhandeid. Memecoine võib ka tegelikult nimetada shitcoinideks, sest enamus memecoinid ongi väärtusetud.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Staking",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Staking on see, kui lukustad oma krüpto teatud ajaks, et aidata blockchaini toimimist toetada. Vastutasuks oma krüpto panuse eest teenite rohkem krüpto tagasi. Seda saab teha paljudes exchangedes nt. Kraken, Crypto.com. Need lukustamise perioodid võivad ulatuda kuni mitme kuuni. Enne stakimist antakse sulle protsent tavaliselt 4-9. Selle protsendi krüptot sa saad juurde stake-mis perioodi lõpus. Stakemine on väga hea pikaajalistele investeerijatele, kes ei kavatse müüa lähitulevikus, sest nad teenivad koguaeg juurde krüptot. Vastastikune jutt käib inimestele kes plaanivad müüa kiiresti maha oma krüpto kasumiga.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Bitcoin",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Bitcoin on ilmselt tuntuim krüpto üldse olemas. Enamus inimesed on sellest kuulnud. Bitcoin on väga vastuoluline asi. On riike kes on selle täiesti ära keelanud ja on riike nt. El Salvador kes on täiesti Bitcoini poolt. Nagu igal asjal on ka Bitcoinil omad plussid ja miinused. Bitcoin on väga lihtsasti kättesaadav, maksed kestavad ainult paar minutit ning Bitcoini on väga lihtne rahaks muuta, müüd maha paari vajutusega ja sul on raha olemas. Miinuseks peetakse seda, et ainult 21 000 000 Bitcoini on olemas, sellest tuleneb ka selle kallis hind. Väga suureks plussiks peetakse Bitcoini anonüümsust, võimatu on häkkimise teel saada teada kui palju on kellegil Bitcoini ja neid ära varastada on peaaegu võimatu, see võtaks aastaid aega ja selle ajaga ei pruugi enam neid Bitcoine seal olla. Lisaks on Bitcoin detsentraliseeritud valuuta ning seda ei reguleeri üks valitsus ega pank. Kahtlemata kõige suurem pluss on selle kõrge tootlus potentsiaal. Bitcoin oli 2017 alla 1000 euro ning paar aastat hiljem oli ta 64 000 eurot. Miinuseks peetakse ka selle kasutus võimet, vähesed firmad ja poed aktsepteerivad Bitcoini või üldse krüptot maksevahendina. Lisaks on Bitcoini maksed pöördumatud, neid ei saa tagasi võtta, kui sisestasid vale summa, pead ainult lootma, et inimene saadab tagasi üleliigse summa, kuid see on suur risk.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Mis on härjaturg?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Härjaturud on tavaliselt siis, kui majandus on heas seisus, kasvab ja on tugev või kui majandus juba on tugev. Härjaturud käivad käsikäes tugeva majandusega ja töötute arvu vähenemisega. Tihti langevad kokku ka ettevõtete kasumi suurenemisega. Investorid on alati härjaturgude käigus väga kindlad ja kindlus kaob alles siis kui hakkab tulema karuturg. Härjaturgude ajal tavaliselt ostetakse krüptot rohkem kui tavaliselt ning rahvas räägib ka sellest rohkem. See on üheks põhjuseks, miks paljud kaotavad ka nende pärast kõvasti raha. Härjaturgudel soovitame võtta ka kasumit, kuid see ei tähenda kõikide krüptode müümist.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Kuidas härjaturust kasu lõigata?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Härjaturgudel võib näha ulmelisi tõuse, me räägime 100-200% tõusudest paari päeva või nädala jooksul. Meie soovitus on osta madala hinnaga krüptot karuturgude ajal ning seejärel HODLida ja oodata härjaturgu. Sellisel viisil võivad olla kasumid hiiglaslikud. Kindalasti vältige härjaturu ajal ostmist, vähemalt kui hinnad on ilmselgelt väga kõrged. Ostmine tuleks teha kas härjaturu alguses või veel parem karuturu ajal. Sel viisil suurendate oma kasumit.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Mis on karuturg?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Karuturg viitab varade hindade ulatuslikule langusele, need võivad olla üle 100% või rohkem. On selge, et neid aegu pole mõtet oodata, kuid vastu võitlemine võib olla ohtlik. Karuturgude ajal hinnad kukuvad meeletult ja ei pruugi taastuda kas mitte kunagi või alles paari aasta pärast. See viib enamus investoreid kaugele nii krüptost kui ka teistest investeeringutest.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Kuidas karuturg ,,üle elada”?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Karuturud on kohutavad iga investori jaoks. Siiski alati öeldakse, et ka halvas on midagi positiivset. Karuturgude ajal on tegelikult hea aeg ka osta, kui investeerida pikaajaliselt. Nimelt kui osta madala hinnaga ja oodata eelnevalt mainitud härjaturgu, siis võib kasum olla meeletu. Teine võimalus on põhimõtteliselt mängida surnut. Surnut mängides sa ei osta ega müü üldse sellel ajal ning lihtsalt oled rahulik. Sel viisil ei riski sa sellega, et kui ostad madala hinnaga krüptot ning see ei taastu kunagi, siis sa kaotad oma investeeritud raha. Meie soovitus on osta tuntumaid krüptosid karuturu ajal ning seejärel oodata härjaturgu.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Petturid ja häkkerid on suur probleem",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Sellegipoolest, et krüptovarasi on teoreetiliselt raske varasta, sest iga tehing registreeritakse plokiahelas, toimub pettusi väga tihti. Alates 2021. aastast on USA elanikud teavitanud kaotustest mis on üüratud. Üle 1 miljardi dollari. Peamiseks süüdlaseks osutuvad sotsiaalmeedias sisuloojate poolt reklaamitud pettused. Need pettused väidavad alati, et neid ostes saad ruttu kiireks. Alati tuleb olla selle osas tähelepanelik. Sellist asja nagu “Saa kiiresti rikkaks pole olemas”. Veelgi enam on läinud raha kaotsi tänu häkkeritele. Häkkerid kasutavad tihtipeale krüptovõrkude nõrkusi oma kasuks ära. Riigid pole ikka veel tänase päevani kindlad, kuidas sellele reageerida.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Võite ühe päevaga kõik kaotada",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Ärge spekuleeriga krüptot üle. Kõige suurem ja tuntuim krüpto, nimega Bitcoin on puhas näide. Ainuüksi Bitcoin on kogenud kaheksat krahhi/turu korrektsiooni oma eluajal. Näiteks aastal 2011. kaotas Bitcoin ühe päevaga 99% oma väärtusest. Sama juhtus ka järgmise aasta augustis kui langes 56% ja seejärel aprillis kui Bitcoin langes 83%. Sellised krahhe on olnud veel mitmeid ja ka ilmselt on palju krahhe alles ees. Muidugi on languste vahel tõusnud hind tohutult ja õigel ajahetkel ostnud investorid on teeninud miljoneid, kui mitte miljardeid. Samas need kes on ostnud valel ajal, on kaotud suure osa oma investeeringust.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Container(
                              color: Colors.white12,
                              height: 100,
                              width: 200,
                              child: ListView(
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 20),
                                    child: Text("Coin vs token",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüpto coin-i ja token-i erinevuse teadmine on väga oluline kõigile, kes investeerivad nendesse. Suurim vahe on see, et coin-id töötavad oma sõltumatul plokiahel ja token-id töötavad olemasoleval plokiahelal. Ehk token-idel pole oma plokiahelat. Coin-e kasutatakse tavaliselt maksevahendina, samas kui token-itel võib olla mitmesuguseid kasutusviise ja funktsioone. Kindlasti on ka token-e palju lihtsam luua, kui coin-e.",
                                      style: GoogleFonts.sansita(
                                        color: Colors.white,
                                        fontSize: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 510, left: 130),
                      child: SmoothPageIndicator(
                        controller: _controller,
                        effect: ScrollingDotsEffect(
                          activeDotColor: Colors.white,
                          dotColor: Colors.white30,
                          dotHeight: 20,
                          dotWidth: 20,
                        ),
                        count: 10,
                      ),
                    ),
                  ],
                ),
              ),
              Stack(
                children: [
                  RotatedBox(
                    quarterTurns: 2,
                    child: Stack(
                      children: [
                        Opacity(
                          opacity: 1,
                          child: ClipPath(
                            clipper: WaveClipperTwo(),
                            child: Container(
                              height: 93,
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  colors: [
                                    Colors.white12,
                                    Colors.white12,
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}