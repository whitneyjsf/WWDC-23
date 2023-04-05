//
//  TypeWriterView.swift
//  MoodHunt
//
//  Created by Whitney Prajna Pundarika on 05/04/23.
//

import SwiftUI

struct TypeWriterView: View {
    
    @State var text: String = ""
    let finalText: String = "\nThat's why the MoodHunt comes in to track on you! 😀"
    
    var body: some View {
        
        VStack(spacing: 18.0) {
            Text(text)
            Button("see more...") {
                typeWriter()
            }
            .foregroundColor(.brown)
            VStack {
                
            }
        }
        
    }
    
    
    func typeWriter(at position: Int = 0) {
        if position == 0 {
            text = " "
        }
        if position < finalText.count {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.08) {
                text.append(finalText[position])
                typeWriter(at: position + 1)
            }
        }
    }
}


struct TypeWriterView_Previews: PreviewProvider {
    static var previews: some View {
        TypeWriterView()
    }
}

extension String {
    subscript(offset: Int) -> Character {
        self[index(startIndex, offsetBy: offset)]
    }
}
