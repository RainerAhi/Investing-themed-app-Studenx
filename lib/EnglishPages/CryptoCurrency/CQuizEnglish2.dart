
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
    text: "Memecoins are altcoins.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Bitcoin is an altcoin.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Stablecoins track the price of what?",
    options: [
      const Option(text: "another crypto", isCorrect: false),
      const Option(text: "another crypto", isCorrect: false),
      const Option(text: "another currency(like USD)", isCorrect: true),
    ],
  ),
  Question(
    text: "What does the price of memecoins depend on?",
    options: [
      const Option(text: "relevance and popularity", isCorrect: true),
      const Option(text: "name and creator", isCorrect: false),
      const Option(text: "other cryptos", isCorrect: false),
      const Option(text: "bitcoin", isCorrect: false),
    ],
  ),
  Question(
    text: "The biggest memecoins are SHIB and DOGE.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Memecoins are bad long-term investments?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Bitcoin is considered an altcoin alternative?",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "There isn't an altcoin that has its own blockchain.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Stablecoins usually track what currency?",
    options: [
      const Option(text: "USD", isCorrect: true),
      const Option(text: "EUR", isCorrect: false),
      const Option(text: "JPY", isCorrect: false),
    ],
  ),
  Question(
    text: "What is the big advantage of stablecoins?",
    options: [
      const Option(text: "they have a high rate of return", isCorrect: false),
      const Option(text: "they are great for payments", isCorrect: true),
      const Option(text: "they are the USA president's favorite", isCorrect: false),
      const Option(text: "they are cheap", isCorrect: false),
    ],
  ),
  Question(
    text: "Shitcoin is a term made up the crypto community.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "There are only a few shitcoins",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Can memecoins also count as shitcoins?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Staking is very good for what?",
    options: [
      const Option(text: "for mining", isCorrect: false),
      const Option(text: "for the price of crypto to rise", isCorrect: false),
      const Option(text: "for a long-term investor to get more crypto", isCorrect: true),
      const Option(text: "for a short-term investor to get more money", isCorrect: false),
    ],
  ),
  Question(
    text: "Staking is bad for who?",
    options: [
      const Option(text: "to a long-term investor", isCorrect: false),
      const Option(text: "to no one", isCorrect: false),
      const Option(text: "to a short-term investor", isCorrect: true),
      const Option(text: "to a miner", isCorrect: false),
    ],
  ),
  Question(
    text: "Bitcoin has only 2 pros?",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Ethereum is the most famous crypto in the world?",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoin is a ... currency?",
    options: [
      const Option(text: "bad", isCorrect: false),
      const Option(text: "good", isCorrect: false),
      const Option(text: "government controlled", isCorrect: false),
      const Option(text: "decentralized", isCorrect: true),
    ],
  ),
  Question(
    text: "El Salvador uses this very crypto...",
    options: [
      const Option(text: "bitcoin", isCorrect: true),
      const Option(text: "xrp", isCorrect: false),
      const Option(text: "doge", isCorrect: false),
      const Option(text: "luna", isCorrect: false),
    ],
  ),
  Question(
    text: "How many bitcoins are there?",
    options: [
      const Option(text: "21 000 000", isCorrect: true),
      const Option(text: "2 000 000", isCorrect: false),
      const Option(text: "1 200 000", isCorrect: false),
      const Option(text: "200 000", isCorrect: false),
    ],
  ),
  Question(
    text: "The highest price of Bitcoin was less than 60,000 euros",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoin payments are irreversible.",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Every store accepts Bitcoin as a way of paying.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoin is regulated by the government in most countries.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoin has a high yield potential.",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Hackers and fraudsters are not a very big problem.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoin lost 99% of its value at one point",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Tokens work on an independent blockchain.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Tokens are easier to create than coins.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
];