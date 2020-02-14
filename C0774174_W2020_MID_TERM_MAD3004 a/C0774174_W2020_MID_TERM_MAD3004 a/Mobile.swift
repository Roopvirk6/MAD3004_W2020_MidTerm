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
    var minutes : Float
    
init(billId : Int, billDate : Date, billType : Enum.type, totalBillAmount : Double, mobileManufacturerName : String, planName : String, mobileNumber : Int, internetGBUsed : Int, minutes : Float)
{
    
           self.mobileManufacturerName = mobileManufacturerName
           self.planName = planName
           self.mobileNumber = mobileNumber
           self.internetGBUsed = internetGBUsed
           self.minutes = minutes
    
    super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    
    }
    
    
    
    
    
    
}
