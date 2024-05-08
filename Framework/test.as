class Group {

    Group@ clear() {
        GroupClear();
        return this;
    }

}

a opAssign(a & in other) {
    return this;
}
