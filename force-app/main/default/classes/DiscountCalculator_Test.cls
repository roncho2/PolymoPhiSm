/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-15-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class DiscountCalculator_Test {
    @IsTest
    private void testStandDiscount(){
        //Given
        Opportunity opportunity = new Opportunity();
        opportunity.Amount = 500.00;
        DiscountCalculator calculator = new DiscountCalculator(opportunity, new StandardDiscount());
        //When
        Test.startTest();
        Decimal result = calculator.discountOpportunity();
        Test.stopTest();

        System.assertEquals(475.00, result, 'It should return a 5% discount');
       
        
    }
}