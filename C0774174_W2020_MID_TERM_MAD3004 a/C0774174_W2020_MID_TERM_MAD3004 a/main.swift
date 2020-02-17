//
//  main.swift
//  C0774174_W2020_MID_TERM_MAD3004 a
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation
var bill1 = Internet(billId: 201, billDate: "02-01-2018", billType: .INTERNET, totalBillAmount: 200, providerName: "Freedom", internetGBUsed: 15)
var bill2 = Mobile(billId: 202, billDate: "03-02-2019", billType: .MOBILE, totalBillAmount: 300, mobileManufacturerName: "Fido", planName: "Internet and talktime", mobileNumber: 6475404468, internetGBUsed: 128, minutes: 89)
var bill3 = Hydro(billId: 203, billDate: "04-05-2019", billType: .HYDRO, totalBillAmount: 834, agencyName: "toronto electricity services", unitsConsumed: 340)
 
bill1.display()
var cust1 = Customer(custId: 2001, cfirstName: "Monica", clastName: "Sharma", custemailId: "monicasharma12@gmail.com")
var cust2 = Customer(custId: 2002, cfirstName: "Roop", clastName: "virk", custemailId: "roopvirk16@gmail.com")
var cust3 = Customer(custId: 2003, cfirstName: "elle", clastName: "singh", custemailId: "ellesingh@gmail.com")


cust1.additionofBillToCustomer(d: bill1)
cust2.additionofBillToCustomer(d: bill2)
cust3.additionofBillToCustomer(d: bill3)


