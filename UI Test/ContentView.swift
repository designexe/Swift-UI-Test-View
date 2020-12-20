//
//  ContentView.swift
//  UI Test
//
//  Created by Tim Irrgang on 20.12.20.
//

import SwiftUI
struct ContentView: View {
    var body: some View{
        
        TabView {
            NavigationView {
                
                List(0..<5){
                    _ in
                    NavigationLink(
                        destination: Text("hallo")){
                    SingleMessageView()
                    }}
                .navigationTitle("Inbox")
                .navigationBarItems(trailing: Image(systemName: "square.and.pencil"))
                    
                
            }
            .tabItem {
                Text("Inbox")
                Image(systemName: "envelope.fill")
                Text("Hallo")
                
            }
            Text("Send")
                .tabItem {
                    Image(systemName: "paperplane.fill")
                    Text("Send")
                
                    
                }
            
        }
            
        
        
           
        

    }
    
}


struct SingleMessageView: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle")
                .resizable()
                .frame(width: 50, height: 50, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                .foregroundColor(.gray)
            
            VStack(alignment: .leading){
                HStack {
                    Text("Absender")
                        .font(Font.headline)
                    Spacer()
                    Text("01.01.2021")
                        .font(Font.subheadline.monospacedDigit())
                        .foregroundColor(.gray)
                }
            Text("Betreff")
                .font(Font.subheadline)
                .lineLimit(1)
            }
        }
    }
}
        
        
        

// Erstellt die Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
