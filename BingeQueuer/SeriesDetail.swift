//
//  SeriesDetail.swift
//  BingeQueuer
//
//  Created by Ryan Wennekes on 09/02/2022.
//

import SwiftUI
import MapKit

struct SeriesDetail: View {
    @State var series: Series
    var spacerSize: CGFloat = 125
    var mapHeight: CGFloat = 250
    
    var body: some View {
        ScrollView() {
            VStack() {
                MapView(coordinate: CLLocationCoordinate2DMake(series.latitude,series.longitude))
                    .frame(height: mapHeight)
                    .ignoresSafeArea(.all, edges: [.top])
                Spacer()
                CircleImage(image: Image(series.image))
                    .offset(y: -spacerSize)
                    .padding(.bottom, -spacerSize)
                VStack(alignment: .leading) {
                    Text(series.title)
                        .font(.largeTitle)
                    Text("Seasons: \(series.seasons)")
                        .font(.subheadline)
                    Divider()
                    Text("About \(series.title)")
                        .font(.title3)
                    Text(series.description)
                        .font(.caption)
                }
                .padding()
            }
        }
        .navigationTitle("Details")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SeriesDetail_Previews: PreviewProvider {
    static var previews: some View {
        SeriesDetail(series: seriesSourceList[4])
    }
}
