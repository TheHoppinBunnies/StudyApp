//
//  Home.swift
//  StudyApp
//
//  Created by Othmane EL MARIKY on 2024-11-30.
//

import SwiftUI

struct Home: View {
    var body: some View {
        VStack(alignment: .leading) {
            Text("Welcome back")
                .font(.largeTitle)
                .fontWeight(.black)

            Text("Othmane")
                .font(.title2)
                .fontWeight(.bold)
        }
        .vSpacing(.top)
        .hSpacing(.leading)
    }
}

#Preview {
    Home()
}
