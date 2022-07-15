import 'gaming_facade.dart';
import 'smart_home_facade.dart';
import 'smart_home_state.dart';

void main(List<String> args) {
  SmartHomeFacade sh = SmartHomeFacade();
  GamingFacade gf = GamingFacade();
  SmartHomeState stateSh = SmartHomeState();
  stateSh.tvOn = false;
  sh.startMovie(stateSh, "Not only");
  sh.startStreaming(stateSh);
  gf.startGaming(stateSh);
  gf.startStreaming(stateSh);
  gf.stopStreaming(stateSh);
  gf.stopGaming(stateSh);
}
