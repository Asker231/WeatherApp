//
//  Card.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI



struct Card:View{
    @State var offsets:CGFloat = 30
    @State var date:String
    @State var sity:String
    @State var gr:String
    @State var img:String
    var body: some View{
        HStack{
            ZStack{
                VStack(alignment: .leading){
                    Text("\(date)")
                        .foregroundColor(.white)
                        .font(.system(size: 17))
                        .bold()
                    Text("\(sity)")
                        .foregroundColor(.white)
                        .font(.system(size: 15))
                        .bold()
                    Text("\(gr)")
                        .foregroundColor(.white)
                        .font(.system(size: 64))
                        .bold()
                }
            }
            Image(img)
                .resizable()
                .frame(width: 183,height: 196)
                .offset(y:self.offsets)
                .gesture(DragGesture()
                    .onChanged({ value in
                        if value.translation.width > 0 || value.translation.width < 0 {
                            withAnimation {
                                offsets = value.translation.width
                            }
                        }
                    })
                        .onEnded({ value in
                            withAnimation {
                                offsets = 30
                            }
                        })
                )
        }
        .frame(maxWidth: .infinity)
        .padding(10)
        .background(.black)
        .cornerRadius(20)
 
        
    }
}
