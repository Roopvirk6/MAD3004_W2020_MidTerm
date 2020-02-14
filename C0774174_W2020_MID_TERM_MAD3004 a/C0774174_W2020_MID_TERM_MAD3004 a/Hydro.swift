//
//  Hydro.swift
//  C0774174_W2020_MID_TERM_MAD3004 a
//
//  Created by MacStudent on 2020-02-13.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Hydro : Bill
{
    var agencyName : String
    var unitsConsumed : Double
    
    init(billId : Int, billDate : Date, billType : Enum.type, totalBillAmount : Double, agencyName : String, unitsConsumed : Double) {
        
        self.agencyName = agencyName
        self.unitsConsumed = unitsConsumed
        
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
    
}
