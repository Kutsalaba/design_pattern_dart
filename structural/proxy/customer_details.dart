class CustomerDetails {
  final String customerId;
  final String email;
  final String hobby;
  final String position;

  const CustomerDetails(
    this.customerId,
    this.email,
    this.hobby,
    this.position,
  );

  @override
  String toString() {
    return "Id: $customerId\n"
      "email: $email\n"
      "hobby: $hobby\n"
      "position: $position\n";
  }
}