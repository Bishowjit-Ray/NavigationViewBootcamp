//
//  ContentView.swift
//  NavigationViewBootCamp
//
//  Created by Bishowjit Ray on 15/9/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView{
            ScrollView{
                NavigationLink("Hello World", destination: MyotherScreen())
                Text("Hello, world!")
                Text("Hello, world!")
                Text("Hello, world!")
            }
            .navigationTitle("All inboxes")
//            .navigationBarTitleDisplayMode(.automatic)
//            .navigationBarHidden(true)
            .navigationBarItems(leading:
                                    
                NavigationLink(destination: MyotherScreen(), label: {
                
                HStack {
                    Image(systemName: "person.fill")
                    Image(systemName: "flame.fill")
                }
            }),
              trailing: Image(systemName: "gear"))
        }
        .accentColor(.red)
            
    }
}
struct MyotherScreen: View{
    @Environment (\.presentationMode) var presentationMode
    var body: some View{
        ZStack{
            Color.purple.edgesIgnoringSafeArea(.all)
                .navigationTitle("PurpleScreen!")
            VStack {
                Button("Back Button"){
                    presentationMode.wrappedValue.dismiss()
                }
                NavigationLink("Click here", destination:Text("3rd screen") )
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
