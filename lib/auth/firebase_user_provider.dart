import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class GuestaypruebaFirebaseUser {
  GuestaypruebaFirebaseUser(this.user);
  User user;
  bool get loggedIn => user != null;
}

GuestaypruebaFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<GuestaypruebaFirebaseUser> guestaypruebaFirebaseUserStream() =>
    FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<GuestaypruebaFirebaseUser>(
            (user) => currentUser = GuestaypruebaFirebaseUser(user));
