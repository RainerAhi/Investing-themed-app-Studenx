import 'MyQuestionEnglish3.dart';
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
    text: "A penny stock is a stock that is worth less than 1 dollar.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Common stock represents partial ownership in a company.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Preference stocks do not give...",
    options: [
      const Option(text: "money", isCorrect: false),
      const Option(text: "company annual report", isCorrect: false),
      const Option(text: "voting rights", isCorrect: true),
    ],
  ),
  Question(
    text: "Do many companies offer both ordinary and preferred stocks.",
    options: [
      const Option(text: "no", isCorrect: false),
      const Option(text: "yes", isCorrect: true),
      const Option(text: "only a couple companies", isCorrect: false),
    ],
  ),
  Question(
    text: "Which stocks are growing faster than the broader market?",
    options: [
      const Option(text: "growth stocks", isCorrect: true),
      const Option(text: "value stocks", isCorrect: false),
      const Option(text: "common stocks", isCorrect: false),
      const Option(text: "penny stocks", isCorrect: false),
    ],
  ),
  Question(
    text: "Are healthcare stocks value stocks?",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "Value stocks trade at a discount.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Income stock are stocks that regularly give...",
    options: [
      const Option(text: "income", isCorrect: true),
      const Option(text: "additional stocks", isCorrect: false),
      const Option(text: "their products", isCorrect: false),
    ],
  ),
  Question(
    text: "Income stocks are suitable for the risk-averse investor.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Blue-chip stocks are established companies with...",
    options: [
      const Option(text: "a large market cap", isCorrect: true),
      const Option(text: "a large amount of money", isCorrect: false),
      const Option(text: "a large number of stocks", isCorrect: false),
    ],
  ),
  Question(
    text: "Cyclical stocks are directly affected by economic performance.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Nike is a non-cyclical stock.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "McDonald's is a blue-chip stock.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "What stocks generally provide consistent returns under most economic conditions.",
    options: [
      const Option(text: "common stocks", isCorrect: false),
      const Option(text: "penny stocks", isCorrect: false),
      const Option(text: "defensive stocks", isCorrect: true),
      const Option(text: "cyclical stocks", isCorrect: false),
    ],
  ),
  Question(
    text: "ESG stocks have...",
    options: [
      const Option(text: "crashed a lot in recent years", isCorrect: false),
      const Option(text: "gained popularity", isCorrect: true),
      const Option(text: "turned into penny stocks", isCorrect: false),
    ],
  ),
  Question(
    text: "A bear market is?",
    options: [
      const Option(text: "massive decline of at least 20% from recent highs", isCorrect: true),
      const Option(text: "massive rise of at least 50% from recent lows", isCorrect: false),
    ],
  ),
  Question(
    text: "During a bear market, it would not be wise to...",
    options: [
      const Option(text: "buy more stocks", isCorrect: false),
      const Option(text: "be calm", isCorrect: false),
      const Option(text: "sell stocks", isCorrect: true),
    ],
  ),
  Question(
    text: "How often are bear markets?",
    options: [
      const Option(text: "every 4-5 years?", isCorrect: true),
      const Option(text: "every year", isCorrect: false),
      const Option(text: "every month", isCorrect: false),
      const Option(text: "every monday", isCorrect: false),
    ],
  ),
  Question(
    text: "1929-1932 was the biggest...",
    options: [
      const Option(text: "bear market", isCorrect: true),
      const Option(text: "bull market", isCorrect: false),
      const Option(text: "money printing", isCorrect: false),
    ],
  ),
  Question(
    text: "It is not worth investing if...",
    options: [
      const Option(text: "you are a child", isCorrect: false),
      const Option(text: "you don't have free money", isCorrect: true),
      const Option(text: "you are rich", isCorrect: false),
    ],
  ),
  Question(
    text: "Your stock portfolio should be...",
    options: [
      const Option(text: "sold from time to time", isCorrect: false),
      const Option(text: "sold entirely", isCorrect: false),
      const Option(text: "diversified", isCorrect: true),
    ],
  ),
  Question(
    text: "What is inflation?",
    options: [
      const Option(text: "an increase in something", isCorrect: false),
      const Option(text: "drastic decrease in something", isCorrect: false),
      const Option(text: "goods and services price increase", isCorrect: true),
      const Option(text: "mass selling of stocks", isCorrect: false),
    ],
  ),
  Question(
    text: "Stocks are not affected by inflation.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Overheating of the economy has...",
    options: [
      const Option(text: "2 main signs", isCorrect: true),
      const Option(text: "3 main signs", isCorrect: false),
      const Option(text: "6 main signs", isCorrect: false),
      const Option(text: "1 main sign", isCorrect: false),
    ],
  ),
  Question(
    text: "A bull market has a definite downtrend.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Stocks from larger companies are Big-cap stocks.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Most big US stocks are Small-cap stocks.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "In a bull market, prices rise a lot and there is a upward trend.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "It is not possible to make a profit in bull market.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Dollar-cost averaging technique can also be used in bull markets",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
];