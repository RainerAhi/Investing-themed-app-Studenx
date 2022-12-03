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
import 'package:studenx_oigev2/EnglishPages/Stocks/Stocks.dart';


import '../CryptoCurrency/CryptoCurrency.dart';
import '../Home.dart';

class Level1Learning extends StatefulWidget {
  const Level1Learning({Key? key}) : super(key: key);

  @override
  State<Level1Learning> createState() => _Level1LearningState();
}

class _Level1LearningState extends State<Level1Learning> {
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
                            child: Stocks(),
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
                                    child: Text("What are stocks?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Stocks are an investment, which means you have a stake in the company that gave you the stock. Basically, stocks are a way to make money, not as safe, but not as risky as crypto. This is one of the ways that people put their money into what is likely to be the best companies on the planet. For companies, stocks are a method of raising money to fund development, items, and various tools. When you buy a company's stocks, you are actually buying an ownership stake in that company. There are many stocks, from different countries and different types of companies. The price of each stock is different. Stock prices most of the time do not affect each other.",
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
                                    child: Text("Why are stocks offered?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Companies offer their stocks to raise money in business. They then use this money for various purposes: the company may use the money raised to produce new items or products, to expand its business, or to pay taxes. Companies usually start to buy their stocks through a cycle. An initial sale of stocks is also called an IPO. When a company's stock is listed on a stock exchange, investors can buy and sell it. When you decide to buy a stock, you often get it not from the actual company, but from another investor who is selling the stock. The same thing happens when you decide to sell your stocks, you are not selling them to the company that owns them, but to another person.",
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
                                    child: Text("Why you should own stocks?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("The main reason investors own stocks is to get a return on their initial investment. This income usually comes in two possible ways: If the stock price goes up you can sell the stocks for a profit if you want. Some stocks pay dividends. Not all stocks pay them, although many do. Dividends are payments to investors of a company's earnings and are usually paid quarterly. In the long term, a typical annual stock exchange return is 10%; It usually falls between 7% and 8% after adjusting for expansion. This means that 30 years ago 1,000 dollars worth of money invested in stocks would be worth over 8,000 dollars today. It is important to note that this average percentage has come from all stocks of the S&P 500, which includes about 500 of the largest companies in the United States (we talk about that in the next level). Unfortunately, that doesn't mean that every stock posted that kind of return - some posted significantly less or even went almost to zero. Others posted much better yields. It is for this reason that it makes sense to buy stocks not only from one company, but rather to create a balanced portfolio. If you create a balanced and diversified portfolio, the probability of profit is higher. Most investors own common stock. Common stock carries voting rights and may pay dividends. What you own is basically part of the company's benefits, and it should be said, its misfortunes as well. The goal, obviously, is for the company's value, and then its stock, to rise. Even though stocks generally have great historical returns, it should be noted that stocks also carry risk: It is entirely possible that a stock in your portfolio will fall below the purchase price. Stock prices fluctuate for a variety of reasons, from general instability in the business sector to commodity failures. Some investors hold stocks for very long periods of time, without constant trading, and with the understanding that they see that their stocks outperform in the long run and their portfolios will rise over the long term as a result. These investors often own funds that include several stocks in one fund. More about funds in the next level.",
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
                                    child: Text("Which stocks to buy?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("We would recommend buying just these stocks (all stocks are Estonian) - LHV, Coop, Enefit, Tallinna Kaubamaja, Merko Ehitus, Tallink) For example, we would recommend buying Enefit, because everyone needs electricity and green energy is a very popular topic in the world at the moment and probably in the future. NB! Always think for yourself when buying stocks, we are not financial experts and this is not financial advice!",
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
                                    child: Text("Where to buy stocks?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("You can buy stocks in many places. From Estonia (e.g. Swedbank, SEB, LHV, Coop Pank, Inbank, Luminor) and foreign places (Revolut, Vanguard, Robinhood, Webull, Goldman Sachs, JPMorgan Chase, Barclays, Deutsche Bank, Etoro). We recommend buying from the institution of the country where you live. If you buy, for example, US stocks from Estonia, there is also a service fee that is much higher than for Estonian stocks.",
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
                                    child: Text("Investing in stocks long-term",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("A long-term investment strategy requires holding investments for longer than a full year. People taking a long-term approach should have discipline and patience. This is because investors must be able to take some risk if they expect huge returns. Investing and then holding stocks is one of the best ways to build wealth over the long term. For example, the S&P 500 had an annual loss in only 11 of the 47 years from 1975 to 2022, indicating that the stock market generates returns far more often than not.",
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
                                    child: Text("How long do you need to hold a stock to be considered long-term?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("The stock should be held for at least 12 months to be considered a long-term investment. Anything below that is considered short-term possession.",
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
                                    child: Text("Be patient during price changes",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Stocks are considered long-term investments. That's partly because it's not unusual for stocks to drop 10-20% or more in value over a shorter period of time. Investors have the option of simply being patient and weathering the bad times, and also staying calm even when stocks go up a lot. Looking back at stock market performance since the 1920s, individuals have rarely lost money investing in the S&P 500 over a 20-year period. Even after taking into account giant setbacks like the Great Depression, Black Monday, the tech bubble, and the financial crisis, investors would still have profited by investing in the S&P 500 and holding it for 20 years without selling. Although past performance does not guarantee a fixed return, it does show that long-term investing in stocks generally yields positive results if given enough time.",
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
                                    child: Text("Better long-term returns",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("The term asset class refers to a specific category of investment. But which asset classes are best for long-term investors? When we look at the performance of asset classes over several decades, we find that stocks have generally outperformed almost every other asset class. The S&P 500 returned an average of 11.82% per year from 1928 to 2021. In emerging markets, stock markets have some of the highest potential for returns, but they also carry the highest risk. The stock class has historically earned high average annual returns, but short-term fluctuations have affected their returns. For example, the 10-year annualized return for the MSCI Emerging Markets Index as of April 29, 2022 was 2.89%. Small and large companies have also generated above-average returns. For example, the Russell 2000 Index, which measures the performance of 2,000 small companies, had a 10-year return of 10.15%.The average return of the large-cap Russell 1000 index over the last 10 years as of May 3, 2022 was 13.57%.",
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
                                    child: Text("Most of the time investors are very impatient",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("If investors were honest, they are certainly not as calm and rational as they claim. In fact, one of the biggest and most natural mistakes in an investor's behavior is being emotional. Often people claim that they are long-term investors until the stock market starts to crash, then they sell their investments to avoid potentially huge losses. Many investors fail to invest in stocks after a major rebound. They often tend to buy again only when most of the profit has already been made. This type of buy high and sell low behavior tends to worsen investor returns. There are a few reasons for this behavior. Here are some of them: Investors fear they made the wrong decision. People often do not trust their own judgment, and it is always on the line whether to sell or not. People tend to fall into the trap of regretting holding stocks and losing a lot more money as they fall in value, so they sell them to alleviate that fear. Feeling pessimistic when things change. Optimism reigns during big upswings, but when things turn sour, the opposite is true. It is important to remember that disruptions in the stock market are often short-lived and things are very likely to turn around. Investors who pay too much attention to the stock market tend to screw up their chances of success, even though a very simple long-term buy-and-hold strategy would have yielded much better results.",
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
                                    child: Text("What to buy for long-term investing?",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Choose funds (we talk about them at the next level). They track specific indexes, such as the S&P 500 or Russell 1000, and trade like stocks. But unlike stocks, these funds are lower priced and you don't have to choose specific companies to invest in. Funds give you returns similar to tracked indexes. Also consider dividend-paying stocks. These types of stocks can help add value to your portfolio, especially if dividends are reinvested. Dividends are company profits that are distributed mostly by successful companies. These are usually blue chip or defensive stocks. Defensive stocks are companies that do well regardless of how the economy is doing or whether the stock market is down. It can often be tempting to keep that dividend money, but there's a very good reason why you should reinvest dividends in companies that actually pay them. The more stocks you own, the more dividends you get.",
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
                                    child: Text("Investing can be difficult. Even experienced investors who try to time the market to buy at the most opportune moments can fail. Dollar-cost averaging is a strategy that automates purchases, making it easier to deal with uncertain markets. It also supports the investor's efforts to invest regularly. Dollar cost averaging involves investing the same amount of money in a stock at regular intervals over a period of time, regardless of price. By using this strategy, investors can lower their average stock price and reduce the impact of price fluctuations on their portfolio. This strategy has one very big plus. This removes the need to time the market (for example, when to buy a particular stock), which even the best investors cannot do. That's why most smart investors do it, and you can be one of them. It also takes the emotion out of your investing and prevents you from potentially damaging your portfolio's performance.",
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
                                    child: Text("Start investing now.",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("There is never a perfect time to jump into the stock market and invest in it. No one ever knows 100% whether stocks will go down or up. And if someone should make such a claim, don't listen to them. Therefore, there is no fixed time when you should start investing. After all, investing is a long-term activity. In the long run, it doesn't matter when you buy your first stocks. Investing is not just about learning it forever, at some point you have to start. The sooner you start, the better. Of course, it doesn't make sense to start with exorbitant amounts. Start slowly and gradually increase the amount of money you invest.",
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
                                    child: Text("Avoid short-term investing",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Research shows that most short-term investors always lose money. For example, Day traders. Often, short-term investors have unrealistic hopes for growing their money. Of course, new investors need to know that buying and selling stocks frequently can get expensive. The same is true with crypto. It generates a lot of tax, and you definitely don't want it as an additional expense. For short-term investments, you have to take into account that there is a good chance that this money will be gone soon.",
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
                                    child: Text("Be consistent",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("If you really want to reach financial freedom, you have to be consistent. You have to take into account that if you invest, for example, 1000 euros at once, you will never reach financial freedom. If you really want to get there, you need to keep adding money to your investments. To do this, be sure to make a plan so that the road does not deviate from its original intentions, after going into the red. Instead of buying unnecessary things, rather invest this money. And if you have money sitting around, invest it too, money loses value when it sits. It is easiest to invest your money in funds where you do not have to do anything actively yourself. More on that in the next chapter. And definitely don't let your emotions take over.",
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
                                    child: Text("Three things to do before buying a stock",
                                      style: GoogleFonts.bebasNeue(
                                        fontSize: 40,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10, right: 10, bottom: 15),
                                    child: Text("Before you buy a company's stock, do your research. What they do, where they do it and how they do it. See the company's price-to-profit ratio. If the price of a stock is very high, but the profit does not show it, the stock is probably not worth buying. One good place to find everything you need is an app called “Simply Wall St”. Write there the name of the stock you want to buy and you will immediately see all the necessary information about it. If you want to park your money somewhere, be sure to put it in dividend-paying stocks.",
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
                        count: 16,
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