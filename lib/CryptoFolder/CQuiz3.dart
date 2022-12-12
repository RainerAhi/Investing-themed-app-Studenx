

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
    text: "NFT on unikaalne ja ...?",
    options: [
      const Option(text: "ilus", isCorrect: false),
      const Option(text: "varastamatu", isCorrect: false),
      const Option(text: "võltsimatu", isCorrect: true),
      const Option(text: "kallis", isCorrect: false),
    ],
  ),
  Question(
    text: "NFT-sid saab osta ...?",
    options: [
      const Option(text: "rahaga", isCorrect: false),
      const Option(text: "ainult EURO-ga", isCorrect: false),
      const Option(text: "ainult USD-ga", isCorrect: false),
      const Option(text: "krüptoga", isCorrect: true),
    ],
  ),
  Question(
    text: "NFT-d on väga halvad rahaallikad, kuid ilusad.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "NFT-sid on lihtne osta.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "NFT-sid saab ainult mintida.",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Mintimine on ostmine enne kui need avalikult kõigile müüki lähevad.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "NFT-d on väga turvalised investeeringud.",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "BTC NFT-d on kõige paremad.",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: false),
      const Option(text: "neid ei ole olemas", isCorrect: true),
      const Option(text: "ainult osad on väga head", isCorrect: false),
    ],
  ),
  Question(
    text: "Tuntumad kujud NFT-de peal on...?",
    options: [
      const Option(text: "karud", isCorrect: false),
      const Option(text: "ahvid", isCorrect: true),
      const Option(text: "kalad", isCorrect: false),
      const Option(text: "kummitused", isCorrect: false),
    ],
  ),
  Question(
    text: "SOL NFT-d on aastal 2021-2022 väga palju populaarsust kogunud.",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Okay Bulls on üks suurimaid NFT kollektsioone.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "NFT-sid soovitame HODLida.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Invisible DeGods on väga suur ETH NFT kollektsioon.",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "OpenSea on väga riskantne koht kust osta NFT-sid.",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Kaevandamine on väga kulukas.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Kaevandamise käigus saad sa krüptot.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Kaevandamine ei ole mõistlik tava inimese jaoks",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Kõige tähtsam asi kaevandamise juures on protsessor.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Kaevandamisega saab tegeleda ainult rikas inimene.",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Turvaline krüpto on rug pull.",
    options: [
      const Option(text: "ei", isCorrect: true),
      const Option(text: "jah", isCorrect: false),
    ],
  ),
  Question(
    text: "SquidGameCoin on rug pull.",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Roadmap on oluline ... krüpto juures.",
    options: [
      const Option(text: "kalli ", isCorrect: false),
      const Option(text: "odava", isCorrect: false),
      const Option(text: "rug pull", isCorrect: false),
      const Option(text: "hea", isCorrect: true),
    ],
  ),
  Question(
    text: "Sotsiaalmeediast on võimalik leida häid krüptosid.",
    options: [
      const Option(text: "väär", isCorrect: false),
      const Option(text: "tõene", isCorrect: true),
    ],
  ),
  Question(
    text: "ETH ja SOL NFT-d on suurimad NFT-d",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "NFT-sid ei ole võimalik kaevandada",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "NFT-sid ei saa...",
    options: [
      const Option(text: "stake-ida", isCorrect: true),
      const Option(text: "osta", isCorrect: false),
      const Option(text: "mintida", isCorrect: false),
      const Option(text: "ise luua", isCorrect: false),
    ],
  ),
  Question(
    text: "Krüpto kaevandamine on keskkonnale halb",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Riigid üritavad krüptot enda jaoks kasulikumaks teha.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Plokiahel on teatud tüüpi jagatud andmebaas",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "DeFi põhineb samal tehnoloogial nagu aktsiad.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Whitepaper on mõttetu asi.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Whitepaper annab kasuliku infot",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
];