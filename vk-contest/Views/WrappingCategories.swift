//
//  WrappingCategories.swift
//  vk-contest
//
//  Created by Askarali Talkybek on 15.12.2022.
//

import SwiftUI

struct WrappingCategories: View {
    var sampleCategories = [
        Category(toggle: false, name: "Юмор"),
        Category(toggle: false, name: "Еда"),
        Category(toggle: false, name: "Кино"),
        Category(toggle: false, name: "Спорт"),
        Category(toggle: false, name: "Рестораны"),
    ]
    var body: some View {
        WrappedView(items: sampleCategories)
    }
}

struct WrappedView: View {
    let items:[Category]
    var groupedItems:[[Category]]=[[Category]]()
    
//    init(items:[Category]){
//        self.items=items
//        self.groupedItems=createGroups(items: items)
//    }
//    private func createGroups (items:[Category])->[[Category]]{
//        return [[Category]]
//    }
    var body: some View{
        Text("Some")
    }
}

struct WrappingCategories_Previews: PreviewProvider {
    static var previews: some View {
        WrappingCategories()
    }
}
