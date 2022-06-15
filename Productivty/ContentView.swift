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
        .accentColor(Color.gray)
        .onAppear{
            UITabBar.appearance().backgroundColor = UIColor.black
            UITabBar.appearance().unselectedItemTintColor = UIColor.red
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct FirstView: View{
    @State private var firstItem: String = ""
    var body: some View{
        ZStack{
            Color.red.ignoresSafeArea(edges: .top)
            VStack{
                Text("To Do List").fontWeight(.bold).padding(.all).font(.title)
                TextField("1st Item", text: $firstItem).textFieldStyle(.roundedBorder)
                Spacer()
                
                
            }
            
        }
    }
}

struct SecondView: View{
    var body: some View{
        ZStack{
            Color.blue.ignoresSafeArea(edges: .top)
            VStack{
                Text("Due Dates").fontWeight(.bold).padding(.all).font(.title)
                Spacer()
            }
            
        }
    }
}
struct ThirdView: View{
    var body: some View{
        ZStack{
            Color.green.ignoresSafeArea(edges: .top)
            VStack{
                Text("Resolution").fontWeight(.bold).padding(.all).font(.title)
                Spacer()
            }
        }
    }
}

struct FourthView: View{
    var body: some View{
        ZStack{
            Color.orange.ignoresSafeArea(edges: .top)
            VStack{
                Text("Social").fontWeight(.bold).padding(.all).font(.title)
                Spacer()
            }
        }
    }
}
struct FifthView: View{
    var body: some View{
        ZStack{
            Color.purple.ignoresSafeArea(edges: .top)
            VStack{
                Text("Personal").fontWeight(.bold).padding(.all).font(.title)
                Spacer()
            }
        }
    }
}

