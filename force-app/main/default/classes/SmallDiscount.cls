/**
 * @description       : 
 * @author            : ChangeMeIn@UserSettingsUnder.SFDoc
 * @group             : 
 * @last modified on  : 12-16-2023
 * @last modified by  : ChangeMeIn@UserSettingsUnder.SFDoc
**/
public with sharing class SmallDiscount implements IDiscount {

    public Decimal calculateDiscount(Decimal oppAmount){
      return   oppAmount - (oppAmount * .25);
    
    }
    
}