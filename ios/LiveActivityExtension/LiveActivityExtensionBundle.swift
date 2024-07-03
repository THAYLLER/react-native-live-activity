//
//  LiveActivityExtensionBundle.swift
//  LiveActivityExtension
//
//  Created by thayller on 03/07/24.
//

import WidgetKit
import SwiftUI

@main
struct LiveActivityExtensionBundle: WidgetBundle {
    var body: some Widget {
        LiveActivityExtension()
        LiveActivityExtensionLiveActivity()
    }
}
