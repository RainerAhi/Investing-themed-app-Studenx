import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oigev2/AktsiadFolder/Aktsiad.dart';

class Tase3Teadmised extends StatefulWidget {
  const Tase3Teadmised({Key? key}) : super(key: key);

  @override
  State<Tase3Teadmised> createState() => _Tase3TeadmisedState();
}

class _Tase3TeadmisedState extends State<Tase3Teadmised> {

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
                            child: Aktsiad(),
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
                        child: Text("Aktsiad",
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
                                    child: Text("Eelis- ja lihtaktsia",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Lihtaktsiad esindavad osalist omandit ettevõttes. See aktsiaklass annab investoritele õiguse teenitud kasumile, mida tavaliselt makstakse dividendidena. Tava aktsionärid valivad ettevõtte direktorite nõukogu ja hääletavad ettevõtte poliitika üle. Selle aktsiaklassi omanikel on õigus ettevõtte varale likvideerimisel juhtumi korral, kuid alles pärast seda, kui eelis aktsionäridele ja teistele võla omanikele on tasutud. Ettevõtte asutajad ja töötajad saavad tavaliselt aktsiaid. Teisest küljest annavad eelisaktsiad omanikule õiguse regulaarsele dividendimaksele enne dividendide väljastamist lihtaktsionäridele. Nagu eespool mainitud, saavad eelisaktsionärid ka ettevõtte likvideerimise või pankrotistumise korral esimesena tagasi. Eelisaktsia ei anna hääleõigust ja sobivad usaldusväärset passiivset tulu otsivatele investoritele. Paljud ettevõtted pakuvad nii liht kui ka eelisaktsiaid. Näiteks Alphabet Inc. (Google'i emaettevõte) loetleb Alphabet Inc. (GOOGL) oma A-klassi lihtaktsiad ja Alphabet Inc. (GOOG), mis on eelis C-klassi aktsiad.",
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
                                    child: Text("Blue-Chip aktsiad",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Blue-chip aktsiad on väljakujunenud ettevõtted, millel on suur market cap. Neil on pikaajaline edukas kogemus usaldusväärse sissetuleku teenimisel ja oma tööstusharu või sektori juhtpositsioonil. Konservatiivsed investorid võivad oma portfelli kõrgeima osakaalu teha blue-chip aktsiatega, eriti ebakindluse perioodidel. Mitmete näidete hulka kuuluvad andmetöötlus hiiglane Microsoft Corporation (MSFT), kiirtoidu liider McDonald's Corporation (MCD) ning nafta- ja gaasikontsern Exxon Mobil Corporation (XOM).",
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
                                    child: Text("Kasvuaktsiad vs väärtusaktsiad",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Nagu nimigi ütleb, viitavad kasvuaktsiad aktsiatele, mis eeldatavasti kasvavad laiema turuga võrreldes kiiremini. Üldjuhul kipuvad kasvuaktsiad ületama majanduskasvu ajal ja madalate intressimäärade ajal. Näiteks on tehnoloogia aktsiad viimastel aastatel märkimisväärselt paremad, mida toidab tugev majandus ja juurdepääs odavale rahastamisele. Seevastu väärtusaktsiatega kaubeldakse allahindlusega, kui ettevõtte tulemused muidu võiksid viidata, tavaliselt on nende väärtus atraktiivsem kui laiem turg. Väärtusaktsiad (nt finants-, tervishoiu- ja energianimetused) kipuvad majanduse taastumise perioodidel ületama, kuna need loovad tavaliselt usaldusväärseid tuluvooge. Investorid saavad jälgida aktsiate väärtust, lisades oma jälgimisnimekirja SPDR Portfolio S&P 500 Value ETF (SPYV).",
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
                                    child: Text("Tsüklilised ja mittetsüklilised aktsiad",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Tsüklilisi aktsiaid mõjutavad otseselt majanduse tulemused ja need järgivad tavaliselt kasvu, tipptaseme, majanduslanguse ja taastumise majandustsükleid. Tavaliselt on neil suurem volatiilsus ja need ületavad teisi aktsiaid majandusliku tugevuse ajal, kui tarbijatel on suurem sissetulek. Tsükliliste aktsiate hulka kuuluvad näiteks iPhone'i tootja Apple Inc. (AAPL) ja spordivarustuse hiiglane Nike, Inc. (NKE). Investorid saavad oma portfelli lisada tsüklilisi aktsiaid, ostes Vanguard Consumer Discretionary ETF-i (VCR). Teisest küljest tegutsevad mittetsüklilised aktsiad langusekindlates tööstusharudes, mis kipuvad majandusest sõltumata toimima suhteliselt hästi. Mittetsüklilised aktsiad ületavad tavaliselt majanduse aeglustumise või languse ajal tsüklilisi aktsiaid, kuna nõudlus põhitoodete ja -teenuste järele on suhteliselt ühtlane. Vanguard Consumer Staples ETF (VDC) pakub kokkupuudet suure kapitalisatsiooniga kaitse aktsiatega, nagu isikliku hügieeni hiiglane The Procter & Gamble Company (PG), aga ka joogitootjatega PepsiCo, Inc. (PEP) ja The Coca-Cola Company (KO).",
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
                                    child: Text("Kaitseaktsiad",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kaitseaktsiad pakuvad üldiselt püsivat tootlust enamikes majandustingimustes ja aktsiaturu keskkondades. Need ettevõtted müüvad tavaliselt olulisi tooteid ja teenuseid, nagu tarbekaubad, tervishoid ja kommunaalteenused. Kaitsvad aktsiad võivad aidata kaitsta portfelli järsu kahjumi eest müügi- või langusturu ajal. Kaitseaktsia võib olla ka väärtuse-, sissetuleku-, mittetsükliline või põhiaktsia. Telekommunikatsioonihiiglane AT&T Inc. (T) ja rahvusvaheline tervishoiuettevõte Cardinal Health, Inc. (CAH) kuuluvad Invesco Defensive Equity ETF-i (DEF) põhiosaluste hulka.",
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
                                    child: Text("Tuluaktsiad",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Tuluaktsiad on aktsiad, mis annavad regulaarset tulu, jaotades ettevõtte kasumit ehk üleliigset raha turu keskmisest kõrgemate dividendide kaudu. Tavaliselt on need aktsiad – mõelge kommunaalettevõtetele – madalama volatiilsusega ja väiksema kapitali kallinemisega kui kasvuaktsiatel, mistõttu need sobivad riskikartlikule investorile, kes otsivad regulaarset sissetulekut. Investorid saavad sissetulekuga aktsiatele juurde pääseda läbi Amplify High Income ETF (YYY).",
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
                                    child: Text("IPO aktsiad",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kui ettevõte läheb börsile, emiteerib ta aktsiaid esmase avaliku pakkumise (IPO) kaudu. IPO aktsiad jaotatakse tavaliselt allahindlusega enne ettevõtte aktsia nimekirju börsil. Sellel võib olla ka üleandmise ajakava, mis takistab investoritel aktsiatega kauplemise alustamisel kõiki oma aktsiaid müümast. Turukommentaatorid kasutavad hiljuti noteeritud aktsiatele viidates ka terminit IPO aktsiad. Investorid saavad Nasdaqi veebisaidi kaudu jälgida tulevasi IPO-sid.",
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
                                    child: Text("ESG aktsiad",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Keskkonna-, sotsiaal- ja ettevõtte juhtimise varud rõhutavad keskkonnakaitset, sotsiaalset õiglust ja eetilisi juhtimistavasid. ESG tuleb inglise keelest- environmental, social, and governance. Näiteks võib ESG aktsia olla ettevõte, mis nõustub vähendama oma süsinikdioksiidi heitkoguseid suuremal määral kui riiklikud ja tööstuse eesmärgid, või ettevõte, mis toodab seadmeid taastuvenergia infrastruktuuri jaoks. ESG aktsiad on viimastel aastatel populaarsust kogunud millenniumlaste ehk Y-põlvkonna seas – sotsiaalselt teadliku põlvkonna seas, kes investeerivad suurema tõenäosusega asjadesse, mida nad usuvad ja toetavad. Investorid saavad ESG aktsiatele juurde pääseda, lisades oma portfelli Vanguard ESG U.S. Stock ETF (ESGV).",
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
                                    child: Text("Penny aktsiad",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Penny aktsia on aktsia, mille väärtus on alla 5 dollari ja seda peetakse väga spekulatiivseks. Kuigi mõned Penny aktsiad kaubeldakse suurematel börsidel, kauplevad paljud OTCQB kaudu – keskmise tasemega börsivälise (OTC) turu USA aktsiate jaoks, mida haldab OTC Markets Group. Investorid peaksid penniaktsiate ostu- ja müügikorralduste esitamisel kaaluma limiit korralduste kasutamist, kuna neil on sageli suur vahe ostu- ja müügihinna vahel. Penny aktsiad tõusid populaarses kultuuris esile pärast filmi The Wolf of Wall Street ilmumist, mis räägib endisest börsimaaklerist, kes korraldas penny aktsiapettust. Investorid, kes soovivad panustada penny aktsiatele, peaksid vaatama iShares Micro-Cap ETF-i (IWC).",
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
                                    child: Text("Karuturg viitab varade hindade ulatuslikule langusele, mis on vähemalt 20% võrreldes viimaste tipp tasemetega. On selge, et neid aegu pole mõtet oodata, kuid vastu võitlemine võib olla ohtlik. Siin tutvustame teile mõnda olulist investeerimisstrateegiat ja mõtteviisi, mis aitavad teil jääda rahulikuks ja mängida surnud, kui aktsiaturg kukub.",
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
                                    child: Text("Kui sageli karuturud toimuvad?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Ajalooliselt toimuvad USA-s karuturud keskmiselt iga 4–5 aasta järel.",
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
                                    child: Text("Milline on olnud kõige hullem karu turg?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Praeguseni on olnud kõige järsem ja pikim karuturg oli aastatel 1929–1932, mis langes kokku ülemaailmse majanduskriisiga.",
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
                                    child: Text("Miks on hea mõte jätkata investeerimist karu turgude kaudu?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Pikemas perspektiivis kipub aktsiaturg tõusma ja majandus kasvab. Kuigi karuturud võivad selle muidu tõusva trendi katkestada, on need langused alati lõppenud ja lõpuks pöördunud, saavutades uued kõrgpunktid. Investeerides läbi karu turu, saate osta aktsiaid, kui need on madalama hinnaga (müügil) ja koguda tugevamaid positsioone.",
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
                                    child: Text("Mängi surnut",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Öeldakse, et karuturul on kõige parem mängida surnut, see on sama kui kohtuksite metsas tõelise karuga. Vastuvõitlus oleks väga ohtlik. Kui jääte rahulikuks ja ei tee järske liigutusi, säästate end karu lõunaks muutumisest. Rahalises mõttes surnuks mängimine tähendab suurema osa oma portfellist paigutamist rahaturu väärtpaberitesse.",
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
                                    child: Text("Hoidke oma hirmud kontrolli all",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Investorid peaksid püüdma oma emotsioonid investeerimisotsuste tegemise protsessist alati eraldada. See, mis ühel päeval tundub tohutu globaalse katastroofina, võib mõne aasta pärast jääda meelde vaid kui radariekraani tõmblus. Pidage meeles, et hirm on emotsioon, mis võib hägustada olukorra ratsionaalset otsust. Ole rahulik ja jätka!",
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
                                    child: Text("Parimad aktsiad karuturgudel?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kaitsvad või mitte tsüklilised aktsiad üldiselt halvematel aegadel toodavad paremini kui üldine turg. Seda tüüpi aktsiad pakuvad järjepidevat dividendi ja stabiilset tulu, olenemata üldisest turu olukorrast. Ettevõtted, mis toodavad kodutarbeid (nt hambapastad, šampoonid ja WC-paber) on kaitsva tööstuse näited, sest inimesed kasutavad neid esemeid ka rasketel aegadel.",
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
                                    child: Text("Investeerige ainult seda, mida olete valmis kaotama!",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Investeerimine on oluline, aga ka söömine ja katuse pea kohal hoidmine. Ei ole mõistlik võtta lühiajalisi vahendeid (st raha hüpoteegi või toidukaupade jaoks) ja investeerida need aktsiatesse. Üldreeglina ei tohiks investorid aktsiatesse kaasata, välja arvatud juhul, kui nende investeerimishorisont on vähemalt viis aastat, eelistatavalt pikem, ning nad ei tohiks kunagi investeerida raha, mille kaotamist ei saa endale lubada. Pidage meeles, et karuturud ja isegi väikesed korrektsioonid võivad olla halvemal juhul hävitavad.",
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
                                    child: Text("Mitmekesista oma portfooliot!",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Mitmekesistamise tuum on see, et teie portfelli protsent on jaotatud aktsiate, võlakirjade, sularaha ja alternatiivsete varade vahel. Portfelli tükeldamine sõltub teie riskitaluvustest, ajahorisondist, eesmärkidest jne. Iga investori olukord on erinev. Õige varade jaotamise strateegia võimaldab teil vältida võimalikke negatiivseid mõjusid, mis tulenevad kõigi munade ühte korvi asetamisest.",
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
                                    child: Text("Otsige häid võimalusi!",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Karuturud võivad pakkuda investoritele suurepäraseid võimalusi. Trikk on teada, mida otsite. Pekstud ja alahinnatud on põhilised aktsiate kirjeldused karu turu ajal. Targad investorid, peavad karuturge sageli ostuvõimalusteks, kuna heade ettevõtete hinnangud langevad koos kehvade ettevõtetega.",
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
                                    child: Text("Inflatsiooni mõju aktsiate kasumile",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Investorid, riigid ja ettevõtted jälgivad pidevalt inflatsioonitaset ja muretsevad selle tõttu. Inflatsioon(kaupade ja teenuste hinnatõus) vähendab kõikide valuutaühikute(eur, usd jne) ostujõudu. Inflatsiooni kasv võib olla kahjulik mitut viisi, näiteks kui inimeste palk ei tõuse võivad nad kaotada ostujõudu, tarbekaupade hinnad on kõrgemad, ning erinevad meetmed valitsuste poolt inflatsiooni ohjeldamiseks võivad kahjustada majanduskasvu. Kõige paremad kõrge inflatsiooniga on väärtusaktsiad, samas kui inflatsioon on madal siis on kasvuaktsiad parimad.Kui inflatsioon on kõrgem, kipuvad Aktsiad enamjaolt olema muutlikumad. Teoreetiliselt peaksid aktsiad pakkuma mõningast kaitset inflatsiooni eest, sest ettevõtte tulud ja kasumid peaksid koos inflatsiooniga kasvama. Kuid tegelikkus pole nii lihtne. Inflatsiooni erinev mõju aktsiatele kipub ka suurendama aktsiaturu muutlikkust ja riskipreemiat. Madalam aktsiate tootlus on ajalooliselt seotud kõrge inflatsiooniga.",
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
                                    child: Text("Ülekuumenenud majandus",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Ülekuumenenud majanduseks nimetatakse majandust, kus on majanduskasv olnud pikka aega, mille üheks tulemuseks on kõrge inflatsioon, mille on omakorda on käivitanud suurenemine tarbijate jõukuses. Ülekuumenev majandus on majandus, mis laieneb jätkusuutmatu kiirusega. Majanduse ülekuumenemise kaks peamist märki on inflatsiooni tõus ja töötute arvu suurenemine, mis jääb alla majanduse tavapärasest määrast. Majanduse ülekuumenemise põhjused ulatuvad otsast otsa.",
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
                                    child: Text("Big-cap VS Small-cap",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Big-cap ja small-cap tähendused on tihti arusaadavad nende nimede järgi, mis näitavad nende turukapitali suurust. Big-cap aktsiad, on suuremate ettevõtete aktsiad. Small-cap aktsiad on seevastu väiksemate ettevõtete aktsiad. See võib olla eksitav. Paljud inimesed arvavad, et raha saab teenida ainult suurte turukapitalidega aktsiatesse investeerides. Ja see on tõest väga kaugel, eriti tänapäeval. Kui ei saada aru, kui suur potentsiaal on small-cap aktsiatel, võib jääda ilma suurepärasest investeerimisvõimalusest. Seda, mida varasematel aastakümnetel peeti big-cap aktsiateks, võib tänapäeval pidada small-cap aktsiateks.",
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
                                    child: Text("Mis on härjaturg/pulliturg?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Härjaturud on tavaliselt siis, kui majandus on heas seisus, kasvab ja on tugev või kui majandus juba on tugev. Härjaturud käivad käsikäes tugeva majandusega ja töötute arvu vähenemisega. Tihti langevad kokku ka ettevõtete kasumi suurenemisega. Investorid on alati härjaturgude käigus väga kindlad ja kindlus kaob alles siis kui hakkab tulema karuturg. Härjaturgude ajal ostetakse rohkem aktsiad kui tavaliselt ning rahvas räägib ka sellest rohkem. See on üheks põhjuseks, miks paljud kaotavad ka nende pärast kõvasti raha. Härjaturgudel soovitame võtta ka kasumit, aga see ei tähenda kõikide aktsiate müümist.",
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
                                    child: Text("Kuidas härjatugudest kasu saada?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kõik investorid tahavad härjaturgudest väljuda suurte kasumitega. Selleks peab ka natuke vaeva nägema. Esiteks tuleb osta aktsiaid kas karuturu lõpus või härjaturu alguses. Sellepärast ongi karuturud väga kasulikud kõigile investoritele. Alati võib ka jätkata aktsiate ostmisega härjaturus. Kindlasti on mõistlik kasutada ära ka “Dollar-cost averaging”. Teiseks tuleb müüa aktsiad võimalikult lähedal tipule. Seda on küll lihtne öelda, aga raske teha. Kõige tähtsam on see, et sa ei ostaks korraga täpselt tipus. Seda viga kipuvad paljud kahjuks tegema. See on viinud paljud selleni, et nad ei investeeri enam üldse ja jäävad ilma suurtest kasumitest.",
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
                        count: 24,
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