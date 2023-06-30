//
//  CardView.swift
//  Hiking
//
//  Created by Lori Rothermel on 6/10/23.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    
    
    func randomImage() {
        
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
                
    }
    
    
    
    var body: some View {
        
        ZStack {
            CustomBackgroundView()
            
            VStack {
            
            // MARK: - Header
                VStack(alignment: .leading) {
                    HStack {
                        Text("Hiking")
                            .font(.system(size: 52))
                            .fontWeight(.black)
                            .foregroundStyle(
                                LinearGradient(
                                    colors: [.customGrayLight, .customGrayMedium], startPoint: .top, endPoint: .bottom
                                )  // LinearGradient
                        )  // .foregroundStyle
                        
                        Spacer()
                        
                        Button {
                            // ACTION: Show a Sheet
                            isShowingSheet.toggle()
                            print("The button was pressed!")
                        } label: {
                            CustomButtonView()
                        }  // Button
                        .sheet(isPresented: $isShowingSheet) {
                            SettingsView()
                                .presentationDragIndicator(.visible)
                                .presentationDetents([.medium, .large])
                        }  // .sheet
                        
                    }  // HStack
                    
                    Text("Fun and enjoyable outdoor activity for friends and families.")
                        .multilineTextAlignment(.leading)
                        .italic()
                        .foregroundColor(.customGrayMedium)
                    
                }  // VStack
                .padding(.horizontal, 30)
                
            // MARK: - Main Content
                           
                ZStack {

                    CustomCircleView()
                    
                    Image("image-\(imageNumber)")
                        .resizable()
                        .scaledToFit()
                        .animation(.default, value: imageNumber)
                    
                }  //  ZStack
                
                // MARK: Footer
                
                Button {
                    randomImage()
                } label: {
                    Text("Explore More")
                        .font(.title2)
                        .fontWeight(.heavy)
                        .foregroundStyle(
                            LinearGradient(
                                colors: [.customGreenLight, .customGreenMedium], startPoint: .top, endPoint: .bottom)
                        )  // .foregroundStyle
                        .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
                }  // Button
                .buttonStyle(GradientButton())
                
                
                
            }  // VStack
        }  // VStack
        .frame(width: 320, height: 570)
        
    }  // some View
}  // CardView



struct CardView_Previews: PreviewProvider {
    static var previews: some View {
        CardView()
    }
}
