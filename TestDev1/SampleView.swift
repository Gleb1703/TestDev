//
//  SampleView.swift
//  TestDev1
//
//  Created by gleb on 06/04/2024.
//

import SwiftUI

struct SampleView: View {
    @StateObject var viewModel = SampleViewModel()
    
    var body: some View {
        VStack {
            Text("")
        }
        .padding()
        .background(Color.black.opacity(0.5))
        .foregroundColor(.white)
    }
}
