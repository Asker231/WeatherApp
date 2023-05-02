//
//  CityModel.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI

struct CityModel:Identifiable,Hashable{
    let id = UUID()
    let sity:String
    let date:String
    let gr:String
    let img:String
}
