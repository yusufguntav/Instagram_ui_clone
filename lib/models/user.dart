class User {
  String id;
  final String userFullName;
  final String username;
  final String email;
  final String password;

  User(
      {this.id = "",
      required this.userFullName,
      required this.username,
      required this.email,
      required this.password});

  Map<String, dynamic> toJson() => {
        "id": id,
        "userFullName": userFullName,
        "username": username,
        "email": email,
        "password": password
      };

  static User fromJson(Map<String, dynamic> json) => User(
        id: json["id"],
        userFullName: json["userFullName"],
        username: json["username"],
        email: json["email"],
        password: json["password"],
      );
}
