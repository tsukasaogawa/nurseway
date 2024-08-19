class Message {
  String name;
  String latestMessage;
  String time;
  List<Map<String, String>> messages;

  Message({
    required this.name,
    required this.latestMessage,
    required this.time,
    required this.messages,
  });

  Map<String, dynamic> toJson() => {
        'name': name,
        'latestMessage': latestMessage,
        'time': time,
        'messages': messages,
      };

  static Message fromJson(Map<String, dynamic> json) => Message(
        name: json['name'],
        latestMessage: json['latestMessage'],
        time: json['time'],
        messages: (json['messages'] as List)
            .map((message) => Map<String, String>.from(message))
            .toList(),
      );
}
