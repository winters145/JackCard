//
//  ContentView.swift
//  JackCard
//
//  Created by Jack Winterschladen on 02/08/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            
            Color("BackgroundColour")
                .edgesIgnoringSafeArea(.all)
            
            VStack {
                Image("JackPic")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 175, height: 175)
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Jack Winterschladen")
                    .font(Font.custom("PlayfairDisplay-Italic", size: 35))
                    .bold()
                    .padding()
                .foregroundColor(.white)
                Text("iOS Developer")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                Divider()
                InfoView(text: "+44 77 2223 6999", imageName: "phone.fill")
                InfoView(text: "winterschladen.j@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
            ContentView()
                .previewInterfaceOrientation(.portraitUpsideDown)
        }
    }
}
