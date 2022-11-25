class AirResult {
  late String status;
  late Data data;

  AirResult({required this.status, required this.data});

  AirResult.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    data = (json['data'] != null ? Data.fromJson(json['data']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['status'] = status;
    data['data'] = this.data.toJson();
    return data;
  }
}

class Data {
  late String city;
  late String state;
  late String country;
  late Location location;
  late Current current;

  Data(
      {required this.city,
      required this.state,
      required this.country,
      required this.location,
      required this.current});

  Data.fromJson(Map<String, dynamic> json) {
    city = json['city'];
    state = json['state'];
    country = json['country'];
    location = (json['location'] != null
        ? Location.fromJson(json['location'])
        : null)!;
    current =
        (json['current'] != null ? Current.fromJson(json['current']) : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['city'] = city;
    data['state'] = state;
    data['country'] = country;
    data['location'] = location.toJson();
    data['current'] = current.toJson();
    return data;
  }
}

class Location {
  late String type;
  late List<double> coordinates;

  Location({required this.type, required this.coordinates});

  Location.fromJson(Map<String, dynamic> json) {
    type = json['type'];
    coordinates = json['coordinates'].cast<double>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['type'] = type;
    data['coordinates'] = coordinates;
    return data;
  }
}

class Current {
  late Weather weather;
  late Pollution pollution;

  Current({required this.weather, required this.pollution});

  Current.fromJson(Map<String, dynamic> json) {
    weather =
        (json['weather'] != null ? Weather.fromJson(json['weather']) : null)!;
    pollution = (json['pollution'] != null
        ? Pollution.fromJson(json['pollution'])
        : null)!;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['weather'] = weather.toJson();
    data['pollution'] = pollution.toJson();
    return data;
  }
}

class Weather {
  late String ts;
  late int iV;
  late String createdAt;
  late int hu;
  late String ic;
  late int pr;
  late int tp;
  late String updatedAt;
  late int wd;
  late double ws;

  Weather(
      {required this.ts,
      required this.iV,
      required this.createdAt,
      required this.hu,
      required this.ic,
      required this.pr,
      required this.tp,
      required this.updatedAt,
      required this.wd,
      required this.ws});

  Weather.fromJson(Map<String, dynamic> json) {
    ts = json['ts'];
    iV = json['__v'];
    createdAt = json['createdAt'];
    hu = json['hu'];
    ic = json['ic'];
    pr = json['pr'];
    tp = json['tp'];
    updatedAt = json['updatedAt'];
    wd = json['wd'];
    ws = json['ws'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ts'] = ts;
    data['__v'] = iV;
    data['createdAt'] = createdAt;
    data['hu'] = hu;
    data['ic'] = ic;
    data['pr'] = pr;
    data['tp'] = tp;
    data['updatedAt'] = updatedAt;
    data['wd'] = wd;
    data['ws'] = ws;
    return data;
  }
}

class Pollution {
  late String ts;
  late dynamic aqius;
  late String mainus;
  late int aqicn;
  late String maincn;

  Pollution(
      {required this.ts,
      required this.aqius,
      required this.mainus,
      required this.aqicn,
      required this.maincn});

  Pollution.fromJson(Map<String, dynamic> json) {
    ts = json['ts'];
    aqius = json['aqius'];
    mainus = json['mainus'];
    aqicn = json['aqicn'];
    maincn = json['maincn'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ts'] = ts;
    data['aqius'] = aqius;
    data['mainus'] = mainus;
    data['aqicn'] = aqicn;
    data['maincn'] = maincn;
    return data;
  }
}
