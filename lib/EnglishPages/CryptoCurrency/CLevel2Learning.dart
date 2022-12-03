import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:page_transition/page_transition.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:studenx_oigev2/EnglishPages/CryptoCurrency/CryptoCurrency.dart';

class CLevel2Learning extends StatefulWidget {
  const CLevel2Learning({Key? key}) : super(key: key);

  @override
  State<CLevel2Learning> createState() => _CLevel2LearningState();
}

class _CLevel2LearningState extends State<CLevel2Learning> {
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
                        child: Text("intermediate",
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
                                    child: Text("Coin Types",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Memecoins are meme-based coins. Dogecoin was created based on a famous meme, which is a dog of the Shiba Inu breed, which was called Doge on the Internet and was made popular through memes. The dog's real name is Kabosu. The largest, e.g. is Dogecoin or DOGE and Shiba Inu or SHIB. These coins do not rise like other coins. Their price is influenced by their relevance and popularity at that moment. E.g. DOGE went up when Elon Musk, one of the most popular people on the planet said Teslas could be bought on DOGE, the price immediately went up because it now had some value and use. They are not good long-term investments because unless something important happens, their price will not increase. Altcoins are all coins except Bitcoin, these coins are considered an alternative to Bitcoin. At the same time, they can also be classified as simply coins like Bitcoin. Some do not have their own Blockchain, but e.g. ETH and XRP have their own Blockchain. Stablecoins track the price of some other currency, the most common being the US Dollar. They are not great money-making opportunities, but their advantage is that their price does not fluctuate by large percentages. These coins are excellent means of payment because their price stays more or less at the same level always. They are an alternative means of payment to Bitcoin, because Bitcoin very often fluctuates by hundreds of euros. Shitcoins is a popular term for a useless or worthless coin. There are thousands of these coins. Memecoins can actually be called shitcoins, because most memecoins are worthless.",
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
                                    child: Text("Staking is when you lock up your crypto for a period of time to help support the functioning of the blockchain. In return for your crypto contribution, you earn back more crypto. This can be done in many exchanges, e.g. Kraken, Crypto.com. These lock-in periods can last up to several months. Before staking, you are usually given a percentage of 4-9, and you get more crypto of this percentage at the end of the staking period. Staking is very good for long-term investors who don't plan to sell in the near future, because they will earn more crypto all the time. Mutual talk is for people who plan to sell their crypto quickly with a profit.",
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
                                    child: Text("Bitcoin is probably the most well-known crypto out there. Most people have heard of it. Bitcoin is a very controversial thing. There are countries that have completely banned it and there are countries, e.g. El Salvador who are completely in favor of Bitcoin. Like everything, Bitcoin has its pros and cons. Bitcoin is very easily available, payments take only a few minutes and it is very easy to convert Bitcoin into money, sell it in a few clicks and you have the money. The downside is that only 21,000,000 Bitcoins exist, hence its expensive price. The anonymity of Bitcoin is considered to be a very big plus, it is impossible to find out how much Bitcoin someone has by hacking, and it is almost impossible to steal them, it would take years and in that time, these Bitcoins may no longer be there. Additionally, Bitcoin is a decentralized currency and is not regulated by a single government or bank. Undoubtedly, the biggest plus is its high yield potential. Bitcoin was under 1,000 euros in 2017, and a few years later it was 64,000 euros. Its usability is also considered a disadvantage, few companies and shops accept Bitcoin or crypto in general as a means of payment. In addition, Bitcoin payments are irreversible, they cannot be withdrawn if you entered the wrong amount, you just have to hope that the person sends back the excess amount, but this is a big risk.",
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
                                    child: Text("What is a bull market?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Bull markets are usually when the economy is in good shape, growing and strong, or when the economy is already strong. Bull markets go hand in hand with a strong economy and declining unemployment. They often coincide with the increase in company profits. Investors are always very confident during bull markets, and confidence only disappears when a bear market begins. During bull markets, more crypto is bought than usual and people talk more about it. This is one of the reasons why many people lose a lot of money because of them as well. In bull markets, we recommend taking profit as well, this does not mean selling all crypto.",
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
                                    child: Text("How to profit from a bull market?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Bull markets can see fantastical gains, we are talking about 100-200% gains in a few days or weeks. Our recommendation is to buy crypto at a low price during bear markets and then HODL and wait for a bull market. In this way, the profits can be huge. Definitely avoid buying during a bull market, at least when prices are obviously very high. Buying should be done either at the beginning of a bull market or even better during a bear market. This way you increase your profit.",
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
                                    child: Text("What is a bear market?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("A bear market refers to a perceived decline in assets, they can be over 100% or more. It is clear that there is no point in waiting for these times, but fighting back can be dangerous. During bear markets, prices drop wildly and may never recover or may not recover for a few years. This drives most investors away from both crypto and other investments.",
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
                                    child: Text("How to survive a bear market?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Bear markets are mentally challenging for any investor. But they always say that there is something positive in the bad. During bear markets, there is actually a good time to buy if you invest for the long term. Namely, if you buy at a low price and wait for the previously mentioned bull market, the profit can be insane. Another option is to basically play dead. You don't buy or sell at all during this time and you are just calm. This way, you don't risk losing your invested money if you buy crypto at a low price and it never recovers. Our recommendation is to buy the most well-known cryptos during the bear market and wait for a bull market.",
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
                                    child: Text("Fraudsters and hackers are a big problem",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Despite the fact that cryptocurrencies are theoretically difficult to steal because every transaction is recorded on the blockchain, fraud is very common. Since 2021, US residents have reported losses that have been exorbitant. Over 1 billion dollars. Scams promoted by content creators on social media turn out to be the main culprit. These scams always claim that buying them will make you fast. You always have to be careful about it. There is no such thing as get rich quick. Even more money has been lost thanks to hackers. Hackers often exploit weaknesses in crypto networks to their advantage. To this day, countries are still unsure how to respond.",
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
                                    child: Text("You can lose everything in one day",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Don't over speculate crypto. The biggest and best known crypto called Bitcoin is a pure example. Bitcoin alone has experienced eight crashes/market corrections in its lifetime. For example, in 2011, Bitcoin lost 99% of its value in one day. The same thing happened the following August when it fell 56% and then in April when Bitcoin fell 83%. There have been many more such crashes, and there are probably many more to come. Of course, the price has risen tremendously between dips, and investors who bought at the right time have made millions, if not billions. At the same time, those who have bought at the wrong time have lost a large part of their investment.",
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
                                    child: Text("Knowing the difference between a crypto coin and a token is very important for anyone who invests in them. The biggest difference is that coins run on their own independent blockchain and tokens run on an existing blockchain. In other words, tokens do not have their own blockchain. Coins are typically used as means of payment, while tokens can have a variety of uses and functions. Certainly, tokens are also much easier to create than coins.",
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