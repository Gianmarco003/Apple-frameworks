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
        NavigationStack {
            ScrollView{
                LazyVGrid(columns: viewModel.columns) {
                    ForEach(MockData.frameworks, id: \.id){
                        framework in
                        NavigationLink(value: framework) {
                            frameworkTitleView(framework: framework)
                        }
                    }
                }
            }
            .navigationTitle("Apple frameworks")
            .navigationDestination(for: Framework.self) { framework in
                FrameworkDetailedView(framework: framework)
            }
        }
    }
}

struct FrameworkGridView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkGridView()
    }
}
