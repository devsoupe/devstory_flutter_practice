class A {
  final int value;

  const A(this.value);

  @override
  String toString() {
    return 'A($value)';
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) || other is A && runtimeType == other.runtimeType && value == other.value;

  @override
  int get hashCode => value.hashCode;
}

void main() {
  print(A(1) == A(1));
  print(A(1));

  A a = A(1);
  Map<A, int> map = {a: 1};
  print(map[a]);

  // a.value = 2;
  // print(map[a]);
}
