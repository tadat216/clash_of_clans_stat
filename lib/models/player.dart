class Player {
  Player({
      String? tag, 
      String? name, 
      num? townHallLevel, 
      num? townHallWeaponLevel, 
      num? expLevel, 
      num? trophies, 
      num? bestTrophies, 
      num? warStars, 
      num? attackWins, 
      num? defenseWins, 
      num? builderHallLevel, 
      num? builderBaseTrophies, 
      num? bestBuilderBaseTrophies, 
      String? role, 
      String? warPreference, 
      num? donations, 
      num? donationsReceived, 
      Clan? clan, 
      League? league, 
      LegendStatistics? legendStatistics,}){
    _tag = tag;
    _name = name;
    _townHallLevel = townHallLevel;
    _townHallWeaponLevel = townHallWeaponLevel;
    _expLevel = expLevel;
    _trophies = trophies;
    _bestTrophies = bestTrophies;
    _warStars = warStars;
    _attackWins = attackWins;
    _defenseWins = defenseWins;
    _builderHallLevel = builderHallLevel;
    _builderBaseTrophies = builderBaseTrophies;
    _bestBuilderBaseTrophies = bestBuilderBaseTrophies;
    _role = role;
    _warPreference = warPreference;
    _donations = donations;
    _donationsReceived = donationsReceived;
    _clan = clan;
    _league = league;
    _legendStatistics = legendStatistics;
}

  Player.fromJson(dynamic json) {
    _tag = json['tag'];
    _name = json['name'];
    _townHallLevel = json['townHallLevel'];
    _townHallWeaponLevel = json['townHallWeaponLevel'];
    _expLevel = json['expLevel'];
    _trophies = json['trophies'];
    _bestTrophies = json['bestTrophies'];
    _warStars = json['warStars'];
    _attackWins = json['attackWins'];
    _defenseWins = json['defenseWins'];
    _builderHallLevel = json['builderHallLevel'];
    _builderBaseTrophies = json['builderBaseTrophies'];
    _bestBuilderBaseTrophies = json['bestBuilderBaseTrophies'];
    _role = json['role'];
    _warPreference = json['warPreference'];
    _donations = json['donations'];
    _donationsReceived = json['donationsReceived'];
    _clan = json['clan'] != null ? Clan.fromJson(json['clan']) : null;
    _league = json['league'] != null ? League.fromJson(json['league']) : null;
    _legendStatistics = json['legendStatistics'] != null ? LegendStatistics.fromJson(json['legendStatistics']) : null;
  }
  String? _tag;
  String? _name;
  num? _townHallLevel;
  num? _townHallWeaponLevel;
  num? _expLevel;
  num? _trophies;
  num? _bestTrophies;
  num? _warStars;
  num? _attackWins;
  num? _defenseWins;
  num? _builderHallLevel;
  num? _builderBaseTrophies;
  num? _bestBuilderBaseTrophies;
  String? _role;
  String? _warPreference;
  num? _donations;
  num? _donationsReceived;
  Clan? _clan;
  League? _league;
  LegendStatistics? _legendStatistics;
Player copyWith({  String? tag,
  String? name,
  num? townHallLevel,
  num? townHallWeaponLevel,
  num? expLevel,
  num? trophies,
  num? bestTrophies,
  num? warStars,
  num? attackWins,
  num? defenseWins,
  num? builderHallLevel,
  num? builderBaseTrophies,
  num? bestBuilderBaseTrophies,
  String? role,
  String? warPreference,
  num? donations,
  num? donationsReceived,
  Clan? clan,
  League? league,
  LegendStatistics? legendStatistics,
}) => Player(  tag: tag ?? _tag,
  name: name ?? _name,
  townHallLevel: townHallLevel ?? _townHallLevel,
  townHallWeaponLevel: townHallWeaponLevel ?? _townHallWeaponLevel,
  expLevel: expLevel ?? _expLevel,
  trophies: trophies ?? _trophies,
  bestTrophies: bestTrophies ?? _bestTrophies,
  warStars: warStars ?? _warStars,
  attackWins: attackWins ?? _attackWins,
  defenseWins: defenseWins ?? _defenseWins,
  builderHallLevel: builderHallLevel ?? _builderHallLevel,
  builderBaseTrophies: builderBaseTrophies ?? _builderBaseTrophies,
  bestBuilderBaseTrophies: bestBuilderBaseTrophies ?? _bestBuilderBaseTrophies,
  role: role ?? _role,
  warPreference: warPreference ?? _warPreference,
  donations: donations ?? _donations,
  donationsReceived: donationsReceived ?? _donationsReceived,
  clan: clan ?? _clan,
  league: league ?? _league,
  legendStatistics: legendStatistics ?? _legendStatistics,
);
  String? get tag => _tag;
  String? get name => _name;
  num? get townHallLevel => _townHallLevel;
  num? get townHallWeaponLevel => _townHallWeaponLevel;
  num? get expLevel => _expLevel;
  num? get trophies => _trophies;
  num? get bestTrophies => _bestTrophies;
  num? get warStars => _warStars;
  num? get attackWins => _attackWins;
  num? get defenseWins => _defenseWins;
  num? get builderHallLevel => _builderHallLevel;
  num? get builderBaseTrophies => _builderBaseTrophies;
  num? get bestBuilderBaseTrophies => _bestBuilderBaseTrophies;
  String? get role => _role;
  String? get warPreference => _warPreference;
  num? get donations => _donations;
  num? get donationsReceived => _donationsReceived;
  Clan? get clan => _clan;
  League? get league => _league;
  LegendStatistics? get legendStatistics => _legendStatistics;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tag'] = _tag;
    map['name'] = _name;
    map['townHallLevel'] = _townHallLevel;
    map['townHallWeaponLevel'] = _townHallWeaponLevel;
    map['expLevel'] = _expLevel;
    map['trophies'] = _trophies;
    map['bestTrophies'] = _bestTrophies;
    map['warStars'] = _warStars;
    map['attackWins'] = _attackWins;
    map['defenseWins'] = _defenseWins;
    map['builderHallLevel'] = _builderHallLevel;
    map['builderBaseTrophies'] = _builderBaseTrophies;
    map['bestBuilderBaseTrophies'] = _bestBuilderBaseTrophies;
    map['role'] = _role;
    map['warPreference'] = _warPreference;
    map['donations'] = _donations;
    map['donationsReceived'] = _donationsReceived;
    if (_clan != null) {
      map['clan'] = _clan?.toJson();
    }
    if (_league != null) {
      map['league'] = _league?.toJson();
    }
    if (_legendStatistics != null) {
      map['legendStatistics'] = _legendStatistics?.toJson();
    }
    return map;
  }

}

