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
    var mobileNumber : Int
    var internetGBUsed : Int
    var minutes : Int
    
init(billId : Int, billDate : String, billType : Enum.type, totalBillAmount : Float, mobileManufacturerName : String, planName : String, mobileNumber : Int, internetGBUsed : Int, minutes : Int)
{
    
           self.mobileManufacturerName = mobileManufacturerName
           self.planName = planName
           self.mobileNumber = mobileNumber
           self.internetGBUsed = internetGBUsed
           self.minutes = minutes
    
    super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    
    }
    
    override func display()
    {
        super.display()
        print("\t\tMobile Manufactuer Name : \(mobileManufacturerName)")
        print("\t\tPlan name: \(planName)")
        print("\t\tMobile number: \(mobileNumber)")
        print("\t\tInternet GB Used: \(internetGBUsed.gbConcat())")
        print("\t\tMinutes Used: \(minutes.minutesConcat())")
        
    }
    
    
    
    
    
    
}
