//
//  FrameworkGridView.swift
//  Apple frameworks
//
//  Created by Gianmarco on 27/01/24.
//

import SwiftUI

struct FrameworkGridView: View {
    @StateObject var viewModel = FrameworkGridViewModel()
    
    
    var body: some View {
        NavigationView {
            List {
                ForEach(MockData.frameworks, id: \.id){
                    framework in
                    NavigationLink(destination:
                                    FrameworkDetailedView(framework: framework,
                                                          isShowingDetailedView: $viewModel.isShowingDetailView)){
                        frameworkTitleView(framework: framework)
                    }
                }
            }
            .navigationTitle("Apple frameworks")
        }
        .accentColor(Color(.label))
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
