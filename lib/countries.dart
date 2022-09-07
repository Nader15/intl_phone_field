// see: https://en.wikipedia.org/wiki/List_of_country_calling_codes
// for list of country/calling codes

const List<Country> countries = [
    Country(
    name: "Saudi Arabia",
    flag: "🇸🇦",
    code: "SA",
    dialCode: "966",
    minLength: 9,
    maxLength: 9,
  ),
  Country(
    name: "Egypt",
    flag: "🇪🇬",
    code: "EG",
    dialCode: "20",
    minLength: 10,
    maxLength: 10,
  ),
];

class Country {
  final String name;
  final String flag;
  final String code;
  final String dialCode;
  final String regionCode;
  final int minLength;
  final int maxLength;

  const Country({
    required this.name,
    required this.flag,
    required this.code,
    required this.dialCode,
    required this.minLength,
    required this.maxLength,
    this.regionCode = "",
  });

  String get fullCountryCode {
    return this.dialCode + this.regionCode;
  }

  String get displayCC {
    if (this.regionCode != "") {
      return "${this.dialCode} ${this.regionCode}";
    }
    return this.dialCode;
  }
}
