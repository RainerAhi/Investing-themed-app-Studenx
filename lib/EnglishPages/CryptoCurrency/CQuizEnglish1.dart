import 'CMyQuestionEnglish.dart';
import 'package:flutter/material.dart';

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
    text: "What is crypto?",
    options: [
      const Option(text: "Cash", isCorrect: false),
      const Option(text: "Card", isCorrect: false),
      const Option(text: "Currency", isCorrect: true),
      const Option(text: "bank", isCorrect: false),
    ],
  ),
  Question(
    text: "Is crypto only digital?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "What is the biggest plus and minus of crypto?",
    options: [
      const Option(text: "insane price changes", isCorrect: true),
      const Option(text: "Price", isCorrect: false),
      const Option(text: "Availability", isCorrect: false),
    ],
  ),
  Question(
    text: "What technology does crypto work on?",
    options: [
      const Option(text: "Chainblock ", isCorrect: false),
      const Option(text: "BloChain", isCorrect: false),
      const Option(text: "Blockchain", isCorrect: true),
      const Option(text: "BloCH", isCorrect: false),
    ],
  ),
  Question(
    text: "How is Crypto Created?",
    options: [
      const Option(text: "Mining", isCorrect: true),
      const Option(text: "Hacking", isCorrect: false),
      const Option(text: "On a special paper", isCorrect: false),
    ],
  ),
  Question(
    text: "What is one of the great advantages of crypto?",
    options: [
      const Option(text: "Price", isCorrect: false),
      const Option(text: "Market Cap", isCorrect: false),
      const Option(text: "Purchasing", isCorrect: false),
      const Option(text: "Security", isCorrect: true),
    ],
  ),
  Question(
    text: "Which crypto fell from 100 euros to less than 1 cent in 2022?",
    options: [
      const Option(text: "ETH", isCorrect: false),
      const Option(text: "MATIC", isCorrect: false),
      const Option(text: "LUNA", isCorrect: true),
      const Option(text: "XRP", isCorrect: false),
    ],
  ),
  Question(
    text: "What do HODLers do?",
    options: [
      const Option(text: "They sell it quickly", isCorrect: false),
      const Option(text: "Keep their crypto for a long time", isCorrect: true),
      const Option(text: "They create crypto", isCorrect: false),
    ],
  ),
  Question(
    text: "What does HODL mean?",
    options: [
      const Option(text: "Hold On for Dear Life", isCorrect: true),
      const Option(text: "Hold on until December", isCorrect: false),
      const Option(text: "There is no use in holding on", isCorrect: false),
    ],
  ),
  Question(
    text: "What did some HODLers make a lot of money with (the price rose to 60,000)?",
    options: [
      const Option(text: "bitcoin", isCorrect: true),
      const Option(text: "xrp", isCorrect: false),
      const Option(text: "eth", isCorrect: false),
      const Option(text: "bnb", isCorrect: false),
    ],
  ),
  Question(
    text: "Where can crypto be stored?",
    options: [
      const Option(text: "On an phone", isCorrect: true),
      const Option(text: "In the pocket", isCorrect: false),
      const Option(text: "On a memory stick", isCorrect: false),
      const Option(text: "In a bank account", isCorrect: false),
    ],
  ),
  Question(
    text: "Can only Solana be stored in the Phantom wallet?",
    options: [
      const Option(text: "no", isCorrect: false),
      const Option(text: "yes", isCorrect: true),
    ],
  ),
  Question(
    text: "With the Recovery phase, you can enter your wallet.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Kraken is a fairly secure exchange",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Exchange is a...",
    options: [
      const Option(text: "place to create crypto", isCorrect: false),
      const Option(text: "place to buy crypto", isCorrect: true),
      const Option(text: "place to mine crypto", isCorrect: false),
    ],
  ),
  Question(
    text: "Ledger is",
    options: [
      const Option(text: "digital wallet", isCorrect: false),
      const Option(text: "physical wallet", isCorrect: true),
    ],
  ),
  Question(
    text: "Is it possible to order things online with crypto?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Crypto prices are changing.",
    options: [
      const Option(text: "every moment", isCorrect: true),
      const Option(text: "every 12 hours", isCorrect: false),
      const Option(text: "Every 1 hour", isCorrect: false),
      const Option(text: "Every week", isCorrect: false),
    ],
  ),
  Question(
    text: "Cryptos are usually ranked by market cap.",
    options: [
      const Option(text: "false", isCorrect: false),
      const Option(text: "true", isCorrect: true),
    ],
  ),
  Question(
    text: "Is Market cap= tradable amount of crypto x current price of crypto?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Can crypto be kept in a exchange?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Ledger is...",
    options: [
      const Option(text: "A regular wallet", isCorrect: false),
      const Option(text: "Like a memory stick", isCorrect: true),
      const Option(text: "Like a computer", isCorrect: false),
    ],
  ),
  Question(
    text: "From what year is crypto being used?",
    options: [
      const Option(text: "2010", isCorrect: false),
      const Option(text: "2009", isCorrect: true),
      const Option(text: "2007", isCorrect: false),
      const Option(text: "2008", isCorrect: false),
    ],
  ),
  Question(
    text: "How many billions of euros are invested in crypto?",
    options: [
      const Option(text: "80", isCorrect: false),
      const Option(text: "8", isCorrect: false),
      const Option(text: "800", isCorrect: true),
      const Option(text: "400", isCorrect: false),
    ],
  ),
  Question(
    text: "What percentage of the world's population have invested in crypto?",
    options: [
      const Option(text: "5", isCorrect: false),
      const Option(text: "9", isCorrect: false),
      const Option(text: "3.9", isCorrect: false),
      const Option(text: "4.2", isCorrect: true),
    ],
  ),
  Question(
    text: "Learning about a crypto would be beneficial before buying it.",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Which portfolio is best for an investor?",
    options: [
      const Option(text: "diverse", isCorrect: true),
      const Option(text: "consisting of memecoins", isCorrect: false),
      const Option(text: "consisting of shitcoins", isCorrect: false),
    ],
  ),
];