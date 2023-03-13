@isTest
private with sharing class Caculator_Test {
    public Caculator_Test() {

    }
    @isTest 
    private static void testTwoPositiveInteger() {
        // setup our test data
        Integer x = 5;
        Integer y = 9;
        // Execute the method we wish to test
        Integer result = Caculator.add(x, y);
        //Assert we get the correct result 
        System.assertEquals(14, result, 'Incorrect result returned from add method');
    }

}