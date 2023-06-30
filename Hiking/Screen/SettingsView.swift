//
//  SettingsView.swift
//  Hiking
//
//  Created by Lori Rothermel on 6/30/23.
//

import SwiftUI

struct SettingsView: View {
    var body: some View {
        List {
            // MARK: - Section Header
            Section {
                HStack {
                    Spacer()
                    Image(systemName: "laurel.leading")
                        .font(.system(size: 80, weight: .black))
                    
                    VStack(spacing: -10) {
                        Text("Hike")
                            .font(.system(size: 66, weight: .black))
                        Text("Editor's Choice")
                            .fontWeight(.medium)
                    }  // VStack
                    
                    Image(systemName: "laurel.trailing")
                        .font(.system(size: 80, weight: .black))
                    Spacer()
                }  // HStack
                .foregroundStyle(
                    LinearGradient(colors: [.customGreenLight, .customGreenMedium, .customGreenDark], startPoint: .top, endPoint: .bottom)
                )  // .foregroundStyle
                .padding(.top, 8)
                
                VStack(spacing: 8) {
                    Text("Where can you find \nperfect tracks?")
                        .font(.title2)
                        .fontWeight(.heavy)
                    
                    Text("The hike which looks gorgeous in photos but is even better once you are actually there. The hike that you hope to do again someday. \nFind the best day hikes in the app.")
                        .font(.footnote)
                        .italic()
                    Text("Dust off the boots! It's time for a walk.")
                        .fontWeight(.heavy)
                        .foregroundColor(.customGreenMedium)
                }  // VStack
                .multilineTextAlignment(.center)
                .padding(.bottom, 16)
                .frame(maxWidth: .infinity)
                
            }  // Section
            .listRowSeparator(.hidden)
            // MARK: - Section Icons
            // MARK: - Section About
        }  // List
        
        
    }  // some View
}  // SettingsView



struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsView()
    }
}
