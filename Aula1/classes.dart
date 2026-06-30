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

void main(List<String> args) {}
