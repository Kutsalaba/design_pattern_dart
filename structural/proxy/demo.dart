import 'proxy.dart';

void main(List<String> args) {
  Customer customer1 = Customer();
  Customer customer2 = Customer();
  ICustomerDetailsService custDetServ = CustomerDetailsService();
  ICustomerDetailsService prox = CustomerDetailsServiceProxy(custDetServ);
  Future<CustomerDetails> ff = prox.getCustomerDetails(customer2.id);

  ff.then((value) => print(value.toString()));
  ff = prox.getCustomerDetails(customer1.id);
  ff.then((value) => print(value.toString()));
  Future.delayed(
    const Duration(seconds: 2), 
    () => prox.getCustomerDetails(customer2.id)
  );

  //ff = custDetServ.getCustomerDetails(customer2.id);
  prox as CustomerDetailsServiceProxy;
  Future.delayed(
    const Duration(seconds: 2), 
    () => print(prox.customerDetailsCache)
  );
}
