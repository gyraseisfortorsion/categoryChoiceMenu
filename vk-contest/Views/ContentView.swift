//
//  ContentView.swift
//  vk-contest
//
//  Created by Askarali Talkybek on 16.12.2022.
//

import SwiftUI
import WrappingHStack

struct ContentView: View {
    
    @EnvironmentObject var categories: Categories
    @State var animate:Bool=true
    var body: some View {
        
        NavigationView {
            VStack{
                CategoriesView()
                .navigationBarTitleDisplayMode(.inline)
                .toolbar {
                            ToolbarItem(placement: .principal) {
                                HStack (alignment: .top){
                                    Text("Отметьте то, что вам интересно, чтобы настроить Дзен")
                                    .font(.system(size: 15))
                                    .foregroundColor(Color.gray)
                                    Spacer()
                                    LaterButton()
                                }
                            }
                        }
                Spacer()
                if categories.getActiveCount()>0 {
                    ContinueButton()
                        .transition(.move(edge: .bottom))
                        .animation(.linear)
                }
            }
            .background(Color.black)
            
        }
        
       
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portrait)
            .environmentObject(Categories())
    }
}
