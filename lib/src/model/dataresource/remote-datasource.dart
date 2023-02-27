class PopUpData {
  List<Result2>? result2;
  int? code;
  String? message;

  PopUpData({this.result2, this.code, this.message});

  PopUpData.fromJson(Map<String, dynamic> json) {
    if (json['result2'] != null) {
      result2 = <Result2>[];
      json['result2'].forEach((v) {
        result2!.add(new Result2.fromJson(v));
      });
    }
    code = json['code'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.result2 != null) {
      data['result2'] = this.result2!.map((v) => v.toJson()).toList();
    }
    data['code'] = this.code;
    data['message'] = this.message;
    return data;
  }
}

class Result2 {
  int? id;
  String? title;
  String? startTime;
  String? endTime;
  String? url;

  Result2({this.id, this.title, this.startTime, this.endTime, this.url});

  Result2.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    startTime = json['startTime'];
    endTime = json['endTime'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['startTime'] = this.startTime;
    data['endTime'] = this.endTime;
    data['url'] = this.url;
    return data;
  }
//   PopUpData copyWith({
//     int? id,
//     String? startTime,
//     String? endTime,
//     String? title,
//     String? url,
//   }){
//     return PopUpData(id: id ?? this.id, startTime: startTime ?? this.startTime, endTime: endTime ?? this.endTime,
//         title: title ?? this.title, url: url ?? this.url);
//   }
// }
}

class KakaoToken {
  bool? state;
  Token? data;

  KakaoToken({this.state, this.data});

  KakaoToken.fromJson(Map<String, dynamic> json) {
    state = json['state'];
    data = json['data'] != null ? new Token.fromJson(json['data']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['state'] = this.state;
    if (this.data != null) {
      data['data'] = this.data!.toJson();
    }
    return data;
  }
}

class Token {
  String? accessToken;
  String? refreshToken;

  Token({this.accessToken, this.refreshToken});

  Token.fromJson(Map<String, dynamic> json) {
    accessToken = json['accessToken'];
    refreshToken = json['refreshToken'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['accessToken'] = this.accessToken;
    data['refreshToken'] = this.refreshToken;
    return data;
  }
}
