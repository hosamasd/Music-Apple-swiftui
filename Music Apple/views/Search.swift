//
//  Search.swift
//  Music Apple
//
//  Created by hosam on 11/17/20.
//

import SwiftUI

struct Search: View {
    
    @State var search=""
    var columns = Array(repeating: GridItem(.flexible()), count: 2)
    
    var body: some View {
        ScrollView {
            
            VStack(spacing:18) {
                
                HStack{
                    
                    Text("Search")
                        .font(.largeTitle)
                        .fontWeight(.heavy)
                        .foregroundColor(.primary)
                    
                    Spacer(minLength: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/)
                    
                }
                
                HStack(spacing:15) {
                    Image(systemName: "magnifyingglass")
                        .foregroundColor(.primary)
                    
                    TextField("Search",text:$search)
                }
                .padding(.vertical,10)
                .padding(.horizontal)
                .background(Color.primary.opacity(0.06))
                .cornerRadius(15)
                
                //gridview
                LazyVGrid(columns: columns,spacing: 20){
                    
                    ForEach(1...10,id: \.self){index in
                        
                        Image("p\(index)")
                            .resizable()
                            .aspectRatio(contentMode: .fill)
                            
                            // two side padding = 30
                            // spacing = 20
                            // total = 50
                            .frame(width: (UIScreen.main.bounds.width - 50) / 2, height: 180)
                            .cornerRadius(15)
                    }
                }
                .padding(.top,10)
            }
            .padding()
            
            //padding miniplayer size
            .padding(.bottom,80)
        }
    }
}

struct Search_Previews: PreviewProvider {
    static var previews: some View {
        Search()
    }
}
