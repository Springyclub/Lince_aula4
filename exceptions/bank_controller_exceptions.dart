class SendIdNotValidException implements Exception{
  static const String report ="SendIdNotValidException";
  //não precise dependeer de um instancia efica constante
  String idSender;
  SendIdNotValidException({required this.idSender});
  @override
  String toString() {
    // TODO: implement toString
    return "$report\nID Sender: $idSender";
  }
}
class ReceiverIdInvalidException implements Exception{
  static const String report ="ReceiverIdInvalidException";
  String idReciver;
  ReceiverIdInvalidException({required this.idReciver});
  @override
  String toString() {
    // TODO: implement toString
    return "$report\nID Sender: $idReciver";
  }
}
class SenderNotAuthenticateException implements Exception{
  static const String report ="SenderNotAuthenticateException";//isso não
  //me parece tão bom, creio que exista formas melhores
  String idSender;
  SenderNotAuthenticateException({required this.idSender});
  @override
  String toString() {
    // TODO: implement toString
    return "$report\nID Sender: $idSender";
  }
}
class SenderBalanceLowerThanAmountException implements Exception{
  String report ="SenderBalanceLowerThanAmountException";
  String idSender;
  double amount;
  double senderBalance;
  SenderBalanceLowerThanAmountException({required this.amount, required this.idSender,required this.senderBalance});
  @override
  String toString() {
    // TODO: implement toString
    return "$report\nID Sender: $idSender\n"
        "Sender Balance : ${senderBalance}\n"
        "Amount : ${amount}";
  }
}
class ReceiverNotAuthenticatedException implements Exception {
  static const String report = "ReceiverNotAuthenticatedException";

  String idReceiver;
  late String message;
  ReceiverNotAuthenticatedException({required this.idReceiver}) {
    message = "$report\nID Sender: $idReceiver";
  }

  @override
  String toString() {
    return message;
  }
}
