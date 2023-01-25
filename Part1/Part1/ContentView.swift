//
//  ContentView.swift
//  Part1
//
//  Created by Keaton Hollobaugh on 1/19/23.
//

import SwiftUI
import MapKit
import CoreLocation

struct Marker: Identifiable {
    let id = UUID()
    var location: MapMarker
}

struct ContentView: View {
    @State private var region = MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 40.2928, longitude: -79.4021), span: MKCoordinateSpan(latitudeDelta: 0.005, longitudeDelta: 0.005))
    
    @State private var name = ""
    let markers = [Marker(location: MapMarker(coordinate: CLLocationCoordinate2D(latitude: 40.293732, longitude: -79.404257), tint: .red))]
    
    var body: some View {
        
        Map(coordinateRegion: $region, showsUserLocation: true, annotationItems: markers) { marker in marker.location}
            .edgesIgnoringSafeArea(.all)
            .onTapGesture {
                print("Dupre")
            }
    }
    
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
        }
    }
}
