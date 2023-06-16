//
//  CustomButtonView.swift
//  Hiking
//
//  Created by Lori Rothermel on 6/13/23.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            
            Circle()
                .fill(
                    LinearGradient(colors: [.white, .customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                )  // .fill
                      
            Circle()
                .stroke(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom), lineWidth: 4)
            
            Image(systemName: "figure.hiking")
                .font(.system(size: 30))
                .fontWeight(.black)
                .foregroundStyle(
                    LinearGradient(colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom)
                )
            
        }  // ZStack
        .frame(width: 58, height: 58)
        
    }  // some View
}  // CustomButtonView

struct CustomButtonView_Previews: PreviewProvider {
    static var previews: some View {
        CustomButtonView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
