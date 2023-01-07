import 'package:chalkdart/chalk.dart'; 

Future<void> printOrderMessage() async{
  print(chalk.green("Fetching order ..."));
  var order = await fetchUserOrder();
  print(chalk.magenta("Your order is $order"));
}

Future<String> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 2), 
    () => "Large Latte");
}

Future<void> fetchUserOrderWithError(){
  return Future.delayed(const Duration(seconds: 2), 
    () => throw Exception("Logout failed: user ID is invalid"));
}

Future<int> execute() async {
 print(chalk.yellow("********Futures, async, await********"));
 print(chalk.blue("printOrderMessage()"));
 await printOrderMessage();

 print(chalk.blue("\nfetchUserOrderWithError()"));
 print(chalk.green("Fetching order ..."));
 try {
  await fetchUserOrderWithError();
 } catch(e) {
  print(chalk.brightRed("$e"));
 }
 

 return 0;
}
