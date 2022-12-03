import 'package:flutter/material.dart';
import 'package:flutter_carousel_slider/carousel_slider.dart';
import 'package:flutter_carousel_slider/carousel_slider_indicators.dart';
import 'package:flutter_carousel_slider/carousel_slider_transforms.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:slide_to_act/slide_to_act.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oigev2/AktsiadFolder/Aktsiad.dart';
import 'package:studenx_oigev2/Music/MyMusicPlayer.dart';
import 'package:studenx_oigev2/ToDo/TodoMain.dart';
import 'package:lottie/lottie.dart';
import 'dart:math' as math;

import 'package:studenx_oigev2/pages/socials.dart';

class Tase1Teadmised extends StatefulWidget {
  const Tase1Teadmised({Key? key}) : super(key: key);

  @override
  State<Tase1Teadmised> createState() => _Tase1TeadmisedState();
}

class _Tase1TeadmisedState extends State<Tase1Teadmised> {

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
                        child: Text("algteadmised",
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
                                    child: Text("Mis on aktsiad?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Aktsiad on investeering. See tähendab, et teil on mingi osa ettevõttes, mille aktsia omamine teile andis. Põhimõtteliselt on aktsiad võimalus kuidas teenida raha, kuid mitte ilma riskideta. Kuid aktsiad on kindlasti turvalisemad kui krüpto. See on üks viisidest, mille abil paigutavad inimesed oma raha maailma parimatesse ja suurematesse ettevõtetesse. Ettevõtete jaoks on aktsiad raha kogumise meetod. Sellega rahastatakse arendustegevust ning esemete ja erinevate vahendite valmistamist. Sel hetkel, kui ostate ettevõtte aktsiaid, siis ka tegelikult ostate sellest ettevõttest väikese osa. Aktsiaid on väga palju, erinevatest riikides, eri mandritelt ja eri tüüpi firmadest. Iga aktsia hind on erinev. Aktsiate hinnad enamasti üksteist ei mõjuta. Kuid kui aktsiaturul hakkavad paljud langema, mõjutab see ka teisi mingil määral.",
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
                                    child: Text("Miks aktsiaid pakutakse?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Ettevõtted pakuvad oma aktsiaid  äritegevuses raha kogumiseks. Seejärel kasutavad nad seda raha erinevate vahendite jaoks: ettevõte võib kasutada kogutud raha uute esemete või toodete tootmiseks, oma ettevõtte laiendamiseks või maksude maksmiseks. Ettevõtted hakkavad tavaliselt oma aktsiatest osa võtma tsükli kaudu. Aktsiate esmamüüki nimetatakse ka IPO-ks. Kui ettevõtte aktsia on väärtpaberibörsil, siis saavad investorid seda osta ja müüa. Kui otsustate aktsiat osta, ei saa te seda sageli mitte tegelikult ettevõttelt, vaid mõnelt teiselt investorilt, kes peab aktsiaid müüma. Samasugune asi juhtub ka kui teie otsustate müüa oma aktsiat, te ei müü mitte neid ettevõttele kelle omad need on, vaid teisele inimesele.",
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
                                    child: Text("Miks omada aktsiaid?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Peamine põhjuks miks investorid omavad aktsiaid, on oma alginvesteeringust kasumi saamine. See tulu tuleb enamasti kahel võimalikul viisil: Kui aktsia hind tõuseb saate aktsiad kasu saamiseks müüa, kui soovite. Osad aktsiad maksavad dividende. Mitte kõik aktsiad ei maksa neid, kuigi paljud seda teevad. Dividendid on osamaksed investoritele ettevõtte sissetulekust ja neid makstakse tavaliselt kord kvartalis. Pikaajaliselt on tüüpiline aastane väärtpaberibörsi ehk aktsia börsi tootlus 10%; Tavaliselt langeb see pärast laienemisega kohanemist 7% ja 8% vahemikku. See tähendab, et 30 aastat tagasi 1000 dollari väärtuses aktsiatesse paigutatud raha oleks täna väärt üle 8000 dollari. Oluline on arvestada, et see keskmine protsent on tulnud kõigi S&P 500 aktsiate, mis hõlmab umbes 500 USA suurimat ettevõtet (juttu järgmises tasemes). Paraku ei tähenda see seda, et iga aktsia oleks sellist tootlust avaldanud – mõned avaldasid oluliselt vähem või isegi läksid peaaegu täielikult nulli. Teised avaldasid palju paremat saaki. Just sellisel põhjusel on mõistlik osta aktsiaid mitte ainult ühest ettevõttest, vaid pigem luua tasakaalustatud portfell. Kui luua tasakaalustatud ja mitmekesine portfell, on suurem tõenäosus kasumile. Enamikul investoritel on lihtaktsia. Lihtaktsiaga kaasnevad hääletusõigused ja need võivad anda dividende. See, mis teile kuulub, on põhimõtteliselt osa ettevõtte hüvedest ja tuleks öelda, et ka selle õnnetustest. Eesmärk on ilmselgelt see, et ettevõtte väärtus ja seejärel ka selle aktsia väärtus tõuseks. Kuigi üldiselt on aktsiatel ajaloolisel taustal suured tootlused, tuleb siiski mainida, et aktsiatega kaasneb ka risk: On täiesti võimalik, aktsia teie portfoolios langeb allapoole ostuhinda. Aktsia hinnad kõiguvad erinevatel põhjustel, alates üldiselt ärisektori ebastabiilsusest kuni, kaubatõrgeteni. Mõned investorid hoiavad aktsiaid väga pikka aega, ilma pideva kauplemiseta, ja pidades silmas, et nad näevad, et nende aktsiad on pikemas perspektiivis paremad, ja tänu sellele tõuseb nende portfell pikas perspektiivis. Need investorid tihti omavad aktsiafonde, mis hõlmavad mitmeid aktsiad ühes fondis. Lähemalt fondidest järgmises peatükkides.",
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
                                    child: Text("Kust osta aktsiaid?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Aktsiaid saab osta paljudest kohtadest. Eesti (nt.Swedbank,SEB,LHV,Coop Pank,Inbank,Luminor) ja välismaa kohtadest (Revolut,Vanguard,Robinhood,Webull,Goldman Sachs,JPMorgan Chase,Barclays,Deutsche Bank,Etoro). Meie soovitame osta selle riigi asutusest kust teie elate. Kui osta näiteks USA aktsiaid Eestist, siis sellega kaasneb ka teenustasu mis on hulga suurem kui Eesti aktsiatel.",
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
                                    child: Text("Milliseid aktsiaid osta?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Me soovitaksime osta just neid aktsiaid(kõik aktsiad on eesti omad) - (LHV,Coop,Enefit, Tallinna Kaubamaja,Merko Ehitus,Tallink) Näiteks Enefiti soovitaksime osta, sest elektrit on kõigil vaja ning roheenergia on maailmas hetkel ja ilmselt ka tulevikus väga aktuaalne teema.NB! Alati ise mõelda aktsiate ostmisel, meie pole finantseksperdid ning ei see ole finantsiline nõu! ",
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
                                    child: Text("Pikaajaline investeerimine.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Pikaajaline investeerimisstrateegia eeldab investeeringute hoidmist kauem kui terve aasta. Pikaajalist lähenemist kasutavatel inimestel peaks olema distsipliini ja kannatlikkust. Selle põhjuseks on asjaolu, et investorid peavad suutma võtta teatud riski, kui nad ootavad kõrgemat kasu. Aktsiatesse investeerimine ja nende hoidmine on üks parimaid viise rikkuse kasvatamiseks pikemas perspektiivis. Näiteks oli S&P 500 aasta kahjum ainult 11 aasta jooksul 47 aastast 1975–2022, mis näitab, et aktsiaturg teenib tulu palju sagedamini kui mitte.",
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
                                    child: Text("Kui kaua peate aktsiat hoidma, et seda pikaajaliseks pidada?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Pikaajaline investeerimisstrateegia eeldab investeeringute hoidmist kauem kui terve aasta. Pikaajalist lähenemist kasutavatel inimestel peaks olema distsipliini ja kannatlikkust. Selle põhjuseks on asjaolu, et investorid peavad suutma võtta teatud riski, kui nad ootavad kõrgemat kasu. Aktsiatesse investeerimine ja nende hoidmine on üks parimaid viise rikkuse kasvatamiseks pikemas perspektiivis. Näiteks oli S&P 500 aasta kahjum ainult 11 aasta jooksul 47 aastast 1975–2022, mis näitab, et aktsiaturg teenib tulu palju sagedamini kui mitte.",
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
                                    child: Text("Olge kannatlikud hinnamuutuste käigus.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Aktsiaid peetakse pikaajalisteks investeeringuteks. See on osaliselt tingitud sellest, et pole ebatavaline, et aktsiate väärtus langeb lühema aja jooksul 10–20% või rohkem. Investoritel on võimalus lihtsalt olla kannatlik ja kannatada ära halvad ajad ning olla ka rahulik isegi kui aktsiad tõusevad palju. Vaadates tagasi aktsiaturgude tootlusele alates 1920. aastatest, on üksikisikud harva kaotanud raha, investeerides 20-aastase perioodi jooksul S&P 500 indeksisse. Isegi kui võtta arvesse hiiglaslike tagasilööke, nagu suur depressioon, must esmaspäev, tehnoloogiamull ja finantskriis, oleksid investorid ikkagi saanud kasu, kui nad oleks investeerinud S&P 500 indeksisse ja hoidnud seda 20 aastat ilma müümata. Kuigi varasemad tulemused ei garanteeri kindlat tulu, näitab see siiski, et pikaajaline aktsiatesse investeerimine annab üldiselt positiivse tulemuse, kui anda sellele piisavalt aega.",
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
                                    child: Text("Parem pikaajaline tulu.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Mõiste varaklass viitab konkreetsele investeeringu kategooriale. Kuid millised varaklassid on pikaajalistele investoritele parimad? Kui vaatame mitme aastakümne varaklasside tootlust, siis leiame, et aktsiad on üldiselt ületanud peaaegu kõiki teisi varaklasse. S&P 500 tootlus oli aastatel 1928–2021 keskmiselt 11,82% aastas. Arenevatel turgudel on aktsiaturgudel ühed suurimad tootluspotentsiaalid, kuid neil on ka kõrgeim risk. See klass teenis ajalooliselt kõrget keskmist aastatootlust, kuid lühiajalised kõikumised on mõjutanud nende tootlust. Näiteks oli MSCI arenevate turgude indeksi 10-aastane aastapõhine tootlus 29. aprilli 2022 seisuga 2,89%. Väikesed ja suured ettevõtted on toonud ka keskmisest suuremat tulu. Näiteks Russell 2000 indeksi, mis mõõdab 2000 väikeettevõtte tootlust, 10 aasta tootlus oli 10,15%.",
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
                                    child: Text("Investorid on väga kärsitud",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kui investorid oleksid ausad, siis nad kindlasti pole nii rahulikud ja ratsionaalsed, kui väidetakse. Tegelikult investorite käitumise üks suurim ja ka loomulikum viga on olla emotsionaalne. Tihti inimesed väidavad, et nad on pikaajalised investorid, kuni aktsiaturg hakkab langema, seejärel nad võtavad oma rahad välja, et vältida potentsiaalset suurt kahjumit. Paljud investorid ei suuda peale suur tagasi lööki aktsiatesse investeerida. Tihti kipuvad nad uuesti ostma alles siis, kui suurem osa kasust on juba saavutatud. Seda tüüpi kõrgelt ostmise ja madalalt müümise käitumine kipub halvama investorite tulu.",
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
                                    child: Text("Kärsitu olemise negatiivsed küljed.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Investorid kardavad, et tegid vale otsuse. Inimesed ei usalda sageli oma otsust ning kogu aeg on piiri peal kas müüa või mitte. Inimesed kipuvad langema lõksu, et nad kahetsevad aktsiate hoidmist ja kaotavad palju rohkem raha, kuna nende väärtus langeb, mistõttu nad müüvad need selle hirmu leevendamiseks maha. Pessimismi tunne, kui asjad muutuvad. Suurte tõusude ajal valitseb optimism, kuid kui asjad lähevad hapuks, on olukord vastupidine.Oluline on meeles pidada, et häired aktsia turul on sageli lühiajalised ja asjad pöörduvad suure tõenäosusega. Investorid, kes pööravad aktsiaturule liiga palju tähelepanu, kipuvad oma eduvõimalusi nässu keerama, kuigi ülimalt lihtne pikaajaline osta ja hoia strateegia oleks andnud palju paremaid tulemusi.",
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
                                    child: Text("Mida osta pikajaliseks hoidmiseks?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Valige aktsiafondid (juttu järgmises tasemes). Need jälgivad konkreetseid indekseid, nagu S&P 500 või Russell 1000, ja kauplevad nagu aktsiad. Kuid erinevalt aktsiatest on need fondid madalama hinnaga ja te ei pea valima konkreetseid ettevõtteid, kuhu investeerida. Fondid annavad teile jälgitavate indeksitega sarnast tulu. Kaaluge ka dividende maksvaid aktsiaid. Seda tüüpi aktsiad võivad aidata teie portfellile väärtust lisada, eriti kui dividendid uuesti investeeritakse. Dividendid on ettevõtte kasum, mida jaotavad enamasti edukad ettevõtted. Need on tavaliselt blue chip või kaitseaktsiad. Kaitse aktsiad on ettevõtted, millel läheb hästi sõltumata majanduse toimimisest või aktsiaturu langusest. Tihti võib olla ahvatlev need dividendi rahad alles jätta, siiski on väga hea põhjus, miks peaksite dividendid uuesti investeerima ettevõtetesse, kes neid tegelikult maksavad. Mida rohkem aktsiaid sa omad seda rohkem sa dividende ka saad.",
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
                                    child: Text("Dollar-Cost Averaging",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Investeerimine on keeruline. Isegi kogenud investorid, kes püüavad ajastada turgu, võivad osta valel hetkel. “Dollar-cost averaging” on strateegia, mis muudab ostud automaatseks muutes ebakindlatel aegadel aktsiate ostmise lihtsamaks. Samuti aitab see investoritel järjepidevalt investeerida. “Dollar-cost averaging” tähendab seda, et sa investeerid endale sobiva rahasumma kindlate ajavahemike järel teatud aja jooksul, sõltumata hinnast. Näiteks iga kahe nädala tagant investeerid S&P 500-sse 100 eurot. Kasutades seda strateegiat, võivad investorid vähendada hindade kõikumise mõju oma portfellile ja alandada oma keskmist aktsia ostmise hinda. Suurim pluss selle strateegiaga on see, et see eemaldab vajaduse ajastada turgu(näiteks millal osta kindlat aktsiat). Sellepärast teevad seda enamus targad investorid, kelle hulka saad ka sina kuuluda. See eemaldab ka teie investeerimisest emotsioonid ja ei lase teil oma portfelli tootlust potentsiaalselt kahjustada.",
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
                                    child: Text("Alusta praegu investeerimisega.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kunagi ei ole aktsiaturule hüppamiseks ning sinna investeerimiseks täpselt perfektset aega. Keegi ei tea mitte kunagi 100% kas aktsiad langevad, või tõusevad. Ja kui keegi peaks niimoodi väitma, ärge kuulake teda. Seetõttu pole kindlat aega, millal peaks hakkama investeerima. Peale kõige selle on investeerimine pikaajaline tegevus. Pikas perspektiivis pole vahet millal sa ostad oma esimesed aktsiad. Investeerimine pole ka ainult lõpmatuseni selle õppimine, ühes hetkel tuleb algust ka teha. Mida varem sa alustad, seda parem.  Muidugi alustada pole mõtet üüratute summadega. Alusta vaikselt ja ajapikku suurenda raha hulka, mida investeerid.",
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
                                    child: Text("Väldi lühiajalist investeerimist",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Uuringud näitavad, et enamus lühiajalisi investoreid kaotab alati raha. Näiteks “Day trader-id”. Tihti on lühiajalistel investoritel ulmelised lootused oma raha kasvatamise osas. Kindlasti peavad uued investorid teadma, et aktsiate sagedane ostmine ja müümine võib minna kalliks. Sama kehtib ka krüptoga. See tekitab kõvasti makse, ja seda saa kindlasti ei taha endale lisakuluks. Lühiajalisi investeeringutel tuleb arvestada sellega, et suure võimalusega seda raha enam varsti pole.",
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
                                    child: Text("Ole järjepidev!",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kui tahete tõesti jõuda rahalise vabaduseni peate olema järjepidevad. Peate arvestama sellega, et kui korra investeerite näiteks 1000 eurot ei jõua te kunagi rahalise vabaduseni. Kui tahate tõesti selleni jõuda, peate lisama oma investeeringutele raha juurde pidevalt. Selleks tehke kindlasti plaan, et tee oma algsetest kavatsustest kõrvale ei kalduks, peale miinusesse langust. Selle asemel, et osta ebavajalike asju, pigem investeerige see raha. Ja kui teil niisama seisab raha, investeerige see ka, raha kaotab seistes väärtust. Kõige lihtsam on oma raha investeerida fondidesse, kus ei pea ise midagi aktiivselt tegema. Sellest täpsemalt järgmises peatükis. Ja kindlasti ärge laske oma emotsioonidel võtta võimu.",
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
                                    child: Text("Kolm asja mida teha, ennem aktsia ostmist",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Ennem kui ostad mingi ettevõtte aktsiat, uuri nende kohta. Mida nad teevad, kus nad seda teevad ja kuidas nad seda teevad. Vaata ettevõtte hinna ja kasumi suhet. Kui aktsia hind on väga kõrge, aga kasum seda välja ei näita, pole see aktsia ilmselt ostmist väärt. Üks hea koht, kust leida kõik vajalik on äpp nimega “Simply Wall St”. Kirjuta sinna aktsia nimi, mida soovid osta ja kohe näed kõiki vajalike andmeid sellega kohta. Kui kas tahad nii öelda oma raha kuhugi “parkida”, pane see kindlasti dividendi maksvatesse aktsiatesse.",
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
                        count: 17,
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