//
//  ContentView.swift
//  Part1
//
//  Created by Keaton Hollobaugh on 1/19/23.
//

import SwiftUI
import MapKit

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.2928, longitude: -79.4021), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
    var body: some View {
        
        Map(coordinateRegion: $region)
                    .frame(width: 600, height: 500)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
