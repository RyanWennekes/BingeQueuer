//
//  SeriesList.swift
//  BingeQueuer
//
//  Created by Ryan Wennekes on 09/02/2022.
//

import SwiftUI

struct SeriesList: View {
    var body: some View {
        NavigationView()
        {
            VStack {
                ForEach(seriesSourceList) { series in
                    NavigationLink(destination:
                        BingeRow(series: series)) {
                        BingeRow(series: series)
                    }
                }
            }
            .navigationBarTitle("Binge Queuer")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct SeriesList_Previews: PreviewProvider {
    static var previews: some View {
        SeriesList()
    }
}
