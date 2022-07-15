import 'mediator.dart';

void main(List<String> args) {
  TeamMember teamDev = Developer(name: "David");
  TeamMember teamDev2 = Developer(name: "Jonh");
  TeamMember teamAdmin = Admin(name: "Andrew");
  TeamMember teamTester = Tester(name: "Tony");
  NotificationHub notificationHub = TeamNotificationHub();
  notificationHub.register(teamAdmin);
  notificationHub.register(teamTester);
  notificationHub.register(teamDev);
  notificationHub.register(teamDev2);
  print(notificationHub.getTeamMembers());
  //notificationHub.send(teamAdmin, "You need to go rest!");
  notificationHub.sendTo(teamAdmin, "!!!");
  teamDev.sendTo<Admin>("dddd");
  teamDev.send("sss");
  print(teamDev.lastNotification);
  print(teamAdmin.lastNotification);
  print(teamTester.lastNotification);
  print(teamDev2.lastNotification);
}
