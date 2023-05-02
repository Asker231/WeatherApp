//
//  HomeView.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI



struct HomeView: View {
    @State var arrayList:[DataSlider] = [
        DataSlider(imagetext: "Sun cloud little rain", text: "6 : 00"),
        DataSlider(imagetext: "Zaps", text: "9 : 00"),
        DataSlider(imagetext: "MidSnowFastWinds", text:     "14 : 00")
    ]
    @State var isNotif = false
    @State var homeCard = CityModel(sity: "Нальчик", date: "Вторник 2 Мая", gr: "20",img:"SunCloudMidRain")
    
    var body: some View {
        
        NavigationView {
            VStack(spacing: 30){
                HStack(alignment: .center){
                    ButtonComponent(imageName:"slider.horizontal.3") {
                      print(1)
                    }
                    
                    Spacer()
                    ButtonComponent(imageName:"bell") {
                        self.isNotif.toggle()
                    }.sheet(isPresented: $isNotif) {
                        Notification()
                    }
                }
                .padding(10)
                Card(date: homeCard.date, sity: homeCard.sity, gr: homeCard.gr, img:homeCard.img)
                    .foregroundColor(.black)
                    .shadow(radius: 2)
                VStack{
                    HStack(alignment: .firstTextBaseline){
                        Text("Today")
                            .font(.system(size: 34))
                            .bold()
                        Spacer()
                        NavigationLink {
                            NextDaysView()
                        } label: {
                            HStack{
                                Text("Next 14 Days")
                                    .foregroundColor(.black)
                                    .font(.system(size: 20))
                                    .bold()
                                Image("Vector")
                                    .resizable()
                                    .frame(width: 10,height: 10)
                            }
                        }

                    }
                    
                    ScrollView(.horizontal,showsIndicators: false){
                        HStack{
                            CardScroll(imageName: arrayList[0].imagetext, text: arrayList[0].text)
                            CardScroll(imageName: arrayList[0].imagetext, text: arrayList[0].text)
                            CardScroll(imageName: arrayList[0].imagetext, text: arrayList[1].text)
                            CardScroll(imageName: arrayList[0].imagetext, text: arrayList[1].text)
                            CardScroll(imageName: arrayList[0].imagetext, text: arrayList[2].text)
                            CardScroll(imageName: arrayList[0].imagetext, text: arrayList[2].text)
                        }
                        //.frame(width: .infinity)
                        
                    }.frame(maxWidth: .infinity)
                }
                
                Spacer()
                
                
            }
            .frame(maxWidth: .infinity,maxHeight: .infinity)
            .padding(5)
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
