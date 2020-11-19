//
//  TabBar.swift
//  Music Apple
//
//  Created by hosam on 11/17/20.
//

import SwiftUI

struct TabBar: View {
    
    @State var current=2
    
    // Miniplayer Properties...
    @State var expand = false
    
    @Namespace var animation
    
    var body: some View {
        
        ZStack(alignment: Alignment(horizontal: .center, vertical: .bottom), content: {
            
            TabView(selection: $current  ){
                
                Text("Library")
                    .tag(0)
                    .tabItem {
                        Image(systemName: "rectangle.stack.fill")
                        Text("Library")
                    }
                
                Text("Radio")
                    .tag(1)
                    .tabItem {
                        
                        Image(systemName: "dot.radiowaves.left.and.right")
                        
                        Text("Radio")
                    }
                
                Search()
                    .tag(2)
                    .tabItem {
                        
                        Image(systemName: "magnifyingglass")
                        
                        Text("Search")
                    }
            }
            
            Miniplayer(animation: animation, expand: $expand)
            
//                .offset(y:-48)
        })
        }
}

struct TabBar_Previews: PreviewProvider {
    static var previews: some View {
        TabBar()
    }
}
