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
import 'package:studenx_oigev2/CryptoFolder/krupto.dart';
import 'package:studenx_oigev2/EnglishPages/CryptoCurrency/CryptoCurrency.dart';
import 'package:studenx_oigev2/Music/MyMusicPlayer.dart';
import 'package:studenx_oigev2/ToDo/TodoMain.dart';
import 'package:lottie/lottie.dart';
import 'dart:math' as math;

class CTase1Teadmised extends StatefulWidget {
  const CTase1Teadmised({Key? key}) : super(key: key);

  @override
  State<CTase1Teadmised> createState() => _CTase1TeadmisedState();
}

class _CTase1TeadmisedState extends State<CTase1Teadmised> {
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
                        child: Text("Krüptorahad",
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
                                    child: Text("Mis on krüpto?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüpto on valuuta, millega saab maksta virtuaalselt. Erinevalt pangakaudu maksmisest ei pea sa krüptoga oma ostmist kinnitama läbi panga või muu asutuse. Krüpto on nagu raha, sellega saab tellida toitu, osta mänguasju jne. Krüpto suurim eelis on turvalisus. See on puhtalt digitaalne ja ei ole hetkel olemas ega ka ilmselt kunagi ole füüsilist vormi nagu paberraha krüpto. Krüptosid on mustmiljon, kõik on erinevate hindadega. Mõned näited on XRP, Bitcoin, Ethereum jne.",
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
                                    child: Text("Miks omada Krüptot?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüpto suurim pluss aga samas suurim miinus on see, et toimuvad ulmelised päevalised hinna kõikumised. Nt. 100% tõusud ja langused. Krüptol on suur risk aga suur tasu. Eeldame, et sa ostad 100 euro eest teatud krüptot. Ei ole ebareaalne, et selle ühe krüptoga on võimalik saada sellest 100-st eurost 10 000 eurot aga on täiesti võimalik, et sellest 100-st eurost jääb alles paar senti. Lisaks on võimalik osta ka NFT-sid, millest räägime hiljem. Lisaks krüpto on meie ja ka paljude teiste arvates tulevik. Sellega hakatakse maksma ja asju ostma.",
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
                                    child: Text("Kuidas Krüpto toimib?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Oletame ühe XRP hind on 1 euro. Sa ostad saja euro eest XRP-d, siis sa saad 100 XRP-d. Kui XRP tõuseb 100% nädalaga, siis sinu 100-st eurost on nüüd ainult nädalaga saanud 200 eurot. Krüpto hinnad muutuvad igapäev, nende igapäevane jälgimine on kõige tähtsam asi. Võtame teise stsenaariumi sa ostad 1500 euro eest ühe Ethereumi ja see tõuseb ainult 10%, siis oled sa teeninud 150 eurot. Krüpto toimib Blockchain tehnoloogia peal. Blockchain on süsteem teabe salvestamiseks viisil, mis muudab süsteemi muutmise, häkkimise või petmise keeruliseks või võimatuks.",
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
                                    child: Text("Kuidas krüptorahasid luuakse?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüptovaluuta ühikud luuakse kaevandamise käigus, mis hõlmab arvuti võimsuse kasutamist keeruliste matemaatiliste probleemide lahendamiseks, mis tekitavad krüptorahasid. Sellel viisil on võimalik ka nn ,,tasuta” ise krüptot kaevandada, sellest räägime hiljem.",
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
                                    child: Text("HODL",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kindlasti jälgides krüptorahade uudiseid või videoid vaadates käib läbi sõna HODL. HODl on lühend ingliskeelsest lausest ,,Hold on for Dear Life”. Ehk põhimõtteliselt ,,hoia iga hinna eest”. Sellega teevad mingil määral suurem osa investoreid. Osad Inimesed ostavad krüptorahasid millesse nad usuvad ja isegi kui see tõuseb 200% nad ikka hoiavad alles ja ei müü. Teine osa ostab, tõuseb 200% ja tema müüb. Tõelised pikaajalised HODLerid on sedaviisi teeninud uskumatuid summasid. Inimesed ostsid aastal 2015 300-400 euro eest Bitcoini ning hoidsid seda aastaid isegi siis kui sellest 300-400 eurost sai 15 000 tuhat eurot. Edukamad ostsid 100 Bitcoini ning müüsid tipus 60 000 euro pealt maha ning teenisid mitmeid miljoneid eurosid. Kärsitumad müüsid maha 15 000 pealt ning teenisid samuti palju raha, kuid kindlasti mitte nii palju kui need kes ootasid ning müüsid 60 000 peal. Samas keegi osanud ette näha, et Bitcoin tõuseb 15 000 peale rääkimata 60 000 tuhandest, kuid on ka halbu näiteid sellest. 2022 oli selline krüpto nagu LUNA/Terra. Too krüpto tõusis 100 euro peale, selle alghind oli 1,2 eurot mis käis vahepeal 40 sendi peal. Kuid peale 100 euro peale tõusmist juhtus midagi mida keegi ei oodanud. See kukkus uskumatu 0,0000446 peale mis on alla kõvasti ühe sendi.",
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
                                    child: Text("Head, Turvalised Krüpto Exchanged",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüpto Exchanged on kohad kust sa saad osta krüptot. Tuntumad on Binance, Kraken, Coinbase, Crypto.com, FTX ja KuCoin. Need on on üsnagi turvalised kohad kust omale soetada krüptot, ilma suurema riskita. Kui osta kuskilt suvalisest, tundmatust krüpto exchangest, siis on risk see, et sult võetakse raha summa ära ja krüptot ei anta vastu. Enne kui kuskilt hakkad ostma krüptot, googelda kas keegi on sealt varem ostnud, kas ta sai oma krüpto edukalt kätte jne. Selle vältimiseks on kõige parem osta eelnevalt nimetatud exchangedest, kuid on ka veel kohti mis on turvalised aga mitte nii tuntud nt. eToro, Change(Eesti ettevõte), Huobi, jne. Turvalisi exchange on tegelikult palju, kuid on ka omajagu halbu.",
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
                                    child: Text("Krüpto rahakotid",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Kui sa ostad krüptot, siis pead ka seda kuskil hoidma. Sama on ju päris rahaga sa pead seda kas pangas või rahakotis või seifis hoidma. Kui sa ostad krüptot, siis sa saad seda hoida ka seal exchangeis kus sa ostsid. Asi on selles, et kui keegi otsustab häkkida sinna exchange sisse, siis on võimalus, et sa jääd oma krüptost ilma. Seda juhtub harva, kuid võimalus on alati olemas. Meie soovitaksime sul kasutada eraldi rahakotti. Parimad on MetaMask, Phantom, Trust Wallet, Ledger. On digitaalsed ja on ka esemelised rahakotid. Digitaalsed on suur enamus, see tähendab, et neid ei ole esemena võimalik näidata nad on sul arvutis ja/või telefonis. Ledger on esemeline rahakott, ta ei ole nagu tavaline rahakott mis sul on, ta on mälupulga moodi ja temas saab hoida oma krüptot. Osades rahakotides saab hoida ainult ühte krüpto valuutat nt. Phantom wallet, kus saab ainult Solanat hetkel hoida. Nendesse rahakotidesse saab ainult logida sisse teatud sõnadega, mis peavad olema sisestatud õiges järjekorras. Igal inimesel on erinevad sõnad ja erinevas järjekorras. Need sõnad moodustavad ,,recovery phrase”.",
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
                                    child: Text("Tuntumad Krüptod",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüptosid järjestatakse market capi järgi. Market cap= krüpto kaubeldav kogus x krüpto praeguse hinnaga. Nt. Bitcoini market cap kirjutamise ajal on €393,420,501,019, sest 20,518.54 x 19,190,693. Top 100 on tuntud aga praegusel turul on osad krüptod mis on tuntud, kuid välja kukkunud top 100-st suure hinna languse tõttu. Lisaks on ka top 100-s on krüptosid millest ei ole eriti keegi kuulnud. Top 50 on igale investorile enamasti teada. Meie soovitaksime alustada top 50-60 krüptodega, sest need on enamasti turvalised ja nendesse investeerivad paljud ning neisse usutakse. Kui on vaja kiiresti raha teenida, siis enamus ajast need krüptod ei ole need kus hiiglasliku kasumit teenida kiiresti. Meie arvates ei ole mõistlik investeerida selle plaaniga, et kiiresti raha teenida. Tuleb olla HODLer ja uskuda oma investeeringutesse. Lisaks krüptoga teenida paari päevaga paar tuhat eurot kui investeerid ainult paar sada eurot on nagu loterii mängimine. Seda juhtub harva aga kui teha head uurimistööd, siis on võimalus olemas.Nüüd ma nimetan tuntumad krüptod minu arvates (kasutan lühendeid mis on krüptodel, neid lühendeid leiad nt  CoinMarketCapist):XRP,BTC,ETH,BNB,QNT,SOL,MATIC,DOT,AVAX,LINK,ATOM,XLM,CRO,HBAR,MANA,CHZ,XTZ,ADA,USDT Puudu on memecoinid millest räägime hiljem ja miks ma neid ei lisanud siia listi.",
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
                                    child: Text("Krüpto pole uus ja see on siin, et jääda.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüptovaluutasi kasutatakse alates aastast 2009. Praeguseks on neid rohkem kui 18 000. Nende seast kõige populaarsemad ja suuremad on Bitcoin ja Ethereum. Enamuse hindu saab jälgida kas CoinMarketCap-ist või CoinGecko-st. Üle maailma on investeeritud kõikidesse krüptodesse umbes 800 miljardit ja umbes 4.2% maailma elanikest omab krüptot praegusel hetkel(CoinTelegraph-i andmetel). See tõestab fakti, et krüpto ei saa kuhugi kaduda.",
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
                                    child: Text("Investorite raskused",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Krüpto investoritel on üks nõrk koht. Nimelt kui mingist krüptost hakatakse rohkem rääkima kui tavaliselt, lähevad kõik üleliia elevile. Paljud paigutavad tänu sellele palju raha krüptosse, ilma oma uurimistööd tegematta. See on üks suurimaid vigasi, mille vastu eksivad ka targad investorid tihti. Peate kindlasti uurima, kas krüpto, millesse plaanite investeerida on tõesti teie arvates suure potentsiaaliga ja mille pool erineb see konkureerivatest krüptodest. Võtke aega krüpto tundmaõppimiseks.",
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
                                    child: Text("Mitmekesine portfell on pikaajalise edu võti",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Nagu ka aktsiate puhul, on ka krüpto puhul mitmekesine portfell edu võti. Ainult ühe krüpto omamisel on palju riske. Näiteks ei tea kunagi keegi 100%, kas mingi krüpto tõuseb või läheb üldse täiesti nulli. Seda fakti tõestas väga hästi krüpto nimega LUNA, mis läks nulli. See sama kehtib ka sama tüüpi krüptode kohta. Tahate alati, et teie portfoolios oleks erinevaid krüptosi, erinevatest valdkondadest. Täiesti normaalne on omada isegi üle 50. erineva krüpto.",
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
                        count: 11,
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