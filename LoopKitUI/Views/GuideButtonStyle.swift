//
//  GuideButtonStyle.swift
//  LoopKitUI
//
//  Created by Pete Schwamb on 2020-03-04.
//  Copyright © 2020 LoopKit Authors. All rights reserved.
//

import SwiftUI

public struct GuideButtonStyle: ViewModifier {
    private let fontColor: Color
    private let backgroundColor: Color
    private let edgeColor: Color
    private let cornerRadius: CGFloat = 8
    
    public enum ButtonType {
        case primary
        case secondary
        case destructive
    }
    
    init(_ style: ButtonType = .primary) {
        switch style {
        case .primary:
            fontColor = .white
            backgroundColor = .accentColor
            edgeColor = .clear
        case .destructive:
            fontColor = .white
            backgroundColor = .destructive
            edgeColor = .clear
        case .secondary:
            fontColor = .accentColor
            backgroundColor = .clear
            edgeColor = .accentColor
        }
    }
    
    public func body(content: Content) -> some View {
        content
            .padding(.all)
            .foregroundColor(fontColor)
            .font(.headline)
            .frame(maxWidth: .infinity)
            .background(backgroundColor)
            .cornerRadius(cornerRadius)
            .overlay(RoundedRectangle(cornerRadius: cornerRadius)
                .stroke(edgeColor))
    }
}

public extension View {
    func guideButtonStyle(_ style: GuideButtonStyle.ButtonType = .primary) -> some View {
        ModifiedContent(content: self, modifier: GuideButtonStyle(style))
    }
}