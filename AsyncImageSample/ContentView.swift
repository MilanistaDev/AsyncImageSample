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
                AsyncImage(url: URL(string: profileImageLink))
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
