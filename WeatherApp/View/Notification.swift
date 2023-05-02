//
//  Notification.swift
//  WeatherApp
//
//  Created by ASKER on 02.05.2023.
//

import SwiftUI

struct Notification: View {
    @StateObject var we = getApiViewModel()
    var body: some View {
        VStack{
            Text("Notification")
                .font(.system(size: 50))
                .bold()
            Button {
                we.GetApi()
            } label: {
                Text("Get api")
            }
            
            ForEach(we.arr) { el in
                Text("\(el.name)")
            }

     
        }
    }
}

struct Notification_Previews: PreviewProvider {
    static var previews: some View {
        Notification()
    }
}
