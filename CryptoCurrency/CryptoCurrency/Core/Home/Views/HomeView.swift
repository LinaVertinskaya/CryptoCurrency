//
//  HomeView.swift
//  CryptoCurrency
//
//  Created by Лина Вертинская on 27.11.22.
//

import SwiftUI

struct HomeView: View {
    @StateObject var viewModel = HomeViewModel()
    
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                
                // MARK: - Top movers view
                TopMoversView(viewModel: viewModel)

                Divider()

                // MARK: - All coins view
                AllCoinsView(viewModel: viewModel)
            }
            .navigationTitle("Live Prices")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
