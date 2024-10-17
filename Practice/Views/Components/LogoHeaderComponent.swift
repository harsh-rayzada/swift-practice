//
//  LogoHeaderComponent.swift
//  Practice
//
//  Created by Harsh Rayzada on 2024-10-08.
//  Copyright © 2024 Learning. All rights reserved.
//

import SwiftUI

struct LogoHeaderComponent: View {
    //variable to receive value from parent
    @Binding var fontSize: Float
    var body: some View {
        Text("PracticeUI")
        //manually wrapping the expected type because Swift considers Float and CGFloat as different types
            .font(.system(size: CGFloat(fontSize)))
            .foregroundColor(.green)
            .fontWeight(.bold)
    }
}
