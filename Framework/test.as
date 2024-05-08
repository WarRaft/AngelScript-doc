namespace MyNamespace {
    enum MyEnum {
        A,
        B = 20,
        MyEnumItem = 31,
    }
}

int myFunc (int a, float b, string c) {
    float d = 13;
    int e = 56;
    int d = anotherFunc(10, 2.f, "somevalue");

    switch( value ) {
        case 0:
        case 1:
        a = 1;
        break;
        case 2:
        {
            int b = 2;
        }
        case constant_value:
        break;
        default:
    }

    while (a < 10) {
        a += 20;
        if (e < 41) {
            c = "a";
        } else if (e < 10) {
            c = "b";
        } else {
            c = "c";
        }
    }
}

class Group {
    ~Group() {
        DestroyGroup(g);
    }

    private group g = CreateGroup();

    unit get_opIndex(int index) const {
        return GroupGetUnitByIndex(g, index);
    }

    void clear() {
        GroupClear();
    }
}