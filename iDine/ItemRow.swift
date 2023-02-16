//
//  ItemRow.swift
//  iDine
//
//  Created by Philip Keller on 2/15/23.
//

import SwiftUI

struct ItemRow: View {
    let item: MenuItem
    
    let colors: [String: Color] = ["D": .purple, "G": .black, "N": .red, "S": .blue, "V": .green]
    
    var body: some View {
        HStack {
            Image(item.thumbnailImage)
                .clipShape(Circle())
                .overlay(Circle().stroke(.gray, lineWidth: 2))
                .shadow(radius: 7.0)
            
            VStack(alignment: .leading) {
                Text(item.name)
                    .font(.headline)
                    .opacity(0.7)
                Text("$\(item.price)")
                    .font(.body)
                    .opacity(0.6)
            }
            
            Spacer()
            
            ForEach(item.restrictions, id: \.self) { restriction in
                Text(restriction)
                    .font(.caption)
                    .fontWeight(.black)
                    .padding(5)
                    .background(colors[restriction, default: .black])
                    .clipShape(Circle())
                    .foregroundColor(.white)
            }
        }
    }
}

struct ItemRow_Previews: PreviewProvider {
    static var previews: some View {
        ItemRow(item: MenuItem.example)
    }
}
