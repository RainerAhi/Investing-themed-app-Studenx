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
import 'package:studenx_oigev2/AktsiadFolder/Aktsiad.dart';
import 'package:studenx_oigev2/ToDo/TodoMain.dart';

class Tase2Teadmised extends StatefulWidget {
  const Tase2Teadmised({Key? key}) : super(key: key);

  @override
  State<Tase2Teadmised> createState() => _Tase2TeadmisedState();
}

class _Tase2TeadmisedState extends State<Tase2Teadmised> {

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
                        child: Text("aktsiafondid",
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
                                    child: Text("Indeksfond vs. ETF: ülevaade",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("ETF-e peetakse paindlikumateks ja mugavamateks kui enamikku investeerimisfonde. ETF-idega saab kaubelda lihtsamini kui indeksifondide ja traditsiooniliste investeerimisfondidega, sarnaselt sellele, kuidas börsil kaubeldakse tavaliselt aktsiatega.",
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
                                    child: Text("Mis on ETF?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("ETF on teatud tüüpi fond, mis hoiab mitut vara, mitte ei ole üks ettevõte. ETF võib omada sadu või isegi tuhandeid aktsiaid erinevates tööstusharudes või omada kindla sektori ettevõtteid. Kuna ETF-is on mitu vara, on need mitmekesistamiseks head valikud. Mõned fondid keskenduvad ainult USA ettevõtetele, samas kui teistel on ettevõtteid erinevatelt mandritelt. Seega võivad ETF-id sisaldada mitut tüüpi varasi, sealhulgas aktsiaid, võlakirju ja erinevate varade segu(aktsiad ja võlakirjad jne). ETF on väärtpaber. See tähendab, et sellel on hind nagu aktsial, mis teeb võimalikuks seda börsidel lihtsalt osta ja müüa.",
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
                                    child: Text("Millele pöörata tähelepanu?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kauplemismaht mingi aja vältel teeb võimalikuks võrrelda erinevate fondide tuntust. Lihtsam on kaubelda selle fondiga, millel on suurem kauplemismaht. Kulusuhte protsendist oleneb, kui palju teie investeeringust läheb halduskuludesse. Mida väiksem seda parem. Kuigi on ahvatlev otsida alati madalaima kulusuhtega fonde, on mõnikord kallimatel fondidel (nt aktiivselt hallatavatel ETF-idel) parem tootlus, et kõrgem kulusuhe tasub end ära. Tavaline viis ETF-ide võrdlemiseks on varasema tootluse võrdlemine. Kindlasti tuleb pidada meeles, et see ei näita tulevast tootlust. Erinevate fondide haldajad kasutavad ka sõelumisriiste, võimaldades leida fondiportfelli parimad aktsiad.",
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
                                    child: Text("Aktsia fondid.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Aktsia ETF-id koosnevad paljudest aktsiatest, et jälgida ühte kindlat sektorit. Eesmärk on pakkuda mitmekülgset kokkupuudet ühele tööstusharule, mis hõlmab hästi toimivaid ja kasvupotentsiaaliga uusi tulijaid. Näiteks võib aktsia-ETF jälgida autotööstuse või tehnoloogiatööstuse aktsiaid.",
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
                                    child: Text("Dividendi fondid.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kuigi ETF-id annavad investoritele võimaluse aktsiahindade tõustes kasu saada, saavad nad kasu ka dividende maksvatest ettevõtetest. Dividendid on osa kasumist, mille ettevõtted maksavad investoritele nende aktsiate hoidmise eest. ETF-i omavatel investoritel on õigus osale kasumist, nagu makstud dividendid.",
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
                                    child: Text("Võlakirjade fondid.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Võlakirjade ETF-e kasutatakse investoritele regulaarse kasumi pakkumiseks. Nende kasum sõltub võlakirjade tootlusest. Need võivad hõlmata valitsuse võlakirju(Näiteks Saksamaa riigivõlakirjad) ja ettevõtete võlakirju.",
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
                                    child: Text("Tooraine fondid.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Nagu nimigi ütleb, investeerivad tooraine-ETFid toorainetesse. Näiteks naftasse või kulda. Tooraine ETF-id pakuvad mitmeid eeliseid. Esiteks tooraine ETF-id aitavad vähendada majanduslanguse mõju sinu portfellile, ning nad hajutavad sinu portfelli. Teiseks oleks kauba füüsiline omamine palju kallim, kui tooraine ETF-i omamine.",
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
                                    child: Text("Fondide kulud.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("ETF-e ostes peab arvestama sellega, et nendega kaasnevad kulud. ETF-ide haldajad peavad ka mingit viisi raha teenima. Sellest tulevadki iga aastased kulud, mida pead maksma neile. Fondide ostmisel tuleb sellega arvestada, sa tahad alati osta seda millel on kulukuse protsent võimalikult väike, nagu näiteks 0,09%. Maksimum piiri võiks olla 0,5%.",
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
                                    child: Text("Milline on perfektne ETF-ide portfoolio?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Tänapäeval on suhteliselt raske teha head ETF-ide portfooliot ilma õigete teadmistega. Selle põhjuseks on väga suur ja lai valik erinevaid fonde. Toome välja milline võiks olla üks hea portfoolio. Kindlasti on vaja fonde, mis keskenduvad konkreetsele sektorile. Nagu autotööstus, tervishoid või finantsteenused. Pole mõtet osta nii biotehnoloogia ETF-e kui ka meditsiiniseadmete ETF-e, see poleks tõeline hajutamine. Kindla sektori valimises tuleb teha arvestades seda, kas tahad suurt kasvu potentsiaali koos suuremate riskidega või võimalikult järjepidevat kasvu, mis pole nii suur, kuid on väiksema riskiga. Igas heas portfoolios on ka rahvusvahelisi fonde, mille hulka kuuluvad piirkonnad nii arenevatest kui ka arenenud turgudest. Rahvusvahelised fondid võivad jälgida ka indeksit, mis investeerib kindlasse riiki(Näiteks Saksamaa või Hiina). Ja viimaseks on ühes heas portfoolios vaja ka tooraine fonde. Näiteks on fonde mis jälgivad kulla või nafta hinda.",
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
                                    child: Text("ETF-ide kokkuvõte",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Börsil kaubeldavad fondid ehk ETF-id on kulutõhus viis piiratud eelarvega paljude aktsiatega kokku puutumiseks. Üksikute aktsiate ostmise asemel saab investor lihtsalt osta fondi aktsiaid, mis on suunatud esinduslikule läbilõikele laiemast turust. Siiski tuleb ETF-i investeerimisel silmas pidada mõningaid lisakulutusi.",
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
                                    child: Text("Mis on S&P 500 indeks?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("S&P 500 index ehk Standard & Poor's 500 index, on indeks mis hõlmab 500 USA suurimat börsil kaubeldavat ettevõtet. See ei ole täpne nimekiri USA 500 suurimast ettevõttest market capi järgi, kuna indeks sisaldab lisaks market capile ka muid kriteeriume. Siiski peetakse S&P 500 indeksit üheks parimaks USA aktsiate ja terve USA majanduse tervise näitajaks.",
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
                                    child: Text("Kuidas koostatakse S&P 500 indeksi?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("S&P 500 kasutab turukapitali arvutamisel ainult vabalt kaubeldavaid USA aktsiaid. See tähendab neid ettevõtete aktsiad, millega saab avalikkus kaubelda. Et saada indeksi väärtus, liidetakse kokku iga ettevõtte turukapital ja jagatakse tulemus jagajaga. S&P 500 ei avalda avalikkusele teavet, mis on jagaja. See on konfidentsiaalne teave. Siiski saame arvutada ettevõtte osakaalu indeksis, mis annab investoritele väärtuslikku teavet. Näiteks juhul kui aktsia, mida S&P 500 hoiab, langeb või tõuseb saame aimu, kui suur mõju on sellel tervele indeksile. Näiteks 10% kaaluga ettevõtte hinna muutusel on suurem mõju indeksile, kui  2% kaaluga ettevõtte hinna muutus.",
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
                                    child: Text("Kes kvalifitseeruvad S&P 500 indeksisse?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("S&P 500 indeksisse kuulumiseks peab ettevõte olema avalikult kaubeldav ja asuma USA-s. Samuti peab see täitma teatud nõudeid. Näiteks ettevõttel peab olema positiivne kasum nelja viimase kvartali jooksul  vähemalt 10% aktsiatest peab liikuma avalikul turul.",
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
                                    child: Text("S&P 500 vs. Nasdaq",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Nasdaq on ülemaailmne elektrooniline väärtpaberitega kauplemise koht. On mitmeid aktsiaturu indekseid, mis hõlmavad Nasdaqis kaubeldavaid aktsiaid. Kindlasti võite märgata, et S&P 500 indeksisse kuuluv aktsia võib kuuluda ka ühte või mitmesse erinevatesse Nasdaqi indeksitesse. Täiesti tavaline on see, et S&P 500 indeksisse kuuluv aktsia võib ka kuuluda ühte või mitmesse erinevasse Nasdaqi indeksisse. Nasdaqil on palju suuri ja tuntuid indekse, näiteks Nasdaq Composite Index, mida rahvasuus ja meedias nimetatakse lihtsalt Nasdaq-iks, mis sisaldab enam kui 2500 aktsiat. Veel on: Nasdaq 100 index, millesse kuuluvad 100 suurimat ja enim kaubeldavat ettevõtet. Ning ka Nasdaq Global Equity Index, kuhu kuuluvad rahvusvahelised ettevõtted.",
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
                                    child: Text("S&P 500 vs. DJIA",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Veel üks levinud USA aktsiaturu võrdlusalus on Dow Jones-i Industrial Average (DJIA). Enamasti eelistavad institutsionaalsed investorid S&P 500, tänu selle mitmekesisule. Samas kui DJIA-d on ajalooliselt seostatud jaeinvestoritega. Institutsionaalsed investorid väärtustavad rohkem S&P 500-t. Põhjuseks on see, et see sisaldab rohkem erinevatest sektoritest aktsiaid(500 aktsiat võrreldes Dow-i 30-ga). Peale selle kasutab DJIA teistsugust meetodit. DJIA on  rohkem kaldunud hinna poole, mis annab kõrgema aktsiahinnaga ettevõtetele suurema osakaalu. Jällegi kui S&P 500 on kaldunud rohkem suurema turukapitali poole, mis annab suurema turukapitaliga aktsiatele suurema protsendimäära.",
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
                                    child: Text("S&P 500 vs. Vanguard 500 fond.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Vanguard 500 on loodud jäljendama S&P 500-t, tänu millele kaldub selle hind väga vähe kõrvale. Vanguard 500 jälgib S&P 500 indeksi tootlust ja hinda, investeerides kõik ligikaudu samadesse aktsiatesse sama suure kaaluga.",
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
                                    child: Text("S&P 500 indeksi piirangud.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("S&P 500 ja teiste turukapitali poole kalduvatel indeksitel tekivad piirangud mõnikord. Need tekivad just siis kui aktsiad muutuvad ülehinnatuks. See tähendab seda, et hinnad tõusevad, kuid põhinäitajad ei tõuse(Näiteks kasum). Kui aktsial on suur kaal indeksis ja aktsia hind on ülehinnatud, muutub ka indeksi hind kallimaks ning indeks võib muutuda ise ka üle hinnatuks. Tõusev turukapital ja hind ettevõttel ei pruugi näidata tegelikku kasumi kasvu.",
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
                                    child: Text("Kuidas investeerida S&P 500-sse?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kõige lihtsam viis Eestis on osta näiteks LHV-st  fondi nimega “iShares Core S&P 500 UCITS ETF”, mis jälgib S&P 500 hinda. Või teha Vanguardi kasutaja ja osta sealt Vanguard 500 fondi. Peaasi, et sinu ostetud fond jälgiks S&P 500 hinda ja kulukusemäär oleks võimalikult väike.",
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
                                    child: Text("Mis asi on iShares?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Maailma suurimal varahaldusettevõttel BlackRock on tütarettevõte. Selleks on iShares. iShares on üks kõige tuntum ja suurim ETF-ide pakkuja terves maailmas. Nad pakuvad üle 800 ETF-i üle maailma, mis on otsast otsa ning riigist riiki. Näiteks pakuvad nad puhta energia tootjate fondi, toorainete fondi, arenevate turgude ettevõtete fondi jne. Paljusi fonde nende poolt saab osta ka Eestis, näiteks LHV-e vahendusel. Nad haldavad üle 2 triljoni dollari varasi fondides. iShares asutati aastal 2000.",
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
                        count: 18,
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