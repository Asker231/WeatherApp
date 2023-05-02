//
//  ButtonComponent.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI

struct ButtonComponent: View {
    @State var imageName:String
    @State var handleFunc:()->Void
    var body: some View {
        Button {
            handleFunc()
        } label: {
            ZStack(alignment: .center){
                Image(systemName: imageName)
                    .resizable()
                    .frame(width: 24,height: 24)
            }
                .padding()
                .frame(maxWidth: 54,maxHeight: 54)
                .foregroundColor(.black)
                .background(Color("ButtonTopColor"))
                .cornerRadius(10)
     
               
                
        }

    }
}

