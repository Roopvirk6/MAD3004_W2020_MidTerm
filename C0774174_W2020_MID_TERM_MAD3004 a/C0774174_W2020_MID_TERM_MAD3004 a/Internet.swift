//
//  Internet.swift
//  C0774174_W2020_MID_TERM_MAD3004 a
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Internet : Bill
{
    var providerName : String
    var internetGBUsed : Int
    init(billId : Int, billDate : String, billType : Enum.type, totalBillAmount : Float, providerName : String, internetGBUsed : Int)

    {
        
    
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
        }
    
    override func display()
    {
        super.display()
        print("\t\tProvider name: \(providerName)")
        print("\t\tInternet GB used: \(internetGBUsed.gbConcat())")
    }
    
    
    
    
    
    
}
