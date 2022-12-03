import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oigev2/EnglishPages/CryptoCurrency/CryptoCurrency.dart';

class CLevel1Learning extends StatefulWidget {
  const CLevel1Learning({Key? key}) : super(key: key);

  @override
  State<CLevel1Learning> createState() => _CLevel1LearningState();
}

class _CLevel1LearningState extends State<CLevel1Learning> {
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
                            child: CryptoCurrency(),
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
                        child: Text("the basics",
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
                                    child: Text("What is crypto?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Crypto is a currency that can be used to pay virtually. Unlike paying through a bank, you don't need to confirm your purchase with crypto through a bank or other institution. Crypto is like money, you can use it to order food, buy toys, etc. The biggest advantage of crypto is security. It is purely digital and does not currently exist and probably never will have a physical form like paper  crypto. There are a million cryptos, all with different prices. Some examples are XRP, Bitcoin, Ethereum, etc.",
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
                                    child: Text("Why you should Own Crypto?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("The biggest plus of crypto, but at the same time the biggest minus, is that there are insane daily price fluctuations. E.g. 100% ups and downs. Crypto is high risk but high reward. Let's assume that you buy a certain crypto for 100 euros. It is not unrealistic that with this one crypto it is possible to get 10,000 euros from the 100 euros, but it is quite possible that only a few cents remain from the 100 euros. In addition, it is also possible to buy NFTs, which we will talk about later. In addition, we and many others believe that crypto is the future and will be the main payment method in a couple of years.",
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
                                    child: Text("How does Crypto work?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Let's say the price of one XRP is 1 euro. You buy XRP for one hundred euros, then you get 100 XRP. If XRP rises 100% in a week, your 100 euros has now become 200 euros in just a week. Crypto prices change daily, monitoring them daily is the most important thing. Let's take another scenario, you buy one Ethereum for 1500 euros and it only goes up 10%, then you have earned 150 euros. Crypto works on Blockchain technology. Blockchain is a system for storing information in a way that makes it difficult or impossible to change, hack, or defraud the system.",
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
                                    child: Text("How are cryptocurrencies created?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Cryptocurrency units are created for mining, which involves using computer power to solve complex mathematical problems that generatecryptocurrencies. In this way, it is also possible to mine crypto for ,,free”. We will talk about it later.",
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
                                    child: Text("hodl",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Certainly, when following cryptocurrency news or watching videos, the word HODL comes across. HOD is an abbreviation of the English phrase Hold on for Dear Life. Most investors do this to some extent. Some people buy cryptocurrencies they believe in and even if it goes up 200% they still hold on and don't sell. The other part buys, rises 200% and he sells. True long-term HODLers have made incredible amounts of money this way. People bought Bitcoin for 300-400 euros in 2015 and kept it for years even when that 300-400 euros became 15,000 euros. The most successful bought 100 Bitcoins and sold at the peak of 60,000 euros and earned several million euros. The impatient ones sold at 15,000 and also made a lot of money, but certainly not as much as those who waited and sold at 60,000. At the same time, no one could have predicted that Bitcoin would rise to 15,000, not to mention 60,000, but there are also bad examples of this. 2022 was a crypto like LUNA/Terra. LUNA rose to 100 euros, its initial price was 1.2 euros, which crashed to 40 cents. But after going up to 100 euros, something happened that no one expected. It dropped to an incredible 0.0000446, which is well under one cent.",
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
                                    child: Text("Good, Safe Crypto Exchanges",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Crypto Exchanges are places where you can buy crypto. The best known are Binance, Kraken, Coinbase, Crypto.com, FTX and KuCoin. These are quite safe places to buy crypto without much risk. If you buy from an unknown crypto exchange, there is a risk that the amount of money will be taken from you and the crypto will not be given. Before you start buying crypto from somewhere, google whether someone has bought there before, whether they successfully received their crypto, etc. To avoid this, it is best to buy from the previously mentioned exchanges, but there are also places that are safe but not so well known, e.g. eToro, Change (Estonian company), Huobi, etc. There are actually many secure exchanges, but there are also some bad ones.",
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
                                    child: Text("Crypto Wallets",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("If you buy crypto, you also need to store it somewhere. It's the same with real money, you have to keep it either in a bank or in a wallet or in a safe. If you buy crypto, you can keep it in the exchange where you bought it. The point is that if someone decides to hack into that exchange, there is a chance that you will lose your crypto. It's rare, but there's always a chance. We would recommend you to use a separate wallet. The best are MetaMask, Phantom, Trust Wallet, Ledger. There are digital and there are object wallets. The vast majority are digital, which means that it is not possible to show them as an item, they are on your computer and/or phone. Ledger is an object wallet, it is not like a normal wallet that you have, it is like a memory stick and you can store your crypto in it. Some wallets can hold only one cryptocurrency, e.g. Phantom wallet, where only Solana can be stored at the moment. You can only log into these wallets with certain words, which must be entered in the correct order. Each person has different words and in a different order. These words form a recovery phrase.",
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
                                    child: Text("The most known cryptos",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Cryptos are ranked by market cap. Market cap = tradable amount of crypto x current price of crypto. E.g. Bitcoin's market cap at the time of writing is €393,420,501,019, because 20,518.54 x 19,190,693. The top 100 is well-known, but in the current market there are some cryptos that are well-known, but fell out of the top 100 due to a large price drop. In addition, there are cryptos in the top 100 that the majority hasn´t heard of. We would recommend starting with the top 50-60 cryptos because they are mostly safe and many people invest in them and believe in them. If you need to make money quickly, most of the time these cryptos are not the ones where you can make huge profits quickly. In our opinion, it is not wise to invest with a plan to make quick money. You have to be a HODLer and believe in your investments. In addition, earning a few thousand euros in a few days with crypto if you only invest a few hundred euros is like playing the lottery. This rarely happens, but if you do good research, it is possible. Now I will name the most well-known cryptos in my opinion (I use the abbreviations that cryptos have, you can find these abbreviations on e.g. CoinMarketCap): XRP,BTC,ETH,BNB,QNT,SOL,MATIC,DOT,AVAX,LINK,ATOM,XLM,CRO,HBAR, MANA,CHZ,XTZ,ADA,USDT There are missing memecoins which we will talk about later and why I didn't include them in this list.",
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
                                    child: Text("Crypto is not new and it is here to stay.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Cryptocurrencies have been in use since 2009. There are currently more than 18,000 of them. The most popular and largest of them are Bitcoin and Ethereum. Most prices can be tracked on either CoinMarketCap or CoinGecko. Around 800 billion have been invested in all cryptos worldwide, and around 4.2% of the world's population currently owns crypto (according to CoinTelegraph). This proves the fact that crypto cannot go away.",
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
                                    child: Text("Difficulties for investors.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Crypto investors have one weak spot. Namely, when some crypto starts to be talked about more than usual, everyone gets overly excited. Many are putting a lot of money into crypto without doing their research because of this. This is one of the biggest mistakes that even smart investors often make. You definitely need to find out if the crypto you are planning to invest in really has a lot of potential in your opinion and how it differs from competing cryptos. Take the time to learn about crypto.",
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
                                    child: Text("A diversified portfolio is the key to long-term success",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("As with stocks, a diversified portfolio is the key to success in crypto. There are many risks in owning only one crypto. For example, no one ever knows 100% whether a crypto will go up or go down to zero. This fact was proved very well by a crypto named LUNA which went to zero. The same applies to cryptos of the same type. You always want to have a variety of cryptos in your portfolio, from different areas. It is completely normal to have even more than 50 different cryptos.",
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