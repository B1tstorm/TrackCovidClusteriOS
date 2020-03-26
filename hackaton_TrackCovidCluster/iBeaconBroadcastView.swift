//
//  iBeaconBroadcastView.swift
//  hackaton_TrackCovidCluster
//
//  Created by Oliver Gorczyca on 26.03.20.
//  Copyright © 2020 onezero-coding. All rights reserved.
//

import SwiftUI
import CoreLocation
import CoreBluetooth

struct iBeaconBroadcastView: View {
    var body: some View {
        VStack {
            Text("iBeacon is sending...")
                .font(.title)
                .bold()
            .padding()
        }
    }
    
    func createBeaconRegion() -> CLBeaconRegion? {
        let proximityUUID = UUID(uuidString: "824016EB-775B-4A72-80E8-916E7F223FAA")
        let major : CLBeaconMajorValue = 100
        let minor : CLBeaconMinorValue = 1
        let beaconID = "com.example.myDeviceRegion"
            
        return CLBeaconRegion(proximityUUID: proximityUUID!, major: major, minor: minor, identifier: beaconID)
    }
    
    func advertiseDevice(region : CLBeaconRegion) {
        let peripheral = CBPeripheralManager()
        let peripheralData = region.peripheralData(withMeasuredPower: nil)
            
        peripheral.startAdvertising(((peripheralData as NSDictionary) as! [String : Any]))
    }
}

struct iBeaconBroadcastView_Previews: PreviewProvider {
    static var previews: some View {
        iBeaconBroadcastView()
    }
}
