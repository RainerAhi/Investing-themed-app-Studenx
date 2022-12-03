import 'package:gsheets/gsheets.dart';

class GoogleSheetsApi {

  static const _credentials = r'''
{
  "type": "service_account",
  "project_id": "notes-361507",
  "private_key_id": "4decea43ec51d4f7efff3f62bab24fe4a28ee5ef",
  "private_key": "-----BEGIN PRIVATE KEY-----\nMIIEvgIBADANBgkqhkiG9w0BAQEFAASCBKgwggSkAgEAAoIBAQDHtsKYO4d/Gk5b\nb89Oq8tZx4vjjmLhPPhVVeGFMWp9bJwzYObf0SnFQgmk2BEXYjpPlSv3pwKGGH9p\n4ziODgjML0lELUP3fhUQv3lEazVPwZ1Q/JkD8+/tqaq53+DZan7jS8CT2mLNIoQv\nOpZZQ4FUglXVlBngwus7iMPS7uEn96phFlva6+G5Do/FaYA42MPfy7rKPw8mvBgl\nkDkryN1h6PKW175OecBfcgjH9hCQODQKic8fL8K8Ef2IYEToAej9zAW2rNB/reac\n7SQqtmKHMWDM89dcp2S4CNM26QY6qXNx8fc/ryZaJusY+ysVCD3NwquxVcBjonyI\nBiEAeaNVAgMBAAECggEAAkZi0EfJDIrNGn/wfLt2YN8IGhrRg6m2iNz7lAAqXsZR\njGKty2Ja91IADh90Odp/ZJyuhyIyKH9IzvBgEgOD+qxA0hGXzHmGiHAKMbn913kB\niRWzQqYACplq+WCpwDruugY8FIyuS7Rw0QdPSYdrMVOl8zC+KR8CfaEeqe5yrRLJ\nuV/xIAA7dCnar1e2jVY9JmWJT/WzBxsNNCqqSeDJseeCovPvRp1iHIGtZRbOx/wZ\n8UbfLk2U2YcLaNK4I46giR1OgWXq8Ny6k9uyZDdtAXhg4H2K6o+OTmpmc3NtpHJe\nwq18FVHwkQdW6+Wl1TAoupNVkweGORg9nQDGg9somQKBgQDy8oBWffMuQKHfGrFX\ncRF6zJunIRIIyf/XOgIE/xsU4LUgDOdRKCD/FfpAg0+BIklG4ZZMWFn+d5kDfWYH\ncU7P7mdYabVtwgWVPCE13sr6l6e3uMOFC7041hvxPMSpYM5V2dB729KFRyOy6V+B\nv9jfeN29CDQg/1e2hT8mU1cp4wKBgQDScaB1CXlePsb5r8uU63HwBK/hIJ8s29y/\nYdazXvhdpH+U+Yjgxr5gKiEI7mTygzYv2ohFm9K4LqdK1YeO8A8DkVhHgmhuuhzr\nWljab9/UoXjaTF/8I7dZzDGI9fobJRxb66CakjdtWaPnv2SRLdIfiAk68CxNv3DY\nmtqfSgdjZwKBgHiD70H4jK9/BE1mMl7MCf2+jeAkOYv+mFktv163Jbn/lhnmDMFn\nhKbFQjTKbqACYBM3SJVqponizha7F+fNP2lKPB3RolxmCNr0zwyoDkys+lfa4bKY\nFi+hlo7etDfJe9F+kTs/2niex4iy19vHTU/d5zEkZqePwvUZuC/M28o9AoGBAMoY\nVsiufYCVdw4n1bFA3l1qkuD3LAWvavHb6oy9YnTDWcZeUSXTltXQ/4KNNiJzAaG5\nEu8OMrGwE/ZY02LghPqfJREfWl0jnEwkqnmzwFd5bg7uE6uXPSgeYV+vIS3aWL6p\nrMVkL5hy4mXXNqP5RfYD9SFFrrZHZ/6Lz/Hy7N93AoGBAIQATiWolCnMWCj24jHc\nQq7cA/zUOHYVidDMdIwN0bh7FP6X7Q2k09FTbZTigIhkDWbmfBwhf0kS8DLX0SaL\nJ1beTl0IGOWitMruKkPBUd/yJdB9yV9vhqMjW5KG4Fc4IfG4U9Deb9V0YwGd2OZh\nF4fzNU0Ezf1ZyMzS7l1NZaqn\n-----END PRIVATE KEY-----\n",
  "client_email": "flutternotes@notes-361507.iam.gserviceaccount.com",
  "client_id": "103069127172726902610",
  "auth_uri": "https://accounts.google.com/o/oauth2/auth",
  "token_uri": "https://oauth2.googleapis.com/token",
  "auth_provider_x509_cert_url": "https://www.googleapis.com/oauth2/v1/certs",
  "client_x509_cert_url": "https://www.googleapis.com/robot/v1/metadata/x509/flutternotes%40notes-361507.iam.gserviceaccount.com"
}

''';

  static final _spreadsheetId = "1Yx2ZROiOu7BhZUz4VkCuJv-KDaExJZftmWPBWvJqrak";
  static final _gsheets = GSheets(_credentials);
  static Worksheet? _worksheet;

  static int numberOfNotes = 0;
  static List<String> currentNotes = [];
  static bool loading = true;

  Future init() async {
    final ss = await _gsheets.spreadsheet(_spreadsheetId);
    _worksheet = ss.worksheetByTitle("Worksheet1");
    countRows();
  }

  static Future countRows() async {
    while (
    (await _worksheet!.values.value(column: 1, row: numberOfNotes + 1)) !=
        '') {
      numberOfNotes++;
    }
    loadNotes();
  }
  static Future loadNotes() async {
    if (_worksheet == null) return;

    for (int i = 0; i < numberOfNotes; i++) {
      final String newNote =
      await _worksheet!.values.value(column: 1, row: i +1  );
      final String newNote2 =
      await _worksheet!.values.value(column: 2, row: i +1  );
      if (currentNotes.length < numberOfNotes) {
        currentNotes.add(newNote);
        currentNotes.add(newNote2);
      }
    }

    loading = false;
  }


  static Future insert(String note) async {
    if (_worksheet == null) return;
    numberOfNotes++;
    currentNotes.add(note);
    await _worksheet!.values.appendRow([note]);
  }
}