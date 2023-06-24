//
//  CustomCircleView.swift
//  Hiking
//
//  Created by Lori Rothermel on 6/24/23.
//

import SwiftUI

struct CustomCircleView: View {
    @State private var isAnimateGradient: Bool = false
    
    
    
    var body: some View {
        ZStack {
            Circle()
                .fill(
                    LinearGradient(
                        colors: [
                            .customIndigoMedium,
                            .customSalmonLight
                        ],
                        startPoint: isAnimateGradient ? .topLeading : .bottomLeading,
                        endPoint: isAnimateGradient ?  .bottomTrailing : .topTrailing
                    )  // LinearGradient
                )  // .fill
                .onAppear {
                    withAnimation(.linear(duration: 3.0).repeatForever(autoreverses: true)) {
                        isAnimateGradient.toggle()
                    }  // withAnimation
                }  // .onAppear
                       
            MotionAnimationView()
            
        }  // ZStack
        .frame(width: 256, height: 256)
        
    }  // some View
}  // CustomCircleView




struct CustomCircleView_Previews: PreviewProvider {
    static var previews: some View {
        CustomCircleView()
    }
}
