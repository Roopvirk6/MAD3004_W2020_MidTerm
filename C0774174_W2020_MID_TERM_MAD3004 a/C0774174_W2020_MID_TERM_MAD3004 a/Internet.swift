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
    var internetGBUsed : Float
    init(billId : Int, billDate : Date, billType : Enum.type, totalBillAmount : Double, providerName : String, internetGBUsed : Float)

    {
        
    
        self.providerName = providerName
        self.internetGBUsed = internetGBUsed
        
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
        
        
        
        
        
        
    }
    
    
    
    
}
