//
//  ContentView.swift
//  Shared
//
//  Created by Akshay Anil Jadhav on 10/09/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            VStack(alignment: .center){
                VStack(alignment: .center, spacing: 20) {
                    
                    Image("profileImage").resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 180, height: 180, alignment: .top)
                        .clipShape(Circle())
                        .shadow(color: .pink, radius: 5, x: 5, y: 5)
                    Text("AKSHAY").font(.system(size: 30)).fontWeight(.bold).font(.system(.largeTitle)).foregroundColor(.white).shadow(radius: 5)
                    Text("Full Stack Web | Mobile Dev").foregroundColor(.white).font(.body)
                    HStack(spacing: 40) {
                        Image(systemName: "heart.circle").resizable().aspectRatio( contentMode: .fit)
                        Image(systemName: "network").resizable().aspectRatio( contentMode: .fit)
                        Image(systemName: "message.circle").resizable().aspectRatio( contentMode: .fit)
                        Image(systemName: "phone.circle").resizable().aspectRatio( contentMode: .fit)
                    }
                    .foregroundColor(.white)
                    .frame(width: 250, height: 50, alignment: .center)
                    .shadow(color: .pink, radius: 5,  y: 8)
                    
                }
                Spacer()
                VStack(alignment: .center, spacing: 30) {
                    RoundedRectangle(cornerRadius: 120)
                        .padding(4.0)
                        .frame(width: 200, height: 50, alignment: .center)
                        .foregroundColor(.white)
                        .shadow(color: .pink, radius: 8, y: 8)
                        .overlay(
                            Text("Follow")
                                .fontWeight(.bold)
                                .foregroundColor(.pink)
                                .font(.system(size:30))
                        )
                    HStack(alignment: .center, spacing: 60){
                        VStack{
                            Text("1.5 M").font(.title).foregroundColor(.pink)
                            Text("Appreciations").font(.caption).foregroundColor(.gray)
                        }
                        VStack{
                            Text("1.5 M").font(.title).foregroundColor(.pink)
                            Text("Appreciations").font(.caption).foregroundColor(.gray)
                        }
                        VStack{
                            Text("1.5 M").font(.title).foregroundColor(.pink)
                            Text("Appreciations").font(.caption).foregroundColor(.gray)
                        }
                    }
                    Text("About Me")
                        .font(.system(size:40))
                    Text("I’m a software engineer, I work on Web and Mobile apps. I mostly work with React. Now I am learning iOS with Swift UI.")
                        .font(.system(.body)).foregroundColor(.black).multilineTextAlignment(.center)
                        .lineLimit(4)
                        .opacity(0.7)
                        
                }
                
            }
            .padding(.trailing)
            .padding(.leading)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        Group {
            ContentView()
            ContentView()
        }
    }
}
