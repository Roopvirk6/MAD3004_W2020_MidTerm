//
//  Extensionofcurrency.swift
//  C0774174_W2020_MID_TERM_MAD3004 a
//
//  Created by MacStudent on 2020-02-14.
//  Copyright © 2020 MacStudent. All rights reserved.
//

import Foundation

extension Float
{
    func Formatcurrency() -> String
    {
           return String(format: "$%0.2f", Float(self))
    }
    
}
