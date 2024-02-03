//
//  XDismissButton.swift
//  Apple frameworks
//
//  Created by Gianmarco on 03/02/24.
//

import SwiftUI

struct XDismissButton: View {
    @Binding var isShowingDetailedView: Bool
    
    var body: some View {
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
    }
}

struct XDismissButton_Previews: PreviewProvider {
    static var previews: some View {
        XDismissButton(isShowingDetailedView: .constant(true))
    }
}
