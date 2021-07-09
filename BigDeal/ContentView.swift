//
//  ContentView.swift
//  BigDeal
//
//  Created by 国望恒 on 2021/7/2.
//

import SwiftUI

struct ContentView: View {
    
    @ObservedObject var cache: TextCache = TextCache()
    
    var body: some View {
        
        VStack {
                    Text(cache.text ?? "等待更新时间")
                        .frame(width: 300,
                               height: 44,
                               alignment: .center)
                    Button(action: {
                            self.cache.viewDidLoad()
                        }) {
                            Text("点击更新时间")
                        }
                }.cornerRadius(8).border(Color(.gray))
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
