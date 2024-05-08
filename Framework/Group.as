// https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_class_ops.html

funcdef void GroupCallback(unit);
funcdef void GroupCallbackFull(const Group@&in, unit);

class Group {

    ~Group() {
        // native DestroyGroup takes group whichGroup returns nothing
        DestroyGroup(g);
    }

    // native CreateGroup takes nothing returns group
    private group g = CreateGroup();

    unit get_opIndex(int index) const {
        // native GroupGetUnitByIndex takes group whichGroup, integer index returns unit
        return GroupGetUnitByIndex(g, index);
    }

    Group@opAssign(const Group &in other) {
        GroupClear(g);
        GroupAddGroupEx(g, other.g);
        return this;
    }

    void opAdd(const Group &in other) {
        GroupAddGroupEx(g, other.g);
    }

    Group@opAddAssign(const Group &in other) {
        // native GroupAddGroupEx takes group destGroup, group sourceGroup returns integer
        GroupAddGroupEx(g, other.g);
        return this;
    }

    Group@opSubAssign(const Group &in other) {
        // native GroupRemoveGroupEx takes group destGroup, group sourceGroup returns integer
        GroupRemoveGroupEx(g, other.g);
        return this;
    }

    void opSub(const Group &in other) {
        GroupRemoveGroupEx(g, other.g);
    }

    Group@clear() {
        // native GroupClear takes group whichGroup returns nothing
        GroupClear(g);
        return this;
    }

    uint length() {
        // native GroupGetCount takes group whichGroup returns integer
        return GroupGetCount(g);
    }

    Group@remove(unit u) {
        // native GroupRemoveUnit takes group whichGroup, unit whichUnit returns nothing
        GroupRemoveUnit(g, u);
        return this;
    }

    bool contains(unit u) {
        // native GroupContainsUnit takes group whichGroup, unit whichUnit returns boolean
        return GroupContainsUnit(g, u);
    }

    Group@insert(unit u) {
        // native GroupAddUnit takes group whichGroup, unit whichUnit returns nothing
        GroupAddUnit(g, u);
        return this;
    }

    Group@insert(float x, float y, float radius, uint limit = 0) {
        // native GroupEnumUnitsInRangeOfLoc takes group whichGroup, location whichLocation, real radius, boolexpr filter returns nothing
        // native GroupEnumUnitsInRange takes group whichGroup, real x, real y, real radius, boolexpr filter returns nothing
        // native GroupEnumUnitsInRangeCounted takes group whichGroup, real x, real y, real radius, boolexpr filter, integer countLimit returns nothingƒ
        // native GroupEnumUnitsInRangeOfLocCounted takes group whichGroup, location whichLocation, real radius, boolexpr filter, integer countLimit returns nothing
        if (limit > 0) GroupEnumUnitsInRangeCounted(g, x, y, radius, nil, limit);
        else GroupEnumUnitsInRange(g, x, y, radius, nil);
        return this;
    }

    Group@insert(rect r, uint limit = 0) {
        // native GroupEnumUnitsInRect takes group whichGroup, rect r, boolexpr filter returns nothing
        // native GroupEnumUnitsInRectCounted takes group whichGroup, rect r, boolexpr filter, integer countLimit returns nothing
        if (limit > 0) GroupEnumUnitsInRectCounted(g, r, nil, limit);
        else GroupEnumUnitsInRect(g, r, nil);
        return this;
    }

    Group@each(const GroupCallback@&in callback) {
        for (int i = --GroupGetCount(g); i>=0; i--) {
            callback(GroupGetUnitByIndex(g, index));
        }
        return this;
    }

    Group@each(const GroupCallbackFull@&in callback) {
        for (int i = --GroupGetCount(g); i>=0; i--) {
            callback(this, GroupGetUnitByIndex(g, index));
        }
        return this;
    }
}

/*

native GroupEnumUnitsOfType takes group whichGroup, string unitname, boolexpr filter returns nothing
native GroupEnumUnitsOfPlayer takes group whichGroup, player whichPlayer, boolexpr filter returns nothing
native GroupEnumUnitsOfTypeCounted takes group whichGroup, string unitname, boolexpr filter, integer countLimit returns nothing
native GroupEnumUnitsSelected takes group whichGroup, player whichPlayer, boolexpr filter returns nothing

native GroupImmediateOrder takes group whichGroup, string order returns boolean
native GroupImmediateOrderById takes group whichGroup, integer order returns boolean

native GroupPointOrder takes group whichGroup, string order, real x, real y returns boolean
native GroupPointOrderLoc takes group whichGroup, string order, location whichLocation returns boolean
native GroupPointOrderById takes group whichGroup, integer order, real x, real y returns boolean
native GroupPointOrderByIdLoc takes group whichGroup, integer order, location whichLocation returns boolean

native GroupTargetOrder takes group whichGroup, string order, widget targetWidget returns boolean
native GroupTargetOrderById takes group whichGroup, integer order, widget targetWidget returns boolean

// This will be difficult to support with potentially disjoint, cell-based regions
// as it would involve enumerating all the cells that are covered by a particularregion
// a better implementation would be a trigger that adds relevant units as they enter
// and removes them if they leave...
native ForGroup takes group whichGroup, code callback returns nothing
native FirstOfGroup takes group whichGroup returns unit
*/