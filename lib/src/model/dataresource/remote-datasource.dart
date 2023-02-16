
class PopUpData {
  final String id;
  final String startTime;
  final String endTime;
  final String title;
  final String url;

  PopUpData({
    required this.id,
    required this.startTime,
    required this.endTime,
    required this.title,
    required this.url
});
  PopUpData.fromJson({
    required Map<String, dynamic> json,
}) : id = json['id'], startTime = json['startTime'], endTime = json['endTime'], title = json['title'], url = json['url'];

  Map<String, dynamic> toJson(){
    return {
      'id':id,
      'startTime': startTime,
      'endTime':endTime,
      'title':title,
      'url':url,
    };
  }

  PopUpData copyWith({
    String? id,
    String? startTime,
    String? endTime,
    String? title,
    String? url,
}){
    return PopUpData(id: id ?? this.id, startTime: startTime ?? this.startTime, endTime: endTime ?? this.endTime,
        title: title ?? this.title, url: url ?? this.url);
  }
}