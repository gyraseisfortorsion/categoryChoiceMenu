//
//  ContinueButton.swift
//  vk-contest
//
//  Created by Askarali Talkybek on 16.12.2022.
//

import SwiftUI

struct ContinueButton: View {
    //@State var animate:Bool=true
    
    var body: some View{
        Button {
          
        } label: {
          
            Text("Продолжить")
            .font(.headline)
            .padding(30)
            .background(Color.white
                .cornerRadius(40)
            )
            .foregroundColor(Color.black)
//            .onAppear(perform: addAnimation)
//            .scaleEffect(animate ? 1.2:1.0)

        }
    }
//    func addAnimation(){
//        withAnimation (
//            Animation
//                .easeInOut(duration: 1.0)
//                .repeatForever()
//        ){
//            animate.toggle()
//        }
//    }
}

struct ContinueButton_Previews: PreviewProvider {
    static var previews: some View {
        ContinueButton()
    }
}
