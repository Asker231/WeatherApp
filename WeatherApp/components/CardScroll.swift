//
//  CardScroll.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI

struct CardScroll:View{
    @State var imageName:String
    @State var text:String
    var body: some View{
        VStack{
            Image(imageName)
                .resizable()
                .frame(width: 77,height: 77)
            Text("\(text)")
                .font(.system(size: 13))
                .bold()
                .foregroundColor(.white)
        }
        .frame(width: 83,height: 104)
        .background(.black)
        .cornerRadius(10)


    }
}
