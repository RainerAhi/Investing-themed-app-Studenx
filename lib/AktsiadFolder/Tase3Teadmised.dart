import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oige/AktsiadFolder/Aktsiad.dart';
import 'package:studenx_oige/Music/MyMusicPlayerReading.dart';
import 'package:studenx_oige/ToDo/TodoMain.dart';

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
