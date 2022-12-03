import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';

class CTase3Teadmised extends StatefulWidget {
  const CTase3Teadmised({Key? key}) : super(key: key);

  @override
  State<CTase3Teadmised> createState() => _CTase3TeadmisedState();
}

class _CTase3TeadmisedState extends State<CTase3Teadmised> {

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
                        child: Text("tase 3",
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
                                    child: Text("NFT",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("NFT on hetkel väga populaarne sõna ja paljud räägivad sellest. NFT on unikaalne ja võltsimatu.  NFT võib olla pilt, video, helifail, vms. Enamus NFT-d on pildi kujul. Neid saab osta krüpto eest ja need on samuti väga head rahaallikad kui sul on natuke ka õnne. Neid osta on lihtne aga nad on väga riskantsed. Sa saadad krüptot oma walletisse ja seejärel kas ostad või mintid. Mintimine on ostmine enne kui need avalikult kõigile müüki lähevad. Neid enamus ajast müüakse suhteliselt odavalt võrreldes hinnaga milleni nad lõpuks tõusevad. Samas võivad need mintimis hinnad olla kõrged, sest hiljem kaotab NFT tohutult väärtust. NFT-d on meie arvates kõige riskantsem investeering üldse, sest nendega üritatakse palju scammida ja on palju rug pulle aga kui investeerida õigesti võib olla kasum tohutu. Tuntumad NFT-d on kas ETH või SOL NFT-d. Need on 2 põhi krüptot. Alguses oli ainult ETH, kuid sellel aastal ja ka eelmisel on SOL NFT-d populaarsust hakanud koguma. Tavaliselt on kas 10,000; 7,777 või 8,888 erilist NFT-d. Tuntumad kujud NFT-de peal on ahvid. Suurimad NFT kollektsioonid on Bored Ape Yacht Club, Cryptopunks, Okay Bears ja DeGods. Suurimaid NFT-sid üritatakse väga tihti järgi teha. On olnud Okay Bulls ja Invisible DeGods, mis on olnud kõik nurja läinud katsed raha teenida. NFT-d on viimane asi millesse soovitame investeerida enne soovitame krüptot, aktsiad ja fonde ning alles, siis võib olla NFT-d. Nendega raha teenimine on raske ja nõuab palju teadmisi ning sa pead väga hästi oskama tuvastada rug pulle ja scamme. Põhi NFT müügikohad on OpenSea ja Magic Eden. Nende kodulehtedel on juttu veel NFT-dest. NFT mintimine on suurim raha teenimis võimalus, kuid neid NFT-sid kätte saada on äärmiselt raske, sest populaarsemaid NFT-sid üritavad saada kümned tuhanded inimesed. Meie soovitus on üritada mintida ja seejärel maha müüa kõrge hinnaga kui edukalt mintisid seda kutsutakse trademiseks. Neid meie ei soovita HODLida, sest oleme näinud kuidas hinnad kukuvad päevadega alla minti hinna. Ise ei soovita samuti NFT-sid luua/teha.",
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
                                    child: Text("Mining ehk kaevandamine",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Nagu me ennem mainisime, siis krüptot luuakse kaevandamise teel. kaevandamine nõuab võimekat arvutit. Sellega saab teoreetiliselt tegeleda iga inimene. Protsess on lihtne kasutad programmi, et valitud krüptot kaevandada ja ongi kõik. Tegelikkuses enamus inimestele ei tooda kaevandamine eriti suurt kasumit kui üldse. Selleks on sul vaja head arvutit või osade coinide jaoks spetsiaalset selle coini kaevandamise arvutit. Need on kallid, hinnad on paar tuhat ja rohkem, et saada endale lihtsalt üldse kaevandamis võimeline arvuti. Lisaks on sellel tohutu elektri kulu ja praeguse elektri hinna juures, tulevad need arved ulmeliselt kallid. Tänu sellele kaevandamise avastamisele on raskem saada coine. Rääkimata sellest, et graafikakaartide hinnad on läinud lakke. Graafikakaart on kõige tähtsam asi selle arvuti juures ja kunagised 300-400 eurosed graafikakaardid on nüüd kahe või kolme kordistunud. Meie hetkel ei soovita sellega tegeleda.",
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
                                    child: Text("Kuidas leida ,,head” krüptot.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Meie arust on hea krüpto, krüpto millel on potentsiaali tõusta, mis on turvaline ja millel on mingi plaan taga. Räägime need punktid nüüd lahti. Potentsiaalne krüpto peaks olema mingi põhjusega loodud ja ta peaks olema ka natuke tuntud või, et temast räägitakse. Tal võib ka olla ,,äge” nimi või mingi lugu taga. Turvaline nt. ta on mingite enam vähem tuntud inimeste poolt loodud, ei ole lihtsalt mingi 21-aastane David Kanadast, vaid, et tal on ikka mingi finantsiline haridus jne. Mitte turvaline krüpto on enamasti rug pull. Rug pull on krüpto mille plaan on hind üles saada ja seejärel see hüljata ning rahaga minema joosta. Üks väga hea rug pull oli SquidGameCoin mis loodi tol ajal väga populaarse seriaali ,,Squid Game” järgi. Idee oli kahjuks geniaalne ja sealt teeniti mitmeid miljoneid eurosid. Plaan võiks tal ka taga olla, et näiteks plaanitakse teha selle krüptoga oma exchange või midagi taolist. Seda kutsutakse ka Roadmapiks, seal on toodud välja plaanid selle krüptoga. Meie arvates oleks kasulik ka jälgida sotsiaal meediat, et leida selliseid krüptosid. Twitter on hea koht, kuid seal on ka hulganisti igasuguseid shit- ja memecoine. Täpsemalt võiks twitteris ja mujal sotsiaal meediates jälgida suurimaid inimesi kes on seotud krüptoga. Kuid ära kunagi osta krüptot ainult sotsiaal meedia põhjal! ",
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
                                    child: Text("Milline on krüptovaluuta keskkonnamõju?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüptol on üks väga suur probleem, millele paljud investorid ei pööra tähelepanu. Krüpto kaevandamine on väga energiakulukas. Kuigi kõiki krüptosi ei kaevandata, kasutavad seda meetodit siiski paljud. Nende hulgas ka Bitcoin ja varem ka Ethereum. Võib tekitada küsimusi, miks on üldse vaja kaevandamist. Nimelt on see üks äärmiselt tähtis funktsioon. Seda kasutatakse tehingute kinnitamiseks ilma kolmandate isikuteta, näiteks ilma pankadeta ning see tagab ka turvalisuse. Kuna see protsess on nii energiakulukas, on see keskkonnale üpris halb. Kõige suurem osa kaevandamisest toimub USA-s ja Hiinas. Eriti halb fakt on see, et Hiinas toodetakse suur osa elektrist kivisöest ja toornaftast. Lisaks suurele engria kulutamisele tekitab see ka kõvasti elektroonikajäätmeid(Näiteks vanad emaplaadid, graafikakaarid jne). See ongi põhjuseks, miks kaevandamine pole keskkonnasõbralik.",
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
                                    child: Text("Mis on cbdc?(Keskpanga digitaalne valuuta)",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüpto ja plokiahela laialdasem kasutuselevõtt ja areng tekitavad huvi sularaha vabade ja digitaalsete valuutade vastu. Sellepärast uurivad valitsused üle terve maailma, kuidas sellest kasu saada. Üheks viisiks oleks kasutada neid kui digitaalseid valuutasid, millega saab maksta(Kõige rohkem on neist huvitatud riigid, kus on inflatsioon väga kõrge). Kui need võetaks kasutusele, oleks neil samasugune toetus ja usk valitsustelt nagu tavalisel fiat-rahal. Teisisõnu oleksid nad seaduslikud maksevahendid. On mitmeid riike kes on võtnud need juba kasutusel ja paljud tegelevad nende välja arendamisega. Nende hulgas näiteks Nigeeria ja Bahama. Suurim vahe tavaliste krüptovaluutadega oleks see, et ilmselt poleks võimalik tehinguid muuta anonüümseks.",
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
                                    child: Text("Mis on plokiahel?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Plokiahel on teatud tüüpi jagatud andmebaas. See erineb tüüpilistest andmebaasidest oma teabe salvestamise poolest. Nimelt plokiahelad salvestavad andmed plokkidesse, mis on omavahel seotud krüptograafia abil. Näiteks kui saabuvad uued andmed, sisestatakse need uude plokki. Juhul kui, plokk on andmeid täis, siis aheldatakse see eelmise ploki külge. See muudab andmed aheldatuks vastavalt sellele ajale, millal nad ilmusid. Plokiahelasse saab salvestada erinevat tüüpi andmeid. Praegu on kõige levinum kasutusviis tehingute salvestamine. Bitcoiniga kasutatakse seda detsentraliseeritud viisil. Seda tehakse nii, et ühelgi rühmal või inimestel pole selle üle ainu kontrolli, vaid kontrolli säilitavad kõik kasutajad koos.",
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
                                    child: Text("Mis on detsentraliseeritud rahandus (DeFi)?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Detsentraliseeritud rahandus on kiiresti arenev finantstehnoloogia, mis põhineb samasugusel tehnoloogial nagu krüpto. Detsentraliseeritud rahandus kaotab maksmise käigus tekkivad tasud, mida pead maksma pankadele ning igasugustele muudele finantsettevõtetele. Nad hoiavad raha digitaalses rahakotis, kust saab kanda raha üle minutitega. Ainuke asi mida sul on vaja, on internetiühendus ja nutiseade(Näiteks telefon). Kahjuks on veel palju probleeme, mis piiravad selle laialdasemat kasutust ja potentsiaali.",
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
                                    child: Text("Mis on White paper?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("White paper on teabedokument, mille on välja andnud ettevõte. Selle eesmärk on reklaamida ja tõsta esile pakutava või pakkuma hakatava toote/lahenduse eesmärke ja omadusi, et mõjutada investorite otsuseid. White paper-ites esitatud fakte toetavad sageli usaldusväärsetest kohtadest faktid. On olemas kolme tüüpi White paper-id. Mõistlik on lugeda läbi selle krüpto white paper mida plaanite osta. See annab teile kõvasti kasuliku infot. Kui krüptol, mida plaanite osta pole white paper-it on see halb märk ja tõenäoliselt pole selle ostmine tark idee.",
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
                        count: 8,
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