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
    text: "Mis on krüpto?",
    options: [
      const Option(text: "Paberraha", isCorrect: false),
      const Option(text: "Kaart", isCorrect: false),
      const Option(text: "Pank", isCorrect: false),
      const Option(text: "Valuuta ", isCorrect: true),
      const Option(text: "aktsia", isCorrect: false),
    ],
  ),
  Question(
    text: "Kas krüpto on ainult digitaalne?",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Mis on krüpto suurim pluss aga samas ka miinus?",
    options: [
      const Option(text: "Hind", isCorrect: false),
      const Option(text: "Ulmelised hinna muutused", isCorrect: true),
      const Option(text: "Kättesaadavus", isCorrect: false),
    ],
  ),
  Question(
    text: "Mis tehnoloogia peal toimib krüpto?",
    options: [
      const Option(text: "Chainblock", isCorrect: false),
      const Option(text: "BloChain", isCorrect: false),
      const Option(text: "Blockchain", isCorrect: true),
      const Option(text: "BloCH", isCorrect: false),
    ],
  ),
  Question(
    text: "Kuidas luuakse Krüptot?",
    options: [
      const Option(text: "Mining ehk kaevandamine", isCorrect: true),
      const Option(text: "Häkkimine", isCorrect: false),
      const Option(text: "Spetsiaalse paberi peal", isCorrect: false),
      const Option(text: "Valitsus prindib", isCorrect: false),
    ],
  ),
  Question(
    text: "Mis on krüpto üks suurimaid eeliseid?",
    options: [
      const Option(text: "Hind", isCorrect: false),
      const Option(text: "Market Cap", isCorrect: false),
      const Option(text: "Turvalisus", isCorrect: true),
      const Option(text: "Ostmine", isCorrect: false),
    ],
  ),
  Question(
    text: "Mis krüpto langes 100 euro pealt alla 1 sendi aastal 2022?",
    options: [
      const Option(text: "LUNA", isCorrect: true),
      const Option(text: "XRP", isCorrect: false),
      const Option(text: "MATIC", isCorrect: false),
      const Option(text: "ETH", isCorrect: false),
    ],
  ),
  Question(
    text: "Mida teevad HODLerid?",
    options: [
      const Option(text: "Hoiavad ostetud krüptot pikka aega", isCorrect: true),
      const Option(text: "Müüvad ruttu maha", isCorrect: false),
      const Option(text: "Loovad krüptot", isCorrect: false),
    ],
  ),
  Question(
    text: "Mida tähendab HODL?",
    options: [
      const Option(text: "Holding isn´t useful", isCorrect: false),
      const Option(text: "Hold on for dear life", isCorrect: true),
      const Option(text: "Hold until December", isCorrect: false),
    ],
  ),
  Question(
    text: "Millega teenisid osad HODLerid palju raha(hind tõusis 60 000 peale)?",
    options: [
      const Option(text: " Bitcoin", isCorrect: true),
      const Option(text: "XRP", isCorrect: false),
      const Option(text: "ETH", isCorrect: false),
      const Option(text: "BNB", isCorrect: false),
    ],
  ),
  Question(
    text: "Kus saab hoida krüptot?",
    options: [
      const Option(text: "Mälupulgal", isCorrect: false),
      const Option(text: "Telefonis", isCorrect: false),
      const Option(text: "Taskus", isCorrect: false),
      const Option(text: "Walletis", isCorrect: true),
    ],
  ),
  Question(
    text: "Kas Phantom walletis saab hoida ainult Solanat?",
    options: [
      const Option(text: "ei", isCorrect: false),
      const Option(text: "Jah", isCorrect: true),
    ],
  ),
  Question(
    text: "Recovery phasega saad sa sisse oma exchange sisse?",
    options: [
      const Option(text: "Tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Exchange on?",
    options: [
      const Option(text: "koht kus saab krüptot luua", isCorrect: false),
      const Option(text: "koht kust osta krüptot ", isCorrect: true),
      const Option(text: "koht kus saab kaevandada krüptot", isCorrect: false),
    ],
  ),
  Question(
    text: "Kraken on turvaline exchange?",
    options: [
      const Option(text: "Jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Ledger on?",
    options: [
      const Option(text: "esemeline wallet", isCorrect: true),
      const Option(text: "digitaalne wallet", isCorrect: false),
    ],
  ),
  Question(
    text: "Kas krüptoga on võimalik tellida internetist asju?",
    options: [
      const Option(text: "Ei", isCorrect: false),
      const Option(text: "Jah", isCorrect: true),
    ],
  ),
  Question(
    text: "Krüpto hinnad muutuvad...",
    options: [
      const Option(text: "Iga nädal", isCorrect: false),
      const Option(text: "iga 6h tagant", isCorrect: false),
      const Option(text: "Igapäev, igahetk", isCorrect: true),
      const Option(text: "iga 24 h tagant", isCorrect: false),
      const Option(text: "Iga 1h tagant", isCorrect: false),
    ],
  ),
  Question(
    text: "Krüptosid järjestatakse market capi järgi.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Kas Market cap= krüpto kaubeldav kogus x krüpto praeguse hinnaga?",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "Jah", isCorrect: true),
    ],
  ),
  Question(
    text: "Kas krüptot saab hoida ka exchanges?",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Ledger on ...",
    options: [
      const Option(text: "Mälupulga moodi", isCorrect: true),
      const Option(text: "Arvuti moodi", isCorrect: false),
      const Option(text: "Tavaline rahakott", isCorrect: false),
    ],
  ),
  Question(
    text: "Mis aastast kasutatakse krüptot?",
    options: [
      const Option(text: "2010", isCorrect: false),
      const Option(text: "2007", isCorrect: false),
      const Option(text: "2008", isCorrect: false),
      const Option(text: "2009", isCorrect: true),
    ],
  ),
  Question(
    text: "Krüptosse on investeeritud ... miljardit eurot.",
    options: [
      const Option(text: "80", isCorrect: false),
      const Option(text: "8", isCorrect: false),
      const Option(text: "800", isCorrect: true),
      const Option(text: "400", isCorrect: false),
    ],
  ),
  Question(
    text: "Mitu protsent maailma rahvastikust on investeerinud krüptosse?",
    options: [
      const Option(text: "4,2", isCorrect: true),
      const Option(text: "5", isCorrect: false),
      const Option(text: "10", isCorrect: false),
      const Option(text: "3,9", isCorrect: false),
    ],
  ),
  Question(
    text: "Krüpto tundma õppimine oleks kasulik enne krüpto ostmist",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Milline portfell on parim investorile?",
    options: [
      const Option(text: "memecoindest koosnev", isCorrect: false),
      const Option(text: "mitmekesine", isCorrect: true),
      const Option(text: "shitcoinidest koosnev", isCorrect: false),
    ],
  ),
];