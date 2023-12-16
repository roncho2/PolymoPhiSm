/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-16-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class DiscountCalculator {
    private Opportunity opp;
    private StandardDiscount stDiscount;


    public DiscountCalculator(Opportunity opp, StandardDiscount discount) {
          this.opp = opp;
          this.stDiscount = discount;
    }
    public Decimal discountOpportunity(){
        Decimal amount = this.opp.Amount;
        return this.opp.Amount = stDiscount.calculateDiscount(amount);
    }
}