//
//  ContentView.swift
//  Productivty
//
//  Created by Luke on 6/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        TabView{
            FirstView().tabItem{
                Image(systemName: "person")
                Text("1st")
            }
            SecondView().tabItem{
                Image(systemName: "house")
                Text("2nd")
            }
            ThirdView().tabItem{
                Image(systemName: "person")
                Text("doc")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FirstView: View{
    var body: some View{
        ZStack{
            Color.red.ignoresSafeArea(edges: .top)
            Text("First View")
        }
    }
}

struct SecondView: View{
    var body: some View{
        ZStack{
            Color.blue.ignoresSafeArea(edges: .top)
            Text("Second View")
        }
    }
}
struct ThirdView: View{
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea(edges: .top)
            Text("Third View")
        }
    }
}
