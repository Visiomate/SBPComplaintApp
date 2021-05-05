class Users {
  String token;
  String name;
  String email;
  String cnic;
  String mobileNumber;
  String address;

  Users({
    this.token,
    this.name,
    this.email,
    this.cnic,
    this.mobileNumber,
    this.address,
  });

  Map toJson(Users user) {
    var data = Map<String, dynamic>();
    data['token'] = user.token;
    data['name'] = user.name;
    data['email'] = user.email;
    data['cnic'] = user.cnic;
    data['mobileNumber'] = user.mobileNumber;
    data['address'] = user.address;

    return data;
  }

  Users.fromJson(Map<String, dynamic> mapData) {
    this.token = mapData['token'];
    this.name = mapData['name'];
    this.email = mapData['email'];
    this.cnic = mapData['cnic'];
    this.mobileNumber = mapData['mobileNumber'];
    this.address = mapData['address'];
  }
}
