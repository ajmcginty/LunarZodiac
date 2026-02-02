//
//  ContentView.swift
//  LunarZodiac
//
//  Created by Aidan McGinty on 2/2/26.
//

import SwiftUI

struct ContentView: View {
    @State private var imageNumber = 6
    @State private var year = 2026
    private let animalNames = ["RAT", "OX", "TIGER", "RABBIT", "DRAGON", "SNAKE", "HORSE", "GOAT", "MONKEY", "ROOSTER", "DOG", "PIG"]
    
    var body: some View {
        VStack {
            Text(String(year))
                .font(.largeTitle)
                .fontWeight(.black)
                .foregroundStyle(.red)
            
            Spacer()
            
            Image("image\(imageNumber)")
                .resizable()
                .scaledToFit()
                .imageScale(.large)
                .foregroundStyle(.tint)
            
            Spacer()
            
            HStack {
                Button {
                    year -= 1
                    
                    imageNumber = imageNumber <= 0 ? animalNames.count - 1 : imageNumber - 1
                    
                } label: {
                    Image(systemName: "chevron.left")
                }
                
                Spacer()
                
                Button {
                    year += 1
                    
                    imageNumber = imageNumber >= animalNames.count - 1 ? 0 : imageNumber + 1
                    
                } label: {
                    Image(systemName: "chevron.right")
                }
            }
            .buttonStyle(.glassProminent)
            .font(.largeTitle)
            .fontWeight(.black)
            .tint(.red)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
