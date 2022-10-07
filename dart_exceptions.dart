import 'controllers/bank_controller.dart';
import 'exceptions/bank_controller_exceptions.dart';
import 'models/account.dart';

void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  try {


    bool result = bankController.makeTransfer(
        idSender: "Kakosss", idReceiver: "Ricarth", amount: 30);
    // Observando resultado
    if(result){
      print("Transição concluída com sucesso");
    }
  }on SendIdNotValidException catch(error){
    print(error);
    print("O nome: ${error.idSender} \n"
        "não é um Id válido");//Quando passa por 1, o outro não reconhece que tá errado
  }on ReceiverIdInvalidException catch(error){
    print(error);
    print("O nome: ${error.idReciver} \n"
        "não é válido");
  }on SenderNotAuthenticateException catch(error){
    print(error);
    print("O nome: ${error.idSender}");
  }on SenderBalanceLowerThanAmountException catch(error){
    print(error);
    print("Senhor(a)(${error.idSender}) \n"
        "O seu saldo está inválido\n"
        "Saldo: ${error.senderBalance}\n"
        "Pagamento ${error.amount}");
  }on Exception{
    print("Algo deu errado");
  }

}
