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
                Spacer()
                Image(systemName: "pencil")
                Spacer()
                Text("To Do List")
            }
            SecondView().tabItem{
                Image(systemName: "calendar")
                Spacer()
                Text("Due Dates")
            }
            ThirdView().tabItem{
                Image(systemName: "doc.text")
                Spacer()
                Text("Resolution")
            }
            FourthView().tabItem{
                Image(systemName: "person.2")
                Spacer()
                Text("Social")
            }
            FifthView().tabItem{
               
                Image(systemName: "person")
                Spacer()
                Text("Personal")
                
            }
        }
        .accentColor(Color.black)
        .onAppear{
            UITabBar.appearance().backgroundColor = UIColor.gray
            UITabBar.appearance().unselectedItemTintColor = UIColor.blue
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
            Text("To Do List").padding().font(.title)
            Spacer()
        }
    }
}

struct SecondView: View{
    var body: some View{
        ZStack{
            Color.blue.ignoresSafeArea(edges: .top)
            Text("Due Dates").padding().font(.title)
            Spacer()
        }
    }
}
struct ThirdView: View{
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea(edges: .top)
            Text("Resolution").padding().font(.title)
            Spacer()
        }
    }
}

struct FourthView: View{
    var body: some View{
        ZStack{
            Color.orange.ignoresSafeArea(edges: .top)
            Text("Social").padding().font(.title)
            Spacer()
        }
    }
}
struct FifthView: View{
    var body: some View{
        ZStack{
            Color.purple.ignoresSafeArea(edges: .top)
            Text("Personal").padding().font(.title)
            Spacer()
        }
    }
}
