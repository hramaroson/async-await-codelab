import 'package:chalkdart/chalk.dart'; 

Future<void> printOrderMessage({int delay=2}) async{
  print(chalk.green("Fetching order ..."));
  var order = await fetchUserOrder(delay: delay);
  print(chalk.magenta("Your order is $order"));
}

Future<String> fetchUserOrder({int delay=2}) {
  return Future.delayed(Duration(seconds: delay), 
    () => "Large Latte");
}

Future<void> fetchUserOrderWithError(){
  return Future.delayed(const Duration(seconds: 2), 
    () => throw Exception("Logout failed: user ID is invalid"));
}

void countSeconds (int secs){
  for(var i = 1; i<=secs; i++){
    Future.delayed(Duration(seconds: i) , () => print("$i"));
  }
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

 print(chalk.blue("printOrderMessage() and counting delay (4 secs)"));
 countSeconds(4);
 await printOrderMessage(delay: 4);
 

 return 0;
}
