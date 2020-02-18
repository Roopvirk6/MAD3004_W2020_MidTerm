//
//  Mobile.swift
//  C0774174_W2020_MID_TERM_MAD3004 a
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Mobile : Bill
{
    var mobileManufacturerName : String
    var planName : String
    var mobileNumber : String
    var internetGBUsed : Int
    var minutes : Int
    
init(billId : Int, billDate : String, billType : Enum.type, totalBillAmount : Float, mobileManufacturerName : String, planName : String, mobileNumber : String, internetGBUsed : Int, minutes : Int)
{
    
           self.mobileManufacturerName = mobileManufacturerName
           self.planName = planName
           self.mobileNumber = mobileNumber
           self.internetGBUsed = internetGBUsed
           self.minutes = minutes
    
    super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    
    }
    
    func isValidMobileNumber(value: String) -> Bool {
        let PHONE_REGEX = "^\\d{3}-\\d{3}-\\d{4}$"
        let phoneTest = NSPredicate(format: "SELF MATCHES %@", PHONE_REGEX)
      let result =  phoneTest.evaluate(with: value)
        return result
    }
    
    override func display()
    {
        super.display()
        print("\t\tMobile Manufactuer Name : \(mobileManufacturerName)")
        print("\t\tPlan Name: \(planName)")
        if self.isValidMobileNumber(value: mobileNumber){
             print("\t\tMobile Number : \(self.mobileNumber)")
        }
        else{
            print("\t\tMobile Number : invalid mobile number")
        }

        print("\t\tInternet GB Used: \(internetGBUsed.gbConcat())")
        print("\t\tMinutes Used: \(minutes.minutesConcat())")
        
    }
    
    
    
    
    
    
}
