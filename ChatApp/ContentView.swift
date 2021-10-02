//
//  ContentView.swift
//  ChatApp
//
//  Created by FX on 2021/09/30.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView {
            Home().tabItem {
                Image(systemName: "message.fill").font(.title)
            }
            
            Text("Peroson").tabItem {
                Image(systemName: "person.fill").font(.title)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .accentColor(Color("background"))
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}



//HomeView
struct Home: View {
    var body: some View {
        ZStack {
            Color("background").edgesIgnoringSafeArea(.top)
            VStack {
                topView()
            }
        }
    }
}

//Top View

struct topView: View {
    
    var body: some View {
        VStack {
            HStack(spacing: 15) {
                Text("Chats").fontWeight(.heavy).font(.system(size: 23))
                
                Spacer()
                
                Button(action: {
                    
                }) {
                    Image(systemName: "magnifyingglass")
                        .resizable()
                        .frame(width: 20, height: 20)
                }
                
                Button(action: {
                    
                }) {
                    Image("menu")
                        .resizable()
                        .frame(width: 40, height: 40)
                }
            }
            .foregroundColor(Color.white)
            .padding()
            
            GeometryReader {_ in
                MainView().clipShape(Rounded())
            }
        }
    }
}


struct MainView: View {
    var body: some View {
        List(0..<15) {_ in
            Text("Temp")
        }
    }
}


struct Rounded: Shape {
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: .topLeft,cornerRadii: CGSize(width: 55, height: 55))
        
        return Path(path.cgPath)
    }
}

struct msgType: Identifiable {
    var id: Int
    var msg: String
    var time: String
    var name: String
    var msgs: String
    var pic: String
}


// a sample data....

var msgs: [msgType] = [
    msgType(id: 0, msg: "New Album is going to be Released!!", time: "14:32", name: "Taylor", msgs: "2", pic: "p0"),
    msgType(id: 0, msg: "Hi, This is Steve Rogers", time: "14:35", name: "Steve", msgs: "2", pic: "p1"),
    msgType(id: 0, msg: "New tutorial from kavostf", time: "14:39", name: "kavsoft", msgs: "3", pic: "p2"),
]
