class GetCharacterResp {
  Info? info;
  List<Results>? results;

  GetCharacterResp({this.info, this.results});

  GetCharacterResp.fromJson(Map<String, dynamic> json) {
    info = json['info'] != null ? Info.fromJson(json['info']) : null;
    if (json['results'] != null) {
      results = <Results>[];
      json['results'].forEach((v) {
        results?.add(Results.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.info != null) {
      data['info'] = this.info?.toJson();
    }
    if (this.results != null) {
      data['results'] = this.results?.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Info {
  int? count;
  int? pages;
  String? next;
  Null? prev;

  Info({this.count, this.pages, this.next, this.prev});

  Info.fromJson(Map<String, dynamic> json) {
    count = json['count'];
    pages = json['pages'];
    next = json['next'];
    prev = json['prev'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.count != null) {
      data['count'] = this.count;
    }
    if (this.pages != null) {
      data['pages'] = this.pages;
    }
    if (this.next != null) {
      data['next'] = this.next;
    }
    if (this.prev != null) {
      data['prev'] = this.prev;
    }
    return data;
  }
}

class Results {
  int? id;
  String? name;
  String? status;
  String? species;
  String? type;
  String? gender;
  Origin? origin;
  Location? location;
  String? image;
  List<String>? episode;
  String? url;
  String? created;

  Results(
      {this.id,
      this.name,
      this.status,
      this.species,
      this.type,
      this.gender,
      this.origin,
      this.location,
      this.image,
      this.episode,
      this.url,
      this.created});

  Results.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    status = json['status'];
    species = json['species'];
    type = json['type'];
    gender = json['gender'];
    origin = json['origin'] != null ? Origin.fromJson(json['origin']) : null;
    location =
        json['location'] != null ? Location.fromJson(json['location']) : null;
    image = json['image'];
    episode = json['episode'].cast<String>();
    url = json['url'];
    created = json['created'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.id != null) {
      data['id'] = this.id;
    }
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.status != null) {
      data['status'] = this.status;
    }
    if (this.species != null) {
      data['species'] = this.species;
    }
    if (this.type != null) {
      data['type'] = this.type;
    }
    if (this.gender != null) {
      data['gender'] = this.gender;
    }
    if (this.origin != null) {
      data['origin'] = this.origin?.toJson();
    }
    if (this.location != null) {
      data['location'] = this.location?.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image;
    }
    if (this.episode != null) {
      data['episode'] = this.episode;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    if (this.created != null) {
      data['created'] = this.created;
    }
    return data;
  }
}

class Origin {
  String? name;
  String? url;

  Origin({this.name, this.url});

  Origin.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}

class Location {
  String? name;
  String? url;

  Location({this.name, this.url});

  Location.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = {};
    if (this.name != null) {
      data['name'] = this.name;
    }
    if (this.url != null) {
      data['url'] = this.url;
    }
    return data;
  }
}
