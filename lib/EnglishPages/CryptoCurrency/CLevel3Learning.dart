import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oigev2/EnglishPages/CryptoCurrency/CryptoCurrency.dart';

class CLevel3Learning extends StatefulWidget {
  const CLevel3Learning({Key? key}) : super(key: key);

  @override
  State<CLevel3Learning> createState() => _CLevel3LearningState();
}

class _CLevel3LearningState extends State<CLevel3Learning> {
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
                        child: Text("advanced",
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
                                    child: Text("NFT is a very popular word at the moment and many people are talking about it. NFT is unique and unforgeable. NFT can be an image, video, audio file, etc. Most NFTs are in the form of an image. They can be bought with crypto and are also a very good source of money if you are lucky. They are easy to buy, but they are very risky. You send crypto to your wallet and then either buy or mint. Minting is buying before they go on public sale to everyone. Most of the time they are sold relatively cheap compared to the price they will eventually rise to. However, these minting prices can be high because later the NFT loses a huge amount of value. In our opinion, NFTs are the riskiest investment of all, because there are a lot of scams with them and there are many rug pulls, but if you invest correctly, the profit can be huge. The most well-known NFTs are either ETH or SOL NFTs. These are the 2 main cryptos. At first there was only ETH, but this year SOL NFTs have started gaining popularity. Usually there are either 10,000; 7.777 or 8.888 special NFTs. The most famous figures on NFTs are apes. The biggest NFT collections are Bored Ape Yacht Club, Cryptopunks, Okay Bears and DeGods. The biggest NFTs are very often tried to follow. There have been Okay Bulls and Invisible DeGods, all failed attempts at monetization. NFTs are the last thing we recommend investing in before we recommend crypto, stocks and funds, and only then can there be NFTs. Making money with them is difficult and requires a lot of knowledge, and you need to be very good at identifying rug pulls and scams. The main NFT marketplaces are OpenSea and Magic Eden. Their homepages also talk about NFTs. NFT minting is the biggest money making opportunity, but it is extremely difficult to get your hands on these NFTs because tens of thousands of people are trying to get the most popular NFTs. Our recommendation is to try to mint and then sell at a high price if you successfully mint. We do not recommend HODLing them, because we have seen how prices fall below the mint price within days.",
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
                                    child: Text("Mining",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("As we mentioned before, crypto is created by mining. Mining requires a capable computer. Theoretically, every person can do it. The process is simple, you use the program to mine the chosen crypto and that's it. In reality, for the majority of people, mining does not produce much, if any, profit. For this you need a good computer or, for some coins, a special mining computer for that coin. They are expensive, the prices are a few thousand euros and more, just to get yourself a minimally capable computer. In addition, it has a huge cost of electricity and with the current price of electricity, these bills are going to be ridiculously expensive. Due to this recognition, it is harder to get coins. Not to mention that graphics card prices have skyrocketed. The graphics card is the most important thing about this computer, and the graphics cards that used to cost 300-400 euros have now doubled or tripled. We do not recommend mining at the moment.",
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
                                    child: Text("How to find a good crypto.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("In our opinion, a good crypto is a crypto that has the potential to go up, that is secure and has some kind of plan behind it. Let's discuss these points now. A potential crypto should be created for a reason and should be a little known or talked about. The crypto may also have a cool name or a story behind it. Safe- is created by some more or less well-known people, he is not just some 21-year-old David from Canada, but that he still has some financial education, etc. An insecure crypto is mostly a rug pull. A rug pull is a crypto whose plan is to get the price up and then abandon it and run away with the money. One very good rug pull was SquidGameCoin, which was created after the very popular TV series Squid Game at the time. Unfortunately, the idea was brilliant and several million euros were earned from it. The crypto could also have a plan behind it , that, for example, they are planning to make their own exchange with this crypto or something like that. Also called the Roadmap, it outlines the plans for this crypto. We think it would also be useful to monitor social media to find such cryptos. Twitter is a very good place, but there are also all kinds of shit and memecoins.",
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
                                    child: Text("What is the environmental impact of cryptocurrency?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Crypto has one very big problem that many investors don't pay attention to. Crypto mining is very energy intensive. Although not all cryptos are mined, many still use this method. Among them also Bitcoin and previously also Ethereum. One might question why mining is needed at all. Namely, this is an extremely important function. It is used to confirm transactions without third parties, such as without banks, and also provides security. Because this process is so energy-intensive, it's pretty bad for the environment. Most of the mining takes place in the USA and China. A particularly bad fact is that China produces much of its electricity from coal and crude oil. In addition to consuming a lot of energy, it also creates a lot of electronic waste (for example, old motherboards, graphics cards, etc.). This is the reason why mining is not environmentally friendly.",
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
                                    child: Text("What is cbdc?(Central Bank Digital Currency)",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("The wider adoption and development of crypto and blockchain is fueling interest in cash-free and digital currencies. That's why governments around the world are exploring how to benefit from it. One way would be to use them as digital currencies that can be used to pay (Countries with very high inflation are most interested in them). If adopted, they would have the same support and faith from governments as regular fiat money. In other words, they would be legal tender. There are several countries that have already adopted them and many are developing them. Among them, for example, Nigeria and the Bahamas. The biggest difference with regular cryptocurrencies would be that it would probably not be possible to anonymize transactions.",
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
                                    child: Text("What is blockchain?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Blockchain is a type of shared database. It differs from typical databases in the way it stores its information. Namely, blockchains store data in blocks that are linked together using cryptography. For example, when new data arrives, it is inserted into a new block. If the block is full of data, it is chained to the previous block. This makes the data chained according to the time it appeared. Different types of data can be stored on the blockchain. Currently, the most common use is to store transactions. With Bitcoin, it is used in a decentralized manner. This is done in such a way that no single group or individual has sole control over it, but control is maintained by all users together.",
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
                                    child: Text("What is Decentralized Finance (DeFi)",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Decentralized finance is a rapidly developing financial technology based on the same technology as crypto. Decentralized finance eliminates the fees you have to pay to banks and all kinds of other financial companies during the payment process. They keep the money in a digital wallet where you can transfer money in minutes. The only thing you need is an internet connection and a smart device (for example, a phone). Unfortunately, there are still many issues that limit its wider use and potential.",
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
                                    child: Text("What is a White paper?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("A white paper is an information document issued by a company. Its purpose is to promote and highlight the objectives and features of the product/solution offered or to be offered in order to influence the decisions of investors. Facts presented in white papers are often supported by facts from reliable sources. There are three types of White papers. It is wise to read the white paper of the crypto you plan to buy. This will give you very useful information. If the crypto you're considering buying doesn't have a white paper, that's a bad sign and probably not a smart idea to buy.",
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