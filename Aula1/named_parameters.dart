void main() {
  final user1 = createUser('João', 14, true);
  final user2 = createUserWithNamedParameters(
    age: 32,
    isStudent: false,
    name: 'Thiago',
  );
  final user3 = createUserWithNamedParameters(name: 'Ana', age: 34);
  final user4 = createUserWithOptionalParameters('Pedro', 28);
  final user5 = createUserWithOptionalParameters('Pedro', 28, true);

  print('User 1: ${user1.toString()}');
  print('User 2: ${user2.toString()}');
  print('User 3: ${user3.toString()}');
  print('User 4: ${user4.toString()}');
  print('User 5: ${user5.toString()}');
}

User createUserWithNamedParameters({
  required String name,
  required int age,
  bool isStudent = false,
}) {
  return User(name, age, isStudent);
}

User createUserWithOptionalParameters(
  String name,
  int age, [
  bool isStudent = false,
]) {
  return User(name, age, isStudent);
}

User createUser(String name, int age, bool isStudent) {
  return User(name, age, isStudent);
}

class User {
  final String name;
  final int age;
  final bool isStudent;

  User(this.name, this.age, this.isStudent);

  @override
  String toString() {
    return 'User: $name, $age, $isStudent';
  }
}
