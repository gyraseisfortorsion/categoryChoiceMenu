//
//  ButtonView.swift
//  vk-contest
//
//  Created by Askarali Talkybek on 15.12.2022.
//

import SwiftUI

struct CategoryButton: View {
    
    //let frameLength:Int
    //let frameWidth:Int
    @State var category:Category
    @EnvironmentObject var categories: Categories
    init(category:Category){
        self.category=category
    }
    
    var body: some View {
        
        Button {
            category.toggle.toggle()
            categories.changeActiveCount(isActive: category.toggle)
            
            
        } label: {
           
                let color = !category.toggle ? Color("darkGray") : Color.orange
                let sign = !category.toggle ? "plus" : "checkmark"
                HStack{
                    Text(category.name)
                    Divider()
                        .frame(maxWidth: 0.7, maxHeight: 15)
                        .background(Color.white)
                    
                    Image(systemName: sign)
                }
                .frame(height: 20)
                .font(.headline)
                .padding(10)
                .background(color
                    .cornerRadius(10)
                )
                .foregroundColor(Color.white)
     
            }
        }
    
}
var category:Category=Category(toggle: false, name: "Кино")

struct ButtonView_Previews: PreviewProvider {
    
    static var previews: some View {
        CategoryButton(category: category)
    }
}
