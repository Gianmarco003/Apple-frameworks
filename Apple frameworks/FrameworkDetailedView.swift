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
    
    var body: some View {
        VStack {
            HStack {
                Spacer()
                Button{
                    isShowingDetailedView = false
                }label: {
                    Image(systemName: "xmark")
                        .foregroundColor(Color(.label))
                        .imageScale(.large)
                        .frame(width: 44, height: 44)
                }.padding()
            }
            Spacer()
            frameworkTitleView(framework: framework)
            Text(framework.description)
                .font(.body)
            Spacer()
            Button{
                
            } label: {
                AFButton(title: "Learn more")
            }
        }.padding()
    }
}

struct FrameworkDetailedView_Previews: PreviewProvider {
    static var previews: some View {
        FrameworkDetailedView(framework: MockData.sampleFramework, isShowingDetailedView: .constant(false))
    }
}
