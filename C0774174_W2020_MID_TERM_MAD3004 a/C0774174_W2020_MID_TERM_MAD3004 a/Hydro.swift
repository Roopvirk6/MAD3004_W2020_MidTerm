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
    var unitsConsumed : Int
    
    init(billId : Int, billDate : String, billType : Enum.type, totalBillAmount : Float, agencyName : String, unitsConsumed : Int) {
        
        self.agencyName = agencyName
        self.unitsConsumed = unitsConsumed
        
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    
    override func display()
    {
        super.display()
        print("Agency name: \(agencyName)")
        print("Units consumed: \(unitsConsumed.unitConcat())")
    }
    
    
}
