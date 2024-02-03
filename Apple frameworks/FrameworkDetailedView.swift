//
//  FrameworkDetailedView.swift
//  Apple frameworks
//
//  Created by Gianmarco on 27/01/24.
//

import SwiftUI

struct FrameworkDetailedView: View {
    let framework: Framework
    @Binding var isShowingDetailedView: Bool
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            XDismissButton(isShowingDetailedView: $isShowingDetailedView)
            Spacer()
            frameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Button{
                isShowingSafariView = true
            } label: {
                AFButton(title: "Learn more")
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailedView(framework: MockData.frameworks[1], isShowingDetailedView: .constant(false))
    }
}
