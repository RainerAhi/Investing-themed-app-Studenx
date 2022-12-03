import 'CMyQuestionEnglish3.dart';
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
    text: "NFT are unique and ...?",
    options: [
      const Option(text: "beautiful", isCorrect: false),
      const Option(text: "cannot be copied", isCorrect: true),
      const Option(text: "expensive", isCorrect: false),
    ],
  ),
  Question(
    text: "NFTs can be bought ...?",
    options: [
      const Option(text: "with cash", isCorrect: false),
      const Option(text: "with EUR only", isCorrect: false),
      const Option(text: "with USD only", isCorrect: false),
      const Option(text: "with crypto", isCorrect: true),
    ],
  ),
  Question(
    text: "NFTs are very bad sources of money but beautiful.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "NFTs are easy to buy.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "NFTs can only be minted.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Minting is buying before they are publicly sold to everyone.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "NFTs are very safe investments.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoin NFTs are the best.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: false),
      const Option(text: "they don't exist", isCorrect: true),
      const Option(text: "only a few are good", isCorrect: false),
    ],
  ),
  Question(
    text: "Solana NFTs have gained a lot of popularity in 2021-2022.",
    options: [
      const Option(text: "no", isCorrect: false),
      const Option(text: "yes", isCorrect: true),
    ],
  ),
  Question(
    text: "The most famous figures on NFTs are...",
    options: [
      const Option(text: "bears", isCorrect: false),
      const Option(text: "fish", isCorrect: false),
      const Option(text: "ghosts", isCorrect: false),
      const Option(text: "bulls", isCorrect: false),
      const Option(text: "apes", isCorrect: true),
    ],
  ),
  Question(
    text: "Okay Bulls is one of the largest NFT collections.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "We recommend HODLing NFTs.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Invisible DeGods is a very large ETH NFT",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "OpenSea is a very risky place to buy NFTs.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Mining is very expensive.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "During mining you get crypto.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "Mining is not reasonable for the average person.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "The most important thing about mining is the processor.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "Mining can only be done by a rich person.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "Secure crypto is rug pull.",
    options: [
      const Option(text: "yes", isCorrect: false),
      const Option(text: "no", isCorrect: true),
    ],
  ),
  Question(
    text: "SquidGameCoin was a rug pull.",
    options: [
      const Option(text: "yes", isCorrect: true),
      const Option(text: "no", isCorrect: false),
    ],
  ),
  Question(
    text: "A roadmap is important for a ... crypto.",
    options: [
      const Option(text: "expensive", isCorrect: false),
      const Option(text: "good", isCorrect: true),
      const Option(text: "cheap", isCorrect: false),
      const Option(text: "rug pull", isCorrect: false),
    ],
  ),
  Question(
    text: "It is possible to find good cryptos on social media.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "ETH and SOL NFTs are the largest NFTs.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "NFTs cannot be mined.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "NFTs cannot be...",
    options: [
      const Option(text: "bought", isCorrect: false),
      const Option(text: "minted", isCorrect: false),
      const Option(text: "created by yourself", isCorrect: false),
      const Option(text: "staked", isCorrect: true),
    ],
  ),
  Question(
    text: "Mining crypto is bad for the environment ",
    options: [
      const Option(text: "false", isCorrect: false),
      const Option(text: "true", isCorrect: true),
    ],
  ),
  Question(
    text: "Countries are trying to make crypto more useful for themselves.",
    options: [
      const Option(text: "false", isCorrect: false),
      const Option(text: "true", isCorrect: true),
    ],
  ),
  Question(
    text: "Blockchain is a type of shared database.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
  Question(
    text: "DeFi is based on the same technology as stocks.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "A Whitepaper is pointless.",
    options: [
      const Option(text: "true", isCorrect: false),
      const Option(text: "false", isCorrect: true),
    ],
  ),
  Question(
    text: "A Whitepaper provides useful information.",
    options: [
      const Option(text: "true", isCorrect: true),
      const Option(text: "false", isCorrect: false),
    ],
  ),
];