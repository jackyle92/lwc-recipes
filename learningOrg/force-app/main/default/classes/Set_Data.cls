public with sharing class Set_Data {
    public Set_Data() {

    }

    public static void orderTea() {
        Set<String> teaTypes = new Set<String> { 'Black', 'White', 'Herbal'};
        System.debug(teaTypes);
        teaTypes.add('Green');
        teaTypes.add('Black');
        teaTypes.add('Brown');
        System.debug(teaTypes);
    }
}