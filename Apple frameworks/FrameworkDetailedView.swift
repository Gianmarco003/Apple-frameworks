//
//  FrameworkDetailedView.swift
//  Apple frameworks
//
//  Created by Gianmarco on 27/01/24.
//

import SwiftUI

struct FrameworkDetailedView: View {
    
    let framework: Framework
    @State private var isShowingSafariView = false
    
    var body: some View {
        VStack {
            Spacer()
            frameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
                .padding()
            Spacer()
            Link(destination: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!) {
                Button{
                    
                } label: {
                    //AFButton(title: "Learn more")
                    Label("Learn more", systemImage: "book.fill")
                }
                .buttonStyle(.bordered)
                //.foregroundColor(.yellow)
                //.buttonBorderShape(.roundedRectangle(radius: 20))
                .controlSize(.large)
                .tint(.red)
                .padding(.bottom)
            }
        }
        .sheet(isPresented: $isShowingSafariView, content: {
            SafariView(url: URL(string: framework.urlString) ?? URL(string: "www.apple.com")!)
        })
    }
}

struct FrameworkDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailedView(framework: MockData.frameworks[1])
    }
}
