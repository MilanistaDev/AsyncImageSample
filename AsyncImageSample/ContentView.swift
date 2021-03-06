//
//  ContentView.swift
//  AsyncImageSample
//
//  Created by Takuya Aso on 2021/06/11.
//

import SwiftUI

struct ContentView: View {
    
    private let profileImageLink = "http://github.com/milanistaDev.png"
    
    var body: some View {
        NavigationView {
            VStack {
                AsyncImage(url: URL(string: profileImageLink)) { image in
                    image
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(12.0)
                        .frame(width: 200.0, height: 200.0)
                } placeholder: {
                    ProgressView("Loading")
                        .frame(width: 80.0, height: 80.0)
                        .background(Color.gray).opacity(1)
                        .cornerRadius(8.0)
                }
                .padding(.top, 50.0)
                Spacer()
            }
            .navigationTitle("AsyncImage Sample")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