class LegendStatistics {
  LegendStatistics({
      num? legendTrophies, 
      PreviousSeason? previousSeason, 
      BestSeason? bestSeason, 
      CurrentSeason? currentSeason,}){
    _legendTrophies = legendTrophies;
    _previousSeason = previousSeason;
    _bestSeason = bestSeason;
    _currentSeason = currentSeason;
}

  LegendStatistics.fromJson(dynamic json) {
    _legendTrophies = json['legendTrophies'];
    _previousSeason = json['previousSeason'] != null ? PreviousSeason.fromJson(json['previousSeason']) : null;
    _bestSeason = json['bestSeason'] != null ? BestSeason.fromJson(json['bestSeason']) : null;
    _currentSeason = json['currentSeason'] != null ? CurrentSeason.fromJson(json['currentSeason']) : null;
  }
  num? _legendTrophies;
  PreviousSeason? _previousSeason;
  BestSeason? _bestSeason;
  CurrentSeason? _currentSeason;
LegendStatistics copyWith({  num? legendTrophies,
  PreviousSeason? previousSeason,
  BestSeason? bestSeason,
  CurrentSeason? currentSeason,
}) => LegendStatistics(  legendTrophies: legendTrophies ?? _legendTrophies,
  previousSeason: previousSeason ?? _previousSeason,
  bestSeason: bestSeason ?? _bestSeason,
  currentSeason: currentSeason ?? _currentSeason,
);
  num? get legendTrophies => _legendTrophies;
  PreviousSeason? get previousSeason => _previousSeason;
  BestSeason? get bestSeason => _bestSeason;
  CurrentSeason? get currentSeason => _currentSeason;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['legendTrophies'] = _legendTrophies;
    if (_previousSeason != null) {
      map['previousSeason'] = _previousSeason?.toJson();
    }
    if (_bestSeason != null) {
      map['bestSeason'] = _bestSeason?.toJson();
    }
    if (_currentSeason != null) {
      map['currentSeason'] = _currentSeason?.toJson();
    }
    return map;
  }

}

class CurrentSeason {
  CurrentSeason({
      num? rank, 
      num? trophies,}){
    _rank = rank;
    _trophies = trophies;
}

  CurrentSeason.fromJson(dynamic json) {
    _rank = json['rank'];
    _trophies = json['trophies'];
  }
  num? _rank;
  num? _trophies;
CurrentSeason copyWith({  num? rank,
  num? trophies,
}) => CurrentSeason(  rank: rank ?? _rank,
  trophies: trophies ?? _trophies,
);
  num? get rank => _rank;
  num? get trophies => _trophies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['rank'] = _rank;
    map['trophies'] = _trophies;
    return map;
  }

}

class BestSeason {
  BestSeason({
      String? id, 
      num? rank, 
      num? trophies,}){
    _id = id;
    _rank = rank;
    _trophies = trophies;
}

  BestSeason.fromJson(dynamic json) {
    _id = json['id'];
    _rank = json['rank'];
    _trophies = json['trophies'];
  }
  String? _id;
  num? _rank;
  num? _trophies;
BestSeason copyWith({  String? id,
  num? rank,
  num? trophies,
}) => BestSeason(  id: id ?? _id,
  rank: rank ?? _rank,
  trophies: trophies ?? _trophies,
);
  String? get id => _id;
  num? get rank => _rank;
  num? get trophies => _trophies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['rank'] = _rank;
    map['trophies'] = _trophies;
    return map;
  }

}

