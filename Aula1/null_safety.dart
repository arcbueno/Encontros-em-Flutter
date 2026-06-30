void main() {
  final userWithEmail = User('João', 28, email: 'joao@email.com');
  final userWithoutEmail = User('Ana', 22);
  User? guest;

  print('User with email: ${userWithEmail.toString()}');
  print('User without email: ${userWithoutEmail.toString()}');
  print('Guest before assignment: ${describeGuest(guest)}');

  guest = User('Thiago', 30, email: 'thiago@email.com');
  print('Guest after assignment: ${describeGuest(guest)}');

  print('Email length (safe access): ${userWithoutEmail.emailLength}');
  print('Display name fallback: ${userWithoutEmail.displayName}');

  final profile = UserProfile('Maria');
  profile.bio ??= 'No bio provided yet';
  print('Profile bio: ${profile.bio}');

  final confirmedEmail = userWithEmail.email!;
  print('Confirmed email: $confirmedEmail');
}

String describeGuest(User? user) {
  if (user == null) {
    return 'No guest registered';
  }

  return user.toString();
}

class User {
  final String name;
  final int age;
  final String? email;

  User(this.name, this.age, {this.email});

  int? get emailLength => email?.length;

  String get displayName => email ?? name;

  @override
  String toString() {
    return 'User: $name, $age, email: ${email ?? 'not provided'}';
  }
}

class UserProfile {
  final String name;
  String? bio;

  UserProfile(this.name);
}
