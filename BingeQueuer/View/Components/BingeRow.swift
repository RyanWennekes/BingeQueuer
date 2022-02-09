//
//  BingeRow.swift
//  BingeQueuer
//
//  Created by Ryan Wennekes on 09/02/2022.
//

import SwiftUI

struct BingeRow: View {
    @State var series: Series
    var body: some View {
        HStack {
            Image(series.image)
                .resizable()
                .frame(width: 50, height: 50)
            Text(series.title)
            Spacer()
        }
    }
}

struct BingeRow_Previews: PreviewProvider {
    static var previews: some View {
        BingeRow(series: seriesSourceList[4])
    }
}
