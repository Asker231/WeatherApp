//
//  NextDaysView.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI

struct NextDaysView: View {
    @State var casrds:[CityModel] = [
        CityModel(sity: "Нальчик", date: "3 Мая", gr: "13", img: "Tornado"),
        CityModel(sity: "Нальчик", date: "4 Мая", gr: "34", img: "Cloud3"),
        CityModel(sity: "Нальчик", date: "5 Мая", gr: "24", img: "Zaps"),
        CityModel(sity: "Нальчик", date: "6 Мая", gr: "-16", img: "Big snow"),
        CityModel(sity: "Нальчик", date: "7 Мая", gr: "10",  img: "MoonCloudFastWind"),
        CityModel(sity: "Нальчик", date: "8 Мая", gr: "25",img: "SunCloudAngledRain"),
        CityModel(sity: "Нальчик", date: "9 Мая", gr: "-0",img: "MoonCloudFastWind"),
        CityModel(sity: "Нальчик", date: "10 Мая", gr: "-6",img:"Big snow")
    ]
    var body: some View {
        ScrollView(.vertical , showsIndicators:false){
            ForEach(casrds){ el in
                Card(date: el.date, sity: el.sity, gr: el.gr, img: el.img)
                    
            }
        }.padding(5)
    }
}

struct NextDaysView_Previews: PreviewProvider {
    static var previews: some View {
        NextDaysView()
    }
}
