//
//  getApiViewModel.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import Foundation
import SwiftUI

class getApiViewModel:ObservableObject{
    @Published var arr:[WeatherData] = []
    let path = "https://api.openweathermap.org/data/2.5/weather?q=Nalchik&appid=113bf78e360f656fa2d35cfa2cdc6f0c"
    
    func GetApi(){
        let url = URL(string: self.path)
        guard let url = url else {return}
        let req = URLRequest(url: url)
        
            let res = URLSession.shared.dataTask(with: req) { data, _, _ in
            let json = try? JSONDecoder().decode([WeatherData].self, from:data!)
                guard let json = json else{return}
                DispatchQueue.main.async {
                    self.arr = json
                }
                
            
        }
        res.resume()
    }
}
