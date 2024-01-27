//
//  FrameworkGridViewModel.swift
//  Apple frameworks
//
//  Created by Gianmarco on 27/01/24.
//

import SwiftUI

final class FrameworkGridViewModel: ObservableObject {
    
    var selectedFramework: Framework?{
        didSet{
            isShowingDetailView = true
        }
    }
    
    @Published var isShowingDetailView = false
    
    
}
