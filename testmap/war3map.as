class A {
    string s = "1";
}

A@ a; // null

void main() {
    // print(a.s); // Ошибка! Null pointer access
    @a = A();
    print(a.s); // 1
}
