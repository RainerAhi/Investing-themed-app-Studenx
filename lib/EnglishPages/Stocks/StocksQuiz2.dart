
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
    text: "What is included in the S&P 500?",
    options: [
      const Option(text: "500 largest companies in Japan", isCorrect: false),
      const Option(text: "500 largest companies in Estonia", isCorrect: false),
      const Option(text: "500 largest companies in the USA", isCorrect: true),
      const Option(text: "500 largest companies in Germany", isCorrect: false),
    ],
  ),
  Question(
    text: "The S&P 500 is one of the newest funds in the world.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Is the S&P 500 one of the best-known US funds.",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "S&P uses only free-floating stocks when calculating market capitalization.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Nasdaq is a competitor to the S&P 500.",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "The Vanguard 500 attempts to track the S&P 500.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Are an ETF and an index fund the same thing?",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "An ETF can hold a maximum of 65 stocks.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "An ETF holds only one stock.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Is an ETF intended to provide diversified exposure to a single industry?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "ETFs have lower fees than stocks.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "A big disadvantage of dividend funds is...",
    options: [
      const Option(text: "only half pay dividends", isCorrect: false),
      const Option(text: "there are only a few stocks", isCorrect: false),
      const Option(text: "you have to pay an annual fee", isCorrect: true),
    ],
  ),
  Question(
    text: "Gold is part of the commodity fund.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Oil is not part of dividend funds",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "ETFs are...",
    options: [
      const Option(text: "none of these answers", isCorrect: true),
      const Option(text: "crypto", isCorrect: false),
      const Option(text: "a combination of crypto and stocks", isCorrect: false),
    ],
  ),
  Question(
    text: "An ETF holds...",
    options: [
      const Option(text: "few stocks", isCorrect: false),
      const Option(text: "many stocks", isCorrect: true),
      const Option(text: "cash", isCorrect: false),
    ],
  ),
  Question(
    text: "In an ETF, the stocks are in a ... sector",
    options: [
      const Option(text: "old", isCorrect: false),
      const Option(text: "new", isCorrect: false),
      const Option(text: "certain", isCorrect: true),
    ],
  ),
  Question(
    text: "An ETF price depends on the stocks it holds.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
];