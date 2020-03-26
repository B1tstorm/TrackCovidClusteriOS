//
//  iBeaconReceiver.swift
//  hackaton_TrackCovidCluster
//
//  Created by Oliver Gorczyca on 26.03.20.
//  Copyright © 2020 onezero-coding. All rights reserved.
//

import SwiftUI

struct iBeaconReceiverView: View {
    var body: some View {
        VStack {
            Text("iBeacon received:")
                .font(.title)
                .bold()
            .padding()
            
            Text("iBeacon")
            .padding()
        }
    }
}

struct iBeaconReceiverView_Previews: PreviewProvider {
    static var previews: some View {
        iBeaconReceiverView()
    }
}
