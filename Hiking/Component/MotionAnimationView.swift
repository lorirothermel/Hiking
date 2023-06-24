//
//  MotionAnimationView.swift
//  Hiking
//
//  Created by Lori Rothermel on 6/24/23.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    
        // MARK: - FUNCTIONS
    
    // MARK: - 1. Random Coordinate
    func randomCoordinate() -> CGFloat {
        return CGFloat.random(in: 0...256)
    }
    
    // MARK: - 2. Random Size
    func randomSize() -> CGFloat {
        return CGFloat(Int.random(in: 4...80))
    }
    // MARK: - 3. Random Scale
    func randomScale() -> CGFloat {
        return CGFloat(Double.random(in: 0.1...2.0))
    }
    // MARK: - 4. Random Speed
    func randomSpeed() -> Double {
        return Double.random(in: 0.05...1.0)
    }
    // MARK: - 5. Random Delay
    func randomDelay() -> Double {
        return Double.random(in: 0...2)
    }
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundColor(.white)
                    .opacity(0.25)
                    .frame(width: randomSize())
                    .position(
                        x: randomCoordinate(),
                        y: randomCoordinate()
                    )  // .position
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                            isAnimating = true
                        }  // withAnimation
                    }  // .onAppear
                    
            }  // ForEach
        }  // ZStack
        .frame(width: 256, height: 256)
        .mask(Circle())
        .drawingGroup()
    }  // some View
}  // MotionAnimationView

struct MotionAnimationView_Previews: PreviewProvider {
    static var previews: some View {
        Color.teal.ignoresSafeArea(.all)
            MotionAnimationView()
                .background(
                    Circle()
                        .fill(.teal)
                )
        
    }
}
