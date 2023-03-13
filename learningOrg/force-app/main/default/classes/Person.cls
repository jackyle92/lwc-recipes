public with sharing class Person {

    public String firstName;
    public String lastname;
    private Date dateOfBirth = Date.today();
    private String identification;
    private Double dateToday () {
        return Integer.valueOF(Date.today());
    }
    public Integer age {
        get{
            return Integer.valueOf(Math.ceil((dateToday() - Integer.valueOf(dateOfBirth))/365));
        }
        private set;
    }

    public Person(String firstName, String LastName) {
        this.firstName = firstName;
        this.LastName = lastName;
    }

    public Integer add(Integer item1, Integer item2, Integer item3) {
        return item1 + item2 + item3;
    }

}