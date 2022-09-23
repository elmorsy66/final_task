/// code : 401
/// message : {"email":["قيمة email مُستخدمة من قبل."]}
/// data : []

class Registerrespons {
  Registerrespons({
      num? code, 
      Message? message, 
      List<dynamic>? data,}){
    _code = code;
    _message = message;
    _data = data;
}

  Registerrespons.fromJson(dynamic json) {
    _code = json['code'];
    _message = json['message'] != null ? Message.fromJson(json['message']) : null;
    if (json['data'] != null) {
      _data = [];
      json['data'].forEach((v) {
        _data?.add(Dynamic.fromJson(v));
      });
    }
  }
  num? _code;
  Message? _message;
  List<dynamic>? _data;
Registerrespons copyWith({  num? code,
  Message? message,
  List<dynamic>? data,
}) => Registerrespons(  code: code ?? _code,
  message: message ?? _message,
  data: data ?? _data,
);
  num? get code => _code;
  Message? get message => _message;
  List<dynamic>? get data => _data;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = _code;
    if (_message != null) {
      map['message'] = _message?.toJson();
    }
    if (_data != null) {
      map['data'] = _data?.map((v) => v.toJson()).toList();
    }
    return map;
  }

}

/// email : ["قيمة email مُستخدمة من قبل."]

class Message {
  Message({
      List<String>? email,}){
    _email = email;
}

  Message.fromJson(dynamic json) {
    _email = json['email'] != null ? json['email'].cast<String>() : [];
  }
  List<String>? _email;
Message copyWith({  List<String>? email,
}) => Message(  email: email ?? _email,
);
  List<String>? get email => _email;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['email'] = _email;
    return map;
  }

}