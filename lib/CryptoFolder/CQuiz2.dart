import 'CMyQuestion.dart';
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
    text: "Memecoinid on altcoinid.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Bitcoin on altcoin.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Stablecoinid jälgivad mille hinda?",
    options: [
      const Option(text: "teise exchange krüptot", isCorrect: false),
      const Option(text: "teise krüpto", isCorrect: false),
      const Option(text: "teise valuuta", isCorrect: true),
    ],
  ),
  Question(
    text: "Memecoinide hind sõltub millest?",
    options: [
      const Option(text: "nimest ja loojast", isCorrect: false),
      const Option(text: "asjakohasusest ja populaarsusest", isCorrect: true),
      const Option(text: "teistest krüptodes", isCorrect: false),
      const Option(text: "bitcoinist", isCorrect: false),
    ],
  ),
  Question(
    text: "Suurimad memecoinid on SHIB ja DOGE.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Memecoinid on halvad pikaajalised investeeringud?",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Bitcoini peetakse altcoini alternatiiviks?",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Kõikidel altcoinidel puudub oma blockchain?",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Stablecoinid jälgivad tavaliselt mis valuutat?",
    options: [
      const Option(text: "usd", isCorrect: true),
      const Option(text: "eur", isCorrect: false),
      const Option(text: "jpy", isCorrect: false),
    ],
  ),
  Question(
    text: "Mis on stablecoinide suur pluss?",
    options: [
      const Option(text: "nad on usa presidendi lemmik krüptod", isCorrect: false),
      const Option(text: "nad on odavad", isCorrect: false),
      const Option(text: "nad on suurepärased maksevahendid", isCorrect: true),
      const Option(text: "nad on suure tootlusprotsendiga", isCorrect: false),
    ],
  ),
  Question(
    text: "Shitcoin on rahva poolt välja mõeldud termin.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Shitcoine on ainult paar tükki.",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Kas memecoine võib ka lugeda shitcoinideks?",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Stakemine on väga hea milleks?",
    options: [
      const Option(text: "kaevandamiseks", isCorrect: false),
      const Option(text: "krüpto hinna tõusmiseks", isCorrect: false),
      const Option(text: "lühiajalisele investorile raha juurde saamiseks", isCorrect: false),
      const Option(text: "pikaajalisele investorile krüpto juurde saamiseks", isCorrect: true),
    ],
  ),
  Question(
    text: "Stakemine on halb kellele?",
    options: [
      const Option(text: "pikaajalisele investorile", isCorrect: false),
      const Option(text: "lühiajalisele investorile", isCorrect: true),
      const Option(text: "mitte kellegile", isCorrect: false),
      const Option(text: "kaevandajale", isCorrect: false),
    ],
  ),
  Question(
    text: "Bitcoinil on ainult 2 plussi",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Ethereum on kõige tuntum krüpto maailmas?",
    options: [
      const Option(text: "ei", isCorrect: false),
      const Option(text: "jah", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoin on .... valuuta.",
    options: [
      const Option(text: "detsentraliseeritud", isCorrect: true),
      const Option(text: "halb", isCorrect: false),
      const Option(text: "valitsuse poolt kontrollitud", isCorrect: false),
    ],
  ),
  Question(
    text: "El Salvador kasutab just seda krüptot.",
    options: [
      const Option(text: "XRP", isCorrect: false),
      const Option(text: "DOGE", isCorrect: false),
      const Option(text: "LUNA", isCorrect: false),
      const Option(text: "Bitcoin", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoini on just nii mitu tükki?",
    options: [
      const Option(text: "200 000", isCorrect: false),
      const Option(text: "2 000 000 ", isCorrect: false),
      const Option(text: "1 200 000", isCorrect: false),
      const Option(text: "21 000 000", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoini kõrgeim hind oli alla 60 000 euro.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoini maksed on pöördumatud.",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Iga pood võtab Bitcoini maksevahendina",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoini reguleerib valitsus enamus riikides.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Bitcoinil on kõrge tootlus protsent.",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Häkkerid ja petturid ei ole eriti suur probleem",
    options: [
      const Option(text: "väär", isCorrect: true),
      const Option(text: "tõene", isCorrect: false),
    ],
  ),
  Question(
    text: "Bitcoin kaotas ühel hetkel 99% oma väärtusest.",
    options: [
      const Option(text: "Väär", isCorrect: false),
      const Option(text: "tõene", isCorrect: true),
    ],
  ),
  Question(
    text: "Tokenid töötavad sõltumatul plokiahelal",
    options: [
      const Option(text: "Väär", isCorrect: true),
      const Option(text: "tõene", isCorrect: false),
    ],
  ),
  Question(
    text: "Tokeneid on lihtsam luua kui coin-e.",
    options: [
      const Option(text: "Väär", isCorrect: false),
      const Option(text: "tõene", isCorrect: true),
    ],
  ),
  Question(
    text: "Tokeneid on lihtsam luua kui coin-e.",
    options: [
      const Option(text: "Väär", isCorrect: false),
      const Option(text: "tõene", isCorrect: true),
    ],
  ),
];