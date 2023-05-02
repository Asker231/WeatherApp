//
//  ContentView.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI

struct ContentView: View {
    @State var select = "1"
    var body: some View {
        ZStack(alignment: .bottom){
            TabView(selection: $select) {
                HomeView()
                    .tag("1")
                InfoView()
                    .tag("2")
                ListView()
                    .tag("3")
                PersonalView()
                    .tag("4")
            }
            HStack(alignment: .center){
                //MARK: - Home button
                Spacer()
                Button {
                    withAnimation(.spring()){
                        self.select = "1"
                    }
                    
                } label: {
                    VStack{
                        Image(systemName:"house.fill")
                            .resizable()
                            .frame(width: 33, height: 33)
                            .foregroundColor(Color(select == "1" ? "ButtonColor" :"ButtonTopColor"))
                        select == "1" ?
                        Image(systemName: "smallcircle.filled.circle.fill")
                            .resizable()
                            .frame(width: 5,height: 5)
                            .foregroundColor(Color(select == "1" ? "ButtonColor" :"ButtonTopColor"))
                        :
                        nil
                    }
                    
                }
                Spacer()
                //MARK: - List button
                Button {
                    withAnimation(.spring()){
                        self.select = "2"
                    }
                } label: {
                    VStack{
                        
                        Image(systemName:"bolt.horizontal.circle")
                            .resizable()
                            .frame(width: 33, height: 33)
                            .foregroundColor(Color(select == "2" ? "ButtonColor" :"ButtonTopColor"))
                        select == "2" ?
                        Image(systemName: "smallcircle.filled.circle.fill")
                            .resizable()
                            .frame(width: 5,height: 5)
                            .foregroundColor(Color(select == "2" ? "ButtonColor" :"ButtonTopColor"))
                        :
                        nil
                    }
                    
                }
                Spacer()
                //MARK: - Info button
                Button {
                    withAnimation(.spring()){
                        self.select = "3"
                    }
                } label: {
                    VStack{
                        Image(systemName:"list.bullet.rectangle")
                            .resizable()
                            .frame(width: 33, height: 33)
                            .foregroundColor(Color(select == "3" ? "ButtonColor" :"ButtonTopColor"))
                        select == "3" ?
                        Image(systemName: "smallcircle.filled.circle.fill")
                            .resizable()
                            .frame(width: 5,height: 5)
                            .foregroundColor(Color(select == "3" ? "ButtonColor" :"ButtonTopColor"))
                        :
                        nil
                    }
                    
                }
                Spacer()
                //MARK: - Person button
                Button {
                    withAnimation(.spring()){
                        self.select = "4"
                    }
                } label: {
                    VStack{
                        Image(systemName:"person")
                            .resizable()
                            .frame(width: 33, height: 33)
                            .foregroundColor(Color(select == "4" ?
                                                   "ButtonColor" :"ButtonTopColor"))
                        select == "4" ?
                        Image(systemName: "smallcircle.filled.circle.fill")
                            .resizable()
                            .frame(width: 5,height: 5)
                            .foregroundColor(Color(select == "4" ? "ButtonColor" :"ButtonTopColor"))
                        :
                        nil
                        
                        
                    }
                }
                Spacer()
                
            }
            .frame(maxWidth: .infinity)
            .padding(.vertical,10)
            .background(.white)
            
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
