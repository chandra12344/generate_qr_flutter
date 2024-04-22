class UserData {
  UserData({
    required this.name,
    required this.email,
    required this.phone,
  });
  late final String name;
  late final String email;
  late final String phone;

  UserData.fromJson(Map<String, dynamic> json){
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['email'] = email;
    _data['phone'] = phone;
    return _data;
  }
}