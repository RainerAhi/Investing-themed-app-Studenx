

class Question {
  final String text;
  final List<Option> options;
  bool isLocked;
  Option? selectedOption;

  Question({
    required this.text,
    required this.options,
    this.isLocked = false,
    this.selectedOption,
  });
}

class Option {
  final String text;
  final bool isCorrect;

  const Option ({
    required this.text,
    required this.isCorrect,
  });
}

final questions = [
  Question(
    text: "Stocks are not a currency.",
    options: [
      const Option(text: "correct", isCorrect: true),
      const Option(text: "incorrect", isCorrect: false),
    ],
  ),
  Question(
    text: "For companies, stocks are a method of raising money.",
    options: [
      const Option(text: "false", isCorrect: false),
      const Option(text: "true", isCorrect: true),
    ],
  ),
  Question(
    text: "Stocks are riskier than crypto.",
    options: [
      const Option(text: "false", isCorrect: true),
      const Option(text: "true", isCorrect: false),
    ],
  ),
  Question(
    text: "Why should you own stocks?",
    options: [
      const Option(text: "profit", isCorrect: true),
      const Option(text: "it is cool", isCorrect: false),
      const Option(text: "helps to get a job in the future", isCorrect: false),
    ],
  ),
  Question(
    text: "Dividends are payments to investors of a company's earnings.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "All companies pay dividends.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "It's good to buy many stocks from the same sector.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Stocks cannot fall below the purchase price.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "If the price of one stock falls, the price of other stocks always fall.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "ETF-s always hold only 3-7 stocks.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "It would be wise to buy stocks from the institution of the country where you live.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Buying US stocks in Estonia also incurs a higher service fee.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Long term stock ownership=12 months or more.",
    options: [
      const Option(text: "false", isCorrect: false),
      const Option(text: "true", isCorrect: true),
    ],
  ),
  Question(
    text: "Asset class refers to the category of ... investment.",
    options: [
      const Option(text: "expensive", isCorrect: false),
      const Option(text: "specific", isCorrect: true),
      const Option(text: "cheap", isCorrect: false),
      const Option(text: "foreign", isCorrect: false),
    ],
  ),
  Question(
    text: "Are stocks considered a long-term investment?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "It is unusual for a stock to fluctuate 10-20% or more.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Buying high and selling low is...",
    options: [
      const Option(text: "good", isCorrect: false),
      const Option(text: "bad", isCorrect: true),
    ],
  ),
  Question(
    text: "Investors often regret their purchase decisions",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "The more you own a stock, the more dividends you get",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Excessive market monitoring can be harmful",
    options: [
      const Option(text: "no", isCorrect: false),
      const Option(text: "yes", isCorrect: true),
    ],
  ),
  Question(
    text: "Dollar-Cost Averaging removes the need to time the market.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Dollar-Cost Averaging also supports for example monthly investment.",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "The earlier you start investing the better.",
    options: [
      const Option(text: "no", isCorrect: false),
      const Option(text: "yes", isCorrect: true),
    ],
  ),
  Question(
    text: "You need large sums of money to start investing.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Short-term investing is not very profitable most of the time.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Consistency is not very important.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Do your research before you buy any stock.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "The company's stock price and profit are not important when investing",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
];