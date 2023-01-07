import 'package:chalkdart/chalk.dart'; 

Future<void> fetchUserOrder() {
  return Future.delayed(const Duration(seconds: 2), 
    () => print(chalk.magenta("Large Latte")));
}

Future<void> fetchUserOrderWithError(){
  return Future.delayed(const Duration(seconds: 2), 
    () => throw Exception("Logout failed: user ID is invalid"));
}

Future<int> execute() async {
 print(chalk.yellow("********Futures, async, await********"));
 print(chalk.blue("fetchUserOrder()"));
 print(chalk.green("Fetching order ..."));
 await fetchUserOrder();

 print(chalk.blue("\nfetchUserOrderWithError()"));
 print(chalk.green("Fetching order ..."));
 await fetchUserOrderWithError();

 return 0;
}
