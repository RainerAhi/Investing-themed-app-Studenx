import 'Question.dart';
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
    text: "Mida hõlmab S&P 500?",
    options: [
      const Option(text: "Jaapani 500 suurimat ettevõtet", isCorrect: false),
      const Option(text: "500 suurimat Eesti ettevõtet", isCorrect: false),
      const Option(text: "USA 500 suurimat ettevõtet", isCorrect: true),
      const Option(text: "500 suurimat euroopa ettevõtet", isCorrect: false),
    ],
  ),
  Question(
    text: "S&P 500 on üks uusimaid fonde maailmas.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Kas S&P 500 on üks USA tuntumaid fonde?",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "S&P kasutab turukapitali arvutamisel ainult vabalt kaubeldavaid aktsiaid.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Nasdaq on S&P 500 konkurent.",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Vanguard 500 üritab jälgida S&P 500 hinda.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Kas S&P 500 nimekiri sisaldab USA 500 parimat ettevõtet market cap-i järgi?",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "ETF ja indeksfond on sama asi?",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "ETF-e saab maksimaalselt hoida kuni 65 aktsiat",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "ETF hoiab ainult ühte aktsiat",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Kas ETF-i eesmärk on pakkuda mitmekülgset kokkupuudet ühele tööstusharule?",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "ETF-idel on kõrgemad tasud kui aktsiatel",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "EDividendi fondide suur miinus on...",
    options: [
      const Option(text: "see, et ainult pooled maksavad dividende", isCorrect: false),
      const Option(text: "seal on ainult paar aktsiat", isCorrect: false),
      const Option(text: "sa pead maksma selle ülalpidajale", isCorrect: true),
    ],
  ),
  Question(
    text: "Kuld kuulub tooraine fondide hulka",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Nafta on osa dividendi fondidest",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "ETF on...",
    options: [
      const Option(text: "väärtpaber", isCorrect: true),
      const Option(text: "aktsia", isCorrect: false),
      const Option(text: "krüpto", isCorrect: false),
      const Option(text: "mitte ükski neist", isCorrect: false),
    ],
  ),
  Question(
    text: "ETF-id on...",
    options: [
      const Option(text: "ainult USA-st", isCorrect: false),
      const Option(text: "mitte ükski neist nimetatud vastustest", isCorrect: true),
      const Option(text: "ainult Aasias", isCorrect: false),
      const Option(text: "ainult Euroopast", isCorrect: false),
    ],
  ),
  Question(
    text: "ETF-is on...",
    options: [
      const Option(text: "palju aktsiaid", isCorrect: true),
      const Option(text: "vähe aktsiaid", isCorrect: false),
      const Option(text: "aktsiaid", isCorrect: false),
    ],
  ),
  Question(
    text: "ETF-is on...",
    options: [
      const Option(text: "palju aktsiaid", isCorrect: true),
      const Option(text: "vähe aktsiaid", isCorrect: false),
      const Option(text: "aktsiaid", isCorrect: false),
    ],
  ),
  Question(
    text: "ETF-is on ... sektorite aktsiad",
    options: [
      const Option(text: "uute", isCorrect: false),
      const Option(text: "vanade", isCorrect: false),
      const Option(text: "kindlate", isCorrect: true),
    ],
  ),
  Question(
    text: "ETF-i on võimalik müüa ainult iga kuu 4 korda",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "ETF-ides on alati 3-7 aktsiat koos",
    options: [
      const Option(text: "väär", isCorrect: true),
      const Option(text: "tõene", isCorrect: false),
    ],
  ),
  Question(
    text: "Aktsiafondide hind sõltub aktsiatest",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
];