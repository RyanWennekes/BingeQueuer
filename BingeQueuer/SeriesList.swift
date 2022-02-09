//
//  SeriesList.swift
//  BingeQueuer
//
//  Created by Ryan Wennekes on 09/02/2022.
//

import SwiftUI

struct SeriesList: View {
    @State var seriesList = seriesSourceList
    
    var body: some View {
        NavigationView()
        {
            VStack {
                List {
                    ForEach(seriesList, id: \Series.id) { series in
                        NavigationLink(destination:
                            SeriesDetail(series: series)) {
                            BingeRow(series: series)
                        }
                    }
                    .onDelete(perform: delete)
                }
                .toolbar {
                    EditButton()
                }
            }
            .navigationBarTitle("Binge Queuer")
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }
    
    func delete(at offsets: IndexSet) {
        seriesList.remove(atOffsets: offsets)
    }
}

struct SeriesList_Previews: PreviewProvider {
    static var previews: some View {
        SeriesList()
    }
}