class PreviousSeason {
  PreviousSeason({
      String? id, 
      num? rank, 
      num? trophies,}){
    _id = id;
    _rank = rank;
    _trophies = trophies;
}

  PreviousSeason.fromJson(dynamic json) {
    _id = json['id'];
    _rank = json['rank'];
    _trophies = json['trophies'];
  }
  String? _id;
  num? _rank;
  num? _trophies;
PreviousSeason copyWith({  String? id,
  num? rank,
  num? trophies,
}) => PreviousSeason(  id: id ?? _id,
  rank: rank ?? _rank,
  trophies: trophies ?? _trophies,
);
  String? get id => _id;
  num? get rank => _rank;
  num? get trophies => _trophies;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['rank'] = _rank;
    map['trophies'] = _trophies;
    return map;
  }

}

class League {
  League({
      num? id, 
      String? name, 
      IconUrls? iconUrls,}){
    _id = id;
    _name = name;
    _iconUrls = iconUrls;
}

  League.fromJson(dynamic json) {
    _id = json['id'];
    _name = json['name'];
    _iconUrls = json['iconUrls'] != null ? IconUrls.fromJson(json['iconUrls']) : null;
  }
  num? _id;
  String? _name;
  IconUrls? _iconUrls;
League copyWith({  num? id,
  String? name,
  IconUrls? iconUrls,
}) => League(  id: id ?? _id,
  name: name ?? _name,
  iconUrls: iconUrls ?? _iconUrls,
);
  num? get id => _id;
  String? get name => _name;
  IconUrls? get iconUrls => _iconUrls;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = _id;
    map['name'] = _name;
    if (_iconUrls != null) {
      map['iconUrls'] = _iconUrls?.toJson();
    }
    return map;
  }

}

class IconUrls {
  IconUrls({
      String? small, 
      String? tiny, 
      String? medium,}){
    _small = small;
    _tiny = tiny;
    _medium = medium;
}

  IconUrls.fromJson(dynamic json) {
    _small = json['small'];
    _tiny = json['tiny'];
    _medium = json['medium'];
  }
  String? _small;
  String? _tiny;
  String? _medium;
IconUrls copyWith({  String? small,
  String? tiny,
  String? medium,
}) => IconUrls(  small: small ?? _small,
  tiny: tiny ?? _tiny,
  medium: medium ?? _medium,
);
  String? get small => _small;
  String? get tiny => _tiny;
  String? get medium => _medium;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['small'] = _small;
    map['tiny'] = _tiny;
    map['medium'] = _medium;
    return map;
  }

}

class Clan {
  Clan({
      String? tag, 
      String? name, 
      num? clanLevel, 
      BadgeeUrls? badgeeUrls,}){
    _tag = tag;
    _name = name;
    _clanLevel = clanLevel;
    _badgeeUrls = badgeeUrls;
}

  Clan.fromJson(dynamic json) {
    _tag = json['tag'];
    _name = json['name'];
    _clanLevel = json['clanLevel'];
    _badgeeUrls = json['badgeeUrls'] != null ? BadgeeUrls.fromJson(json['badgeeUrls']) : null;
  }
  String? _tag;
  String? _name;
  num? _clanLevel;
  BadgeeUrls? _badgeeUrls;
Clan copyWith({  String? tag,
  String? name,
  num? clanLevel,
  BadgeeUrls? badgeeUrls,
}) => Clan(  tag: tag ?? _tag,
  name: name ?? _name,
  clanLevel: clanLevel ?? _clanLevel,
  badgeeUrls: badgeeUrls ?? _badgeeUrls,
);
  String? get tag => _tag;
  String? get name => _name;
  num? get clanLevel => _clanLevel;
  BadgeeUrls? get badgeeUrls => _badgeeUrls;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['tag'] = _tag;
    map['name'] = _name;
    map['clanLevel'] = _clanLevel;
    if (_badgeeUrls != null) {
      map['badgeeUrls'] = _badgeeUrls?.toJson();
    }
    return map;
  }

}

class BadgeeUrls {
  BadgeeUrls({
      String? small, 
      String? large, 
      String? medium,}){
    _small = small;
    _large = large;
    _medium = medium;
}

  BadgeeUrls.fromJson(dynamic json) {
    _small = json['small'];
    _large = json['large'];
    _medium = json['medium'];
  }
  String? _small;
  String? _large;
  String? _medium;
BadgeeUrls copyWith({  String? small,
  String? large,
  String? medium,
}) => BadgeeUrls(  small: small ?? _small,
  large: large ?? _large,
  medium: medium ?? _medium,
);
  String? get small => _small;
  String? get large => _large;
  String? get medium => _medium;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['small'] = _small;
    map['large'] = _large;
    map['medium'] = _medium;
    return map;
  }

}