class A {
    int i;

    A(int i){
    this.i = i;
    }

    int opCmp(const A &inout a) {
        return opCmp(a.i);
    }

    int opCmp(const int &in i) {
        if (this.i == i) return 0;
        return this.i > i ? 1 : -1;
    }
}

void main(){
    A a(10);
    A b(11);

    print(a >= b ? "1" : "0"); // 0
    print(a > 10 ? "1" : "0"); // 0
    print(13 >= a ? "1" : "0"); // 1
    print(10 <= b ? "1" : "0"); // 1
}
