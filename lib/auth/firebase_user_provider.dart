import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class MentalHealthCompanionFirebaseUser {
  MentalHealthCompanionFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

MentalHealthCompanionFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<MentalHealthCompanionFirebaseUser>
    mentalHealthCompanionFirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<MentalHealthCompanionFirebaseUser>(
            (user) => currentUser = MentalHealthCompanionFirebaseUser(user));
