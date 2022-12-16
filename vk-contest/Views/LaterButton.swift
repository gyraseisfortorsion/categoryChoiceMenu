//
//  LaterButton.swift
//  vk-contest
//
//  Created by Askarali Talkybek on 16.12.2022.
//

import SwiftUI

struct LaterButton: View{
    var body:some View{
        Button {
        } label: {
            Text("Позже")
            .font(.body)
            .padding(10)
            .background(Color("darkerGray")
                .cornerRadius(20)
            )
            .foregroundColor(Color.white)
        }
    }
}

struct LaterButton_Previews: PreviewProvider {
    static var previews: some View {
        LaterButton()
    }
}
