class model_login {
  int? status;
  String? token;
  List<Result_model_login>? result;

  model_login({this.status, this.token, this.result});

  model_login.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    token = json['token'];
    if (json['result'] != null) {
      result = <Result_model_login>[];
      json['result'].forEach((v) {
        result!.add(new Result_model_login.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['token'] = this.token;
    if (this.result != null) {
      data['result'] = this.result!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Result_model_login {
  int? id;
  String? email;
  String? username;
  String? password;

  Result_model_login({this.id, this.email, this.username, this.password});

  Result_model_login.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    email = json['email'];
    username = json['username'];
    password = json['password'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['email'] = this.email;
    data['username'] = this.username;
    data['password'] = this.password;
    return data;
  }
}
