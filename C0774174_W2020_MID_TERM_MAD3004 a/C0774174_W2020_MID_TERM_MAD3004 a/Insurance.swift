//
//  Insurance.swift
//  C0774174_W2020_MID_TERM_MAD3004 a
//
//  Created by MacStudent on 2020-02-18.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

public class Insurance : Bill
{
    var provider : String
    var insuranceType : String
    var startDate = String()
    var endDate = String()
    init(billId: Int, billDate: String, billType: Enum.type, totalBillAmount: Float, provider : String, insuranceType : String, startDate : String, endDate : String)
    {
        self.provider = provider
        self.insuranceType = insuranceType
        self.startDate = startDate
        self.endDate = endDate
        super.init(billId: billId, billDate: billDate, billType: billType, totalBillAmount: totalBillAmount)
    }
    override func display() {
        super.display()
        print("\t\tInsurance provider name : \(provider)")
        print("\t\tInsurance type : \(insuranceType)")
        print("\t\tStart date : \(startDate)")
        print("\t\tEnd date : \(endDate)")
        
    }
    
    
}
