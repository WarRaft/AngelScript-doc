// https://www.angelcode.com/angelscript/sdk/docs/manual/doc_script_class_ops.html

class Group {

    ~Group() {
        DestroyGroup(g);
    }

    private group g = CreateGroup();

    unit get_opIndex(int index) const {
        return GroupGetUnitByIndex(g, index);
    }

    Group clear() {
        GroupClear();
        return this;
    }

    uint length() {
        return GroupGetCount(g);
    }

}

/*

native GroupAddUnit takes group whichGroup, unit whichUnit returns nothing
native GroupRemoveUnit takes group whichGroup, unit whichUnit returns nothing


// Group API

native GroupContainsUnit takes group whichGroup, unit whichUnit returns boolean

native GroupForEachUnit takes group whichGroup returns unit // this mimics FristOfGroup, but each consecutive call will pick next unit. DO NOT USE this with GroupRemoveUnit, as it will break it.

native GroupAddGroupEx takes group destGroup, group sourceGroup returns integer
native GroupRemoveGroupEx takes group destGroup, group sourceGroup returns integer


native HandleToGroup takes handle h returns group


constant native IsUnitInGroup takes unit whichUnit, group whichGroup returns boolean

constant native IsUnitInForce takes unit whichUnit, force whichForce returns boolean


native GroupEnumUnitsOfPlayer takes group whichGroup, player whichPlayer, boolexpr filter returns nothing

native GroupEnumUnitsOfType takes group whichGroup, string unitname, boolexpr filter returns nothing
native GroupEnumUnitsOfTypeCounted takes group whichGroup, string unitname, boolexpr filter, integer countLimit returns nothing

native GroupEnumUnitsInRect takes group whichGroup, rect r, boolexpr filter returns nothing
native GroupEnumUnitsInRectCounted takes group whichGroup, rect r, boolexpr filter, integer countLimit returns nothing

native GroupEnumUnitsInRange takes group whichGroup, real x, real y, real radius, boolexpr filter returns nothing
native GroupEnumUnitsInRangeCounted takes group whichGroup, real x, real y, real radius, boolexpr filter, integer countLimit returns nothing

native GroupEnumUnitsInRangeOfLoc takes group whichGroup, location whichLocation, real radius, boolexpr filter returns nothing
native GroupEnumUnitsInRangeOfLocCounted takes group whichGroup, location whichLocation, real radius, boolexpr filter, integer countLimit returns nothing

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