class Usermodel {
  String? uid;
  String? email;
  String? name;
  String? phone;
  String? city;
  String? country;

  Usermodel(
      {this.uid, this.email, this.phone, this.city, this.country, this.name});

  //receive data to server

  factory Usermodel.fromMap(map) {
    return Usermodel(
      uid: map['uid'],
      email: map['email'],
      phone: map['phone'],
      city: map['city'],
      country: map['country'],
      name: map['name'],
    );
  }
  //sending data to server
  Map<String, dynamic> toMap() {
    return {
      'uid': uid,
      'email': email,
      'phone': phone,
      'name': name,
      'city': city,
      'country': country,
    };
  }
}
