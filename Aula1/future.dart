void main() async {
  print('--- Future com then ---');
  fetchUserById(1)
      .then((user) {
        print('User loaded: ${user.toString()}');
      })
      .catchError((error) {
        print('Error loading user: $error');
      });

  print('--- Future com async/await ---');
  try {
    final user = await fetchUserById(2);
    print('User loaded: ${user.toString()}');
  } catch (error) {
    print('Error loading user: $error');
  }

  print('--- Future.delayed simulando rede ---');
  final delayedUser = await fetchUserWithDelay(3);
  print('User after delay: ${delayedUser.toString()}');

  print('--- Future.wait executando em paralelo ---');
  final users = await Future.wait([
    fetchUserById(4),
    fetchUserById(5),
    fetchUserById(6),
  ]);
  for (final user in users) {
    print('Parallel result: ${user.toString()}');
  }

  print('--- Future com erro ---');
  try {
    await fetchUserById(-1);
  } catch (error) {
    print('Expected error: $error');
  }
}

Future<List<User>> fetchUsers() async {
  return [
    await fetchUserById(4),
    await fetchUserById(5),
    await fetchUserById(6),
  ];
}

Future<User> fetchUserById(int id) {
  if (id <= 0) {
    return Future.error('Invalid user id: $id');
  }

  return Future.value(User(id, 'User $id', id * 10));
}

Future<User> fetchUserWithDelay(int id) {
  return Future.delayed(
    const Duration(seconds: 1),
    () => User(id, 'Delayed User $id', id * 10),
  );
}

class User {
  final int id;
  final String name;
  final int age;

  User(this.id, this.name, this.age);

  @override
  String toString() {
    return 'User(id: $id, name: $name, age: $age)';
  }
}

class Student extends User {
  String course;
  bool _isApproved = false;
  bool get isApproved => _isApproved;
  set grade(double grade) {
    if (grade >= 7) {
      _isApproved = true;
    }
  }

  Student(super.id, super.name, super.age, this.course);
}
