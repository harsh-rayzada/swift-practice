//
//  ItemCardListComponent.swift
//  Practice
//
//  Created by Harsh Rayzada on 2024-10-10.
//  Copyright © 2024 Learning. All rights reserved.
//

import SwiftUI

struct ItemCardListComponent: View {
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack{
                ItemCardComponent()
                ItemCardComponent()
                ItemCardComponent()
                ItemCardComponent()
            }
            .frame(maxWidth: .greatestFiniteMagnitude)
        }
    }
}

#Preview {
    ItemCardListComponent()
        .preferredColorScheme(.light)
}
