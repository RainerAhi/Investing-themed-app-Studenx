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
    text: "Penny aktsia on aktsia, mille väärtus on alla 1 dollari",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Lihtaktsiad esindavad osalist omandit ettevõttes",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Eelisaktsia ei anna",
    options: [
      const Option(text: "raha", isCorrect: false),
      const Option(text: "firma aastaaruannet", isCorrect: false),
      const Option(text: "hääletusõigust", isCorrect: true),
    ],
  ),
  Question(
    text: "Kas paljud ettevõtted pakuvad nii liht- kui ka eelisaktsiaid",
    options: [
      const Option(text: "ainult mõned ettevõtted", isCorrect: false),
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Mis aktsiad kasvavad laiema turuga võrreldes kiiremini?",
    options: [
      const Option(text: "kasvuaktsiad", isCorrect: true),
      const Option(text: "väärtusaktsiad", isCorrect: false),
      const Option(text: "lihtaktsiad", isCorrect: false),
      const Option(text: "penny aktsiad", isCorrect: false),
      const Option(text: "blue-chip aktsiad", isCorrect: false),
    ],
  ),
  Question(
    text: "Tervishoiu aktsiad on väärtusaktsiad?",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Väärtus aktsiatega kaubeldakse allahindlusega",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Tuluaktsiad on aktsiad, mis annavad regulaarselt...",
    options: [
      const Option(text: "lisaaktsiaid", isCorrect: false),
      const Option(text: "tulu", isCorrect: true),
      const Option(text: "oma tooteid", isCorrect: false),
    ],
  ),
  Question(
    text: "Tuluaktsiad sobivad riskikartlikule investorile.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Tuluaktsiad sobivad riskikartlikule investorile.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Blue-chip aktsiad on väljakujunenud ettevõtted, millel on suur...",
    options: [
      const Option(text: "väär", isCorrect: false),
      const Option(text: "tõene", isCorrect: true),
    ],
  ),
  Question(
    text: "Nike on mittetsükliline aktsia.",
    options: [
      const Option(text: "market cap", isCorrect: true),
      const Option(text: "rahasumma", isCorrect: false),
      const Option(text: "aktsiate number", isCorrect: false),
    ],
  ),
  Question(
    text: "McDonald´s on Blue-chip aktsia",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Mis aktsiad pakuvad üldiselt püsivat tootlust enamikes majandustingimustes",
    options: [
      const Option(text: "lihtaktsiad", isCorrect: false),
      const Option(text: "penny aktsiad", isCorrect: false),
      const Option(text: "tsüklilised aktsiad", isCorrect: false),
      const Option(text: "kaitseaktsiad", isCorrect: true),
    ],
  ),
  Question(
    text: "ESG aktsiad on viimastel aastatel...",
    options: [
      const Option(text: "langenud palju", isCorrect: false),
      const Option(text: "muutunud penny aktsiateks", isCorrect: false),
      const Option(text: "populaarsust kogunud", isCorrect: true),
    ],
  ),
  Question(
    text: "Karuturg on?",
    options: [
      const Option(text: "ulatuslik langus, vähemalt 20%", isCorrect: true),
      const Option(text: "jõhker tõus, vähemalt 50%", isCorrect: false),
    ],
  ),
  Question(
    text: "Karuturu ajal ei oleks mõistlik",
    options: [
      const Option(text: "osta juurde aktsiaid", isCorrect: false),
      const Option(text: "jmüüa aktsiaid", isCorrect: true),
      const Option(text: "rahulik olla", isCorrect: false),
    ],
  ),
  Question(
    text: "Kui sageli on karu turud?",
    options: [
      const Option(text: "iga aasta", isCorrect: false),
      const Option(text: "iga kuu", isCorrect: false),
      const Option(text: "iga 3 kuu tagant", isCorrect: false),
      const Option(text: "iga 4-5 aasta tagant", isCorrect: true),
    ],
  ),
  Question(
    text: "1929-1932 oli kõige järsem...",
    options: [
      const Option(text: "aktsia ostmine", isCorrect: false),
      const Option(text: "karu turg", isCorrect: true),
      const Option(text: "investorite tõus", isCorrect: false),
      const Option(text: "raha printimine", isCorrect: false),
    ],
  ),
  Question(
    text: "Investeerida ei tasu kui...?",
    options: [
      const Option(text: "sul ei ole vaba raha", isCorrect: true),
      const Option(text: "sul ei ole iga päev aega", isCorrect: false),
      const Option(text: "sa oled laps", isCorrect: false),
      const Option(text: "sa oled rikas", isCorrect: false),
    ],
  ),
  Question(
    text: "Oma aktsia portfelli tuleks...",
    options: [
      const Option(text: "aeg ajalt müüa", isCorrect: false),
      const Option(text: "tervikult maha müüa", isCorrect: false),
      const Option(text: "mitmekesistada", isCorrect: true),
    ],
  ),
  Question(
    text: "Mis on inflatsioon?",
    options: [
      const Option(text: "millegi suurenemine", isCorrect: false),
      const Option(text: "millegi drastiline langus", isCorrect: false),
      const Option(text: "teenuste ja kaupade hinnatõus", isCorrect: true),
      const Option(text: "aktsiate massiline müümine", isCorrect: false),
    ],
  ),
  Question(
    text: "Inflatsioon ei mõjuta aktsiaid.",
    options: [
      const Option(text: "väär", isCorrect: true),
      const Option(text: "tõene", isCorrect: false),
    ],
  ),
  Question(
    text: "Majanduse ülekuumenemisel on...",
    options: [
      const Option(text: "2 märki", isCorrect: true),
      const Option(text: "3 märki", isCorrect: false),
      const Option(text: "6 märki", isCorrect: false),
      const Option(text: "9 märki", isCorrect: false),
    ],
  ),
  Question(
    text: "Härjaturul on kindel langemise trend",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Suurtemate ettevõtete aktsiad on Big-cap aktsiad",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "USA ettevõtete aktsiad on Small-cap aktsiad",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Härjaturul tõusevad hinnad väga palju ning on tõusmistrend.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Härjaturgudel ei ole võimalik kasumit teenida",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Ka härjaturgudel võib “Dollar-cost averaging” tehnikat kasutada.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
];