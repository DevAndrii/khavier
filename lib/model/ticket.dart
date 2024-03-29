import 'package:admin/model/baseClass.dart';

import 'Status.dart';

class Ticket extends BaseClass {
  String subject = '';
  String body = '';
  String priority = '';
  String executorId = '';
  List<String> executorHelpers = [];
  // List comments = [];
  List<Status> history = [];

  Map<String, dynamic> toMap() {
    Map<String, dynamic> baseObj = super.toMap();
    Map<String, dynamic> ticObj = {
      'subject': subject,
      'body': body,
      'priority': priority,
      'executorId': executorId,
    };

    ticObj.addAll(baseObj);

    return ticObj;
  } 

  void fromMap(Map<String, dynamic> m) {
    super.fromMap(m);
    this.subject = m.containsKey('subject') ? m['subject'] : '';
    this.body = m.containsKey('body') ? m['body'] : '';
    this.priority = m.containsKey('priority') ? m['priority'] : '';
    this.executorId = m.containsKey('executorId') ? m['executorId'] : '';
  }
}
