//
//  Structs.swift
//  Apple frameworks
//
//  Created by Gianmarco on 27/01/24.
//

import Foundation
import SwiftUI

struct frameworkTitleView:View {
    let framework: Framework
    
    var body: some View{
        VStack{
            Image(framework.imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 100, height: 100)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.semibold)
                .foregroundColor(Color(.label))
                .scaledToFit()
                .minimumScaleFactor(0.6)
        }.padding()
    }
}
