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
    var customerId : Int
    var firstName : String
    var lastName : String
    var fullName : String
    {
        return firstName+lastName
    }
    var emailId :  String
    var billDictionary : [String: Double]
    //var totalBillToPay : Double
    
    init(customerId : Int, firstName : String, lastName : String, emailId : String, billDictionary : [String: Double], totalBillToPay : Double)
    {
        self.customerId = customerId
        self.firstName = firstName
        self.lastName = lastName
        //self.fullName = fullName
        self.emailId = emailId
        self.billDictionary = billDictionary
        //self.totalBillToPay = totalBillToPay
    
    }
    func display()
    {
        print("customer id \(customerId)")
        print("firstname \(firstName)")
        print("lastname \(lastName)")
        print("fullname \(fullName)")
        print("email id \(emailId)")
        print("billDictionary \(billDictionary)")
        //print("total bill to pay \(totalBillToPay)")
        
    }
    
    
    
    
    
    
}
