//
//  LocationView.swift
//  Rustiko
//
//  Created by Micah Njeru on 07/02/2024.
//

import SwiftUI
import MapKit

struct LocationView: View {
    
    // Starting location & Zoom Level
    // Rustiko Latitude: 25.884855, Longitude: -80.123619
    @State private var position = MapCameraPosition.region(
        MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.884855, longitude: -80.123619), latitudinalMeters: 1000, longitudinalMeters: 1000)
    )
    
    // Sheet with location options
    @State private var showingSheet = true
    
    // Popover sheet height settings
    let heights = stride(from: 0.3, through: 1.0, by: 0.1).map {PresentationDetent.fraction($0)}
    
    var body: some View {
        VStack {
            
            // Map view
            Map(position: $position)
                .popover(isPresented: $showingSheet){
                    
                    // Title
                    Text("Locations")
                        .font(.title)
                        .padding()
                    
                    // Sub heading instructions
                    Text("Click on the location Name to zoom in")
                        .padding()
                    
                    // Sample Location
                    HStack {
                        
                        // Image Section
                        Image("caesar salad")
                            .resizable()
                            .frame(width: 80, height: 80)
                            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
                        
                        // Text section
                        VStack (alignment: .leading) {
                            
                            // Location title
                            Text("Location Name")
                                .font(.title3)
                            
                            // Address body
                            Text("Street, Address, Apt, Floor, Room.")
                                .font(.subheadline)
                                .lineLimit(2)
                                .truncationMode(.tail)
                            
                            // Jump to location Button
                            Button("Rustiko") {
                                position = MapCameraPosition.region(
                                    MKCoordinateRegion(center: CLLocationCoordinate2D(latitude: 25.884855, longitude: -80.123619), latitudinalMeters: 10, longitudinalMeters: 10)
                                )
                            }
                            
                            // Sheet settings
                            .presentationDetents(Set(heights))
                            .presentationDragIndicator(.visible)
                            .interactiveDismissDisabled()
                        }
                    }
                }
        }
        .frame(maxWidth: .infinity)
    }
}

#Preview {
    LocationView()
}
