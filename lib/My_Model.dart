class Temp {
  bool status;
  String message;
  Data data;

  Temp({
    required this.status,
    required this.message,
    required this.data,
  });

  factory Temp.fromJson(Map<String, dynamic> json) {
    return Temp(
      status: json['status'],
      message: json['message'],
      data: Data.fromJson(json['data']),
    );
  }
}

class Data {
  int currentPageNumber;
  int nextPageNumber;
  int totalPagesNumber;
  List<DataMeeting> data;

  Data({
    required this.currentPageNumber,
    required this.nextPageNumber,
    required this.totalPagesNumber,
    required this.data,
  });

  factory Data.fromJson(Map<String, dynamic> json) {
    var dataList = json['data'] as List;
    List<DataMeeting> dataMeList =
        dataList.map((item) => DataMeeting.fromJson(item)).toList();

    return Data(
      currentPageNumber: json['currentPageNumber'],
      nextPageNumber: json['nextPageNumber'],
      totalPagesNumber: json['totalPagesNumber'],
      data: dataMeList,
    );
  }
}

class DataMeeting {
  int? companyId;
  int? meetingId;
  String? meetingGuid;
  String? coverFilePath;
  String? coverFile;
  String? meetingName;
  String? meetingEName;
  String? telephone;
  String? time;
  String? address;
  String? addressLink;
  String? description;
  String? notes;
  bool? isHidden;
  bool? isDeleted;
  int? displayOrder;
  DateTime? writtenAt;
  int? writtenBy;
  DateTime? lastUpdatedAt;
  int? lastUpdatedBy;

  DataMeeting({
    this.companyId,
    this.meetingId,
    this.meetingGuid,
    this.coverFilePath,
    this.coverFile,
    this.meetingName,
    this.meetingEName,
    this.telephone,
    this.time,
    this.address,
    this.addressLink,
    this.description,
    this.notes,
    this.isHidden,
    this.isDeleted,
    this.displayOrder,
    this.writtenAt,
    this.writtenBy,
    this.lastUpdatedAt,
    this.lastUpdatedBy,
  });

  factory DataMeeting.fromJson(Map<String, dynamic> json) {
    return DataMeeting(
      companyId: json['companyId'],
      meetingId: json['meetingId'],
      meetingGuid: json['meetingGuid'],
      coverFilePath: json['coverFilePath'],
      coverFile: json['coverFile'],
      meetingName: json['meetingName'],
      meetingEName: json['meetingEName'],
      telephone: json['telephone'],
      time: json['time'],
      address: json['address'],
      addressLink: json['addressLink'],
      description: json['description'],
      notes: json['notes'],
      isHidden: json['isHidden'],
      isDeleted: json['isDeleted'],
      displayOrder: json['displayOrder'],
      writtenAt: DateTime.parse(json['writtenAt']),
      writtenBy: json['writtenBy'],
      lastUpdatedAt: json['lastUpdatedAt'],
      lastUpdatedBy: json['lastUpdatedBy'],
    );
  }
}
