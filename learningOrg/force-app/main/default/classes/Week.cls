public with sharing class Week {
    public Week() {

    }
    public Integer num;
    public enum Day{SUNDAY, MONDAY, TUESDAY, WEDNESDAY, THURSDAY, SATURDAY}
    public Day convertStringToEnum(string wd) {
        return Day.valueOf(wd);
    }
}