//
//  Structs.swift
//  Apple frameworks
//
//  Created by Gianmarco on 27/01/24.
//

import Foundation
import SwiftUI

struct frameworkTitleView: View {
    let framework: Framework
    
    var body: some View{
        HStack(){
            Image(framework.imageName)
                .symbolRenderingMode(.multicolor)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 70, height: 70)
            Text(framework.name)
                .font(.title2)
                .fontWeight(.bold)
                .scaledToFit()
                .minimumScaleFactor(0.6)
                .padding()
            Image(systemName: "sun")
        }
    }
}

struct frameworkTitleView_preview: PreviewProvider {
    static var previews: some View {
        frameworkTitleView(framework: MockData.sampleFramework)
    }
}
