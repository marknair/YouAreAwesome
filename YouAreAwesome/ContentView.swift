//
//  ContentView.swift
//  YouAreAwesome
//
//  Created by Mark Nair on 8/29/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    @State private var imageNumber = 0
    
    
    var body: some View {
        
        VStack {
            Image(imageName)
                .resizable()
                .scaledToFit()
                .cornerRadius(30)
                .shadow(radius: 30)
                .padding()
                .frame(width: 500, height: 500)
            
            Spacer()
            
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .minimumScaleFactor(0.5)
                .multilineTextAlignment(.center)
                .foregroundStyle(.red)
                .frame(height: 150)
                .frame(maxWidth: .infinity)
                //kk.border(.orange, width: 1)
                .padding()
            
            Spacer()
                      
                Button("Show Message") {
                    let message1 = "Puppies"
                    let message2 = "Kittens"
                    
                    messageString = (messageString == message1 ? message2 : message1)
                    imageName = (imageName == "image0" ? "image1" : "image0")
                    
                    imageName = "image\(imageNumber)"
                    imageNumber += 1
                    if imageNumber > 9 {
                        imageNumber = 0
                    }
                    print(imageNumber)
                    
                }
                .buttonStyle(.borderedProminent)
                
                Spacer()
            
        }
    }
}

#Preview {
    ContentView()
}
