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
    
    func isValidEmail(email: String) -> Bool {
        let emailRegEx = "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,64}"

        let emailPred = NSPredicate(format:"SELF MATCHES %@", emailRegEx)
        return emailPred.evaluate(with: email)
    }
    func additionofBillToCustomer(d:Bill){
        dictionaryBill.updateValue(d, forKey: d.billId)
    }
    
    func calculateTotalBillAmount() -> Float
    {
       totalBillToPay = 0
        for n in dictionaryBill.values
        {
            totalBillToPay += n.totalBillAmount
            
        }
        return Float(totalBillToPay)
    }
    
    func display()
    {
        print("-------CUSTOMER INFORMATION--------")
        print("Customer Id : \(custId)")
        print("First Name : \(cfirstName)")
        print("Last Name : \(clastName)")
        print("Customer Fullname : \(cfullName)")
        
        if self.isValidEmail(email: custemailId){
             print("Customer Email ID : \(self.custemailId)")
        }
        else{
            print("Customer Email ID : invalid email")
        }
    
        if dictionaryBill.isEmpty
            {
                print(" Specified Customer do not have Bill to pay")
            }
            else
            {
                for d in dictionaryBill.values
                    
                {
                    d.display()
                    print("\t\t----------------------------------\n")
                    
                }
        print("\t\tTotal Bill Amount to Pay : \(calculateTotalBillAmount().formatCurrency())")
                print("\t\t-----------------------------------\n")
            
        }
        
    }
    
    
    
    
    
    
    
}
