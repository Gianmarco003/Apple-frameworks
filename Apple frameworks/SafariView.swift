//
//  SafariView.swift
//  Apple frameworks
//
//  Created by Gianmarco on 27/01/24.
//

import SwiftUI
import SafariServices

struct SafariView: UIViewControllerRepresentable {
    let url: URL
    
    func makeUIViewController(context: UIViewControllerRepresentableContext<SafariView> ) -> SFSafariViewController {
        SFSafariViewController(url: url)
    }
    func updateUIViewController(_ uiViewController: SFSafariViewController, context: UIViewControllerRepresentableContext<SafariView>) {
        
    }
}
