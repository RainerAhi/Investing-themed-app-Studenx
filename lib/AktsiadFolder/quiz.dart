

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
    text: "Aktsiad on valuutad?",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Ettevõtete jaoks on aktsiad raha kogumise meetod.",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Aktsiad on riskantsemad kui krüpto.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Miks aktsiaid omatakse?",
    options: [
      const Option(text: "äge", isCorrect: false),
      const Option(text: "kasum", isCorrect: true),
      const Option(text: "aitab tulevikus tööd saada", isCorrect: false),
    ],
  ),
  Question(
    text: "Dividendid on osamaksed investoritele ettevõtte sissetulekust ja neid makstakse tavaliselt kord aastas.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Kõik firmad maksavad dividende.",
    options: [
      const Option(text: "tõene", isCorrect: false),
      const Option(text: "väär", isCorrect: true),
    ],
  ),
  Question(
    text: "Mõistlik on osta palju aktsiaid samast sektorist",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Aktsiad ei saa kukkuda allapoole ostu hinda",
    options: [
      const Option(text: "väär", isCorrect: true),
      const Option(text: "tõene", isCorrect: false),
    ],
  ),
  Question(
    text: "Kui ühe aktsia hind kukub, siis alati kukub ka teiste aktsiate hind",
    options: [
      const Option(text: "väär", isCorrect: true),
      const Option(text: "tõene", isCorrect: false),
    ],
  ),
  Question(
    text: "Aktsiaid oleks mõistlik osta selle riigi asutusest kus sa elad",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "USA aktsiate ostmisel Eestist kaasneb ka suurem teenustasu",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Pikaajaline aktsiate omamine=12 kuud või rohkem",
    options: [
      const Option(text: "väär", isCorrect: false),
      const Option(text: "tõene", isCorrect: true),
    ],
  ),
  Question(
    text: "Varaklass viitab .... investeeringu kategooriale",
    options: [
      const Option(text: "kalli", isCorrect: false),
      const Option(text: "odava", isCorrect: false),
      const Option(text: "konkreetse", isCorrect: true),
      const Option(text: "välismaa", isCorrect: false),
    ],
  ),
  Question(
    text: "Kas aktsiaid peetakse pikaajaliseks investeeringuks?",
    options: [
      const Option(text: "ei", isCorrect: false),
      const Option(text: "jah", isCorrect: true),
    ],
  ),
  Question(
    text: "See on ebatavaline kui aktsia kõigub 10-20% või rohkem",
    options: [
      const Option(text: "ei", isCorrect: false),
      const Option(text: "jah", isCorrect: true),
    ],
  ),
  Question(
    text: "See on ebatavaline kui aktsia kõigub 10-20%",
    options: [
      const Option(text: "jah", isCorrect: false),
      const Option(text: "ei", isCorrect: true),
    ],
  ),
  Question(
    text: "Kõrgelt ostmine ja madalalt maha müümine on halb",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Investorid tihti kahetsevad oma ostu otsuseid",
    options: [
      const Option(text: "jah", isCorrect: true),
      const Option(text: "ei", isCorrect: false),
    ],
  ),
  Question(
    text: "Mida rohkem aktsiaid sa omad seda rohkem dividende sa saad",
    options: [
      const Option(text: "ei", isCorrect: false),
      const Option(text: "jah", isCorrect: true),
    ],
  ),
  Question(
    text: "Liigne turu jälgimine võib olla kahjustav",
    options: [
      const Option(text: "ei", isCorrect: false),
      const Option(text: "jah", isCorrect: true),
    ],
  ),
  Question(
    text: "Dollar-Cost Averaging eemaldab vajaduse ajastada turgu",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Dollar-Cost Averaging toetab ka nt. igakuist investeerimist",
    options: [
      const Option(text: "ei", isCorrect: false),
      const Option(text: "jah", isCorrect: true),
    ],
  ),
  Question(
    text: "Mida varem alustada investeerimisega seda parem",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Investeerimise alustamiseks ei ole vaja suuri rahasummasid",
    options: [
      const Option(text: "tõene", isCorrect: true),
      const Option(text: "väär", isCorrect: false),
    ],
  ),
  Question(
    text: "Lühiajaline investeerimine ei ole eriti tulukas",
    options: [
      const Option(text: "väär", isCorrect: false),
      const Option(text: "tõene", isCorrect: true),
    ],
  ),
  Question(
    text: "Järjepidevus on väga tähtis",
    options: [
      const Option(text: "väär", isCorrect: false),
      const Option(text: "tõene", isCorrect: true),
    ],
  ),
  Question(
    text: "Ära uuri aktsia kohta enne selle ostmist",
    options: [
      const Option(text: "väär", isCorrect: true),
      const Option(text: "tõene", isCorrect: false),
    ],
  ),
  Question(
    text: "Ettevõte aktsia hind ja kasum ei ole tähtis investeermisel",
    options: [
      const Option(text: "väär", isCorrect: true),
      const Option(text: "tõene", isCorrect: false),
    ],
  ),
];