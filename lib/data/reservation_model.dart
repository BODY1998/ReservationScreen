class ReservationModel {
  String? title;
  List<String>? img;
  String? interest;
  String? date;
  String? address;
  String? trainerName;
  String? trainerImg;
  String? trainerInfo;
  String? occasionDetail;

  ReservationModel({
    this.title,
    this.img,
    this.interest,
    this.date,
    this.address,
    this.trainerName,
    this.trainerImg,
    this.trainerInfo,
    this.occasionDetail,
  });

  factory ReservationModel.fromJson(Map<String, dynamic> json) {
    ReservationModel reservationModel = ReservationModel();
    reservationModel.title = json['title'];
    reservationModel.img = json['img'].cast<String>();
    reservationModel.interest = json['interest'];
    reservationModel.date = json['date'];
    reservationModel.address = json['address'];
    reservationModel.trainerName = json['trainerName'];
    reservationModel.trainerImg = json['trainerImg'];
    reservationModel.trainerInfo = json['trainerInfo'];
    reservationModel.occasionDetail = json['occasionDetail'];
    return reservationModel;
  }
}
