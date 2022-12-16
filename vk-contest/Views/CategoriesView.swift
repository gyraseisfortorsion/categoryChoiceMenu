//
//  CategoriesView.swift
//  vk-contest
//
//  Created by Askarali Talkybek on 15.12.2022.
//

import SwiftUI
import WrappingHStack

struct CategoriesView: View {

    @EnvironmentObject var categories: Categories
    @State var animate:Bool=true
    var body: some View {
        WrappingHStack(categories.categories, alignment: .leading, lineSpacing: 5){category in
            CategoryButton(category: category)
        }
        .frame(minWidth:350)
        .padding()
        
        
    }
    
    
    

    
}

struct CategoriesView_Previews: PreviewProvider {
    static var previews: some View {
        CategoriesView()
            .previewInterfaceOrientation(.portrait)
            .environmentObject(Categories())
    }
}
