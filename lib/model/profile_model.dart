class UserProfile {
  String? firstName;
  String? secondName;
  String? email;
  String? uid;

  UserProfile( {
    this.firstName,
    this.secondName,
    this.uid,
    this.email,
  });

  //receive data
  factory UserProfile.fromMap(map){
    return UserProfile(
      firstName: map['firstName'],
      secondName: map['secondName'],
      uid: map['uid'],
      email: map['email'],
    );
  }

  //send data
  Map<String, dynamic> toMap(){
    return{
      'firstName': firstName,
      'secondName' : secondName,
      'email': email,
    };
  }

}