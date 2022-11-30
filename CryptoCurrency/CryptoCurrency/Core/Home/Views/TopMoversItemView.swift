//
//  TopMoversItemView.swift
//  CryptoCurrency
//
//  Created by Лина Вертинская on 27.11.22.
//

import SwiftUI
import Kingfisher

struct TopMoversItemView: View {
    let coin: Coin

    var body: some View {
        VStack(alignment: .leading) {
            
            // MARK: - Image
            KFImage(URL(string: coin.image))
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundColor(.orange)
                .padding(.bottom, 8)

            // MARK: - Coin info
            HStack(spacing: 2) {
                Text(coin.symbol.uppercased())
                    .font(.caption)
                    .fontWeight(.bold)

                Text("\(coin.currentPrice)")
                    .font(.caption)
                    .foregroundColor(.gray)
            }

            // MARK: - Coin percent change
            Text(coin.priceChangePercentage24H.toPercentString())
                .font(.title2)
                .foregroundColor(coin.priceChangePercentage24H > 0 ? .green : .red)
        }
        .frame(width: 140, height: 140)
        .background(Color("ItemBackgroundColor"))
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(Color(.systemGray4), lineWidth: 1)
        )
    }
}

//struct TopMoversItemView_Previews: PreviewProvider {
//    static var previews: some View {
//        TopMoversItemView()
//    }
//}
