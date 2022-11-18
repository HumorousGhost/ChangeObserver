//
//  View+Change.swift
//  
//
//  Created by qihoo on 2022/11/17.
//

import SwiftUI

@available(iOS 13.0, *)
public extension View {
    func onDataChange<Value: Equatable>(of value: Value, perform: @escaping (_ newValue: Value) -> Void) -> some View {
        if #available(iOS 14.0, *) {
            return AnyView(self.onChange(of: value, perform: perform))
        } else {
            return ChangeObserver(value: value, action: perform) {
                self
            }
        }
    }
}
