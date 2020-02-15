//
//  Customer.swift
//  C0774174_W2020_MID_TERM_MAD3004 a
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Customer : IDisplay
{
    var custId : Int
    var cfirstName : String
    var clastName : String
    var cfullName : String
    {
        return "\(self.cfirstName) \(self.clastName)"
    }
    var custemailId :  String
    var dictionaryBill = [Int : Bill]()
    var totalBillToPay : Float = 0.0
    
    init(custId : Int, cfirstName : String, clastName : String, custemailId : String)
    {
        self.custId = custId
        self.cfirstName = cfirstName
        self.clastName = clastName
        self.custemailId = custemailId
    
    }
    func additionofBillToCustomer(d:Bill){
        dictionaryBill.updateValue(d, forKey: d.billId)
    }
    
    //  func calculateTotalBillAmount() -> Float
  //  {
        //totalBillAmount = 0
        //for n in dictionaryBill.values
       // {
            //totalBillToPay += n.billAmount
       // }
       // return Float(totalBillToPay)
  //  }
    
    
    
    
    func display()
    {
        print("customer id \(custId)")
        print("firstname \(cfirstName)")
        print("lastname \(clastName)")
        print("Customer fullname \(cfullName)")
        print("Customer email id \(custemailId)")
        if dictionaryBill.isEmpty
            {
                print(" Specified Customer do not have Bill to pay")
            }
            else
            {
                for d in dictionaryBill.values
                    
                {
                    d.display()
                    print("************************")
                    
                }
                print("Total Bill Amount to Pay: ")
               
            
        }
        
    }
    
    
    
    
    
    
    
}
