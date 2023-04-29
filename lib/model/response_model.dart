class DummyData {
  String? status;
  UserData? userData;

  DummyData({this.status, this.userData});

  DummyData.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    return data;
  }
}

class UserData {
  String? username;
  String? location;
  String? about;
  int? years;
  int? projects;
  int? clients;

  UserData(
      {this.username,
      this.location,
      this.about,
      this.years,
      this.projects,
      this.clients});

  UserData.fromJson(Map<String, dynamic> json) {
    username = json['username'];
    location = json['location'];
    about = json['about'];
    years = json['years'];
    projects = json['projects'];
    clients = json['clients'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['username'] = this.username;
    data['location'] = this.location;
    data['about'] = this.about;
    data['years'] = this.years;
    data['projects'] = this.projects;
    data['clients'] = this.clients;
    return data;
  }
}
