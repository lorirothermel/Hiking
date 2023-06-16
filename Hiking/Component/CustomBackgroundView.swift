//
//  CustomBackgroundView.swift
//  Hiking
//
//  Created by Lori Rothermel on 6/10/23.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            // MARK: - 3 Depth
            Color.customGreenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            // MARK: - 2 Light
            Color.customGreenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            // MARK: - 1 Surface
            
            LinearGradient(colors: [.customGreenLight,
                                    .customGreenMedium],
                           startPoint: .top,
                           endPoint: .bottom
            )  // LinearGradient
            .cornerRadius(40)
        }  // ZStack
    }  // some View
}  // CustomBackgroundView


struct CustomBackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        CustomBackgroundView()
            .padding()
    }
}
