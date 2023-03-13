public with sharing class Caculator {
    public static Integer add(Integer item1, Integer item2) {
        if(item1 == null || item2 == null) {
            return 0;
        }
        return item1 + item2;
    }
}