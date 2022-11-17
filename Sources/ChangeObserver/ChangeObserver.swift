//
//  ChangeObserver.swift
//
//
//  Created by qihoo on 2022/11/17.
//

import SwiftUI

@available(iOS 13.0, macOS 10.15, tvOS 13.0, watchOS 6.0, *)
public struct ChangeObserver<Content, Value>: View where Content: View, Value: Equatable {
    let content: Content
    let value: Value
    let action: (Value) -> Void
    
    @State private var oldValue: Value
    
    init(value: Value, action: @escaping (Value) -> Void, content: () -> Content) {
        self.value = value
        self.action = action
        self.content = content()
        self._oldValue = State(initialValue: value)
    }
    
    public var body: some View {
        if oldValue != value {
            DispatchQueue.main.async {
                oldValue = value
                self.action(value)
            }
        }
        return content
    }
}
