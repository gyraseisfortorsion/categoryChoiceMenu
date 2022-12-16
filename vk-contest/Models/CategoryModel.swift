//
//  CategoryModel.swift
//  vk-contest
//
//  Created by Askarali Talkybek on 15.12.2022.
//

import Foundation

struct Category: Identifiable{
    var id: String=UUID().uuidString
    var toggle: Bool
    let name: String
    
}




