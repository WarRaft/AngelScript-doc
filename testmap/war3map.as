class A {
    string a()       { return "1"; }
    //string a() const { return "2"; }
}

void main(){
    A a;
    A@ b = a;
    const A@ c = a;
    A@ const d = a;

    print( a.a() ); // 1
    print( b.a() ); // 1
    print( c.a() ); // 2
    print( d.a() ); // 1
}

void config() {
}
