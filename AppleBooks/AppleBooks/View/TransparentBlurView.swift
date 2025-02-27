//
//  TransparentBlurView.swift
//  AppleBooks
//
//  Created by Jesus Antonio Gil on 27/2/25.
//

import SwiftUI


struct TransparentBlurView: UIViewRepresentable {
    func makeUIView(context: Context) -> some CustomBlurView {
        return CustomBlurView(effect: nil)
    }
    
    func updateUIView(_ uiView: CustomBlurView, context: Context) {
        
    }
}


class CustomBlurView: UIVisualEffectView {
    override init(effect: UIVisualEffect?) {
        super.init(effect: effect)
        
        setup()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setup() {
        removeAllFilters()
        
        registerForTraitChanges([UITraitUserInterfaceStyle.self]) { (self: Self, _) in
            DispatchQueue.main.async {
                self.removeAllFilters()
            }
        }
    }
    
    func removeAllFilters() {
        if let filterLayer = layer.sublayers?.first {
            filterLayer.filters = []
        }
    }
}
