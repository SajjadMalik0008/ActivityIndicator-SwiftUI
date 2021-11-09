//
//  ContentView.swift
//  ActivityIndicator-SwiftUI
//
//  Created by devadmin on 09.11.21.
//

import SwiftUI

struct ContentView: View {
    @State private var isLoading = false
    
    var body: some View {
        ZStack {
            Color(.red)
                .ignoresSafeArea()
            Text("Hello, world!")
                .padding()
            if isLoading {
                ZStack {
                    Color(.systemBackground)
                        .ignoresSafeArea()
                }
                ProgressView()
                    .progressViewStyle(CircularProgressViewStyle(tint: .blue))
                    .scaleEffect(4)
            }
        }.onAppear{
            startNetworrkCall()
        }
    }
    
    func startNetworrkCall() {
        isLoading = true
        DispatchQueue.main.asyncAfter(deadline: .now() + 3) {
            isLoading = false
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
