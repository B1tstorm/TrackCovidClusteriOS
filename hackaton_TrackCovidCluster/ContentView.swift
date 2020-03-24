//
//  ContentView.swift
//  hackaton_TrackCovidCluster
//
//  Created by Oliver Gorczyca on 22.03.20.
//  Copyright © 2020 onezero-coding. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            VStack {
                Text("Hallo, TrackCovidCluster-Fans!")
                    .font(.title)
                    .padding()
                
                HStack {
                    Button(action: {
                        // your action here
                    }) {
                        Text("Button 1")
                        .padding()
                        .foregroundColor(.white)
                    }
                    .background(Color.blue)
                    .padding()

                    Button(action: {
                        // your action here
                    }) {
                        Text("Button 2")
                        .padding()
                        .foregroundColor(.white)
                    }
                    .background(Color.blue)
                .padding()
                }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
