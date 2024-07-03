import Foundation
import ActivityKit
import React

@objc(LiveActivity)
class LiveActivity: NSObject {

    @objc
    func startActivity(_ name: NSString, resolver: @escaping RCTPromiseResolveBlock, rejecter: @escaping RCTPromiseRejectBlock) {
        if #available(iOS 16.1, *) {
            guard ActivityAuthorizationInfo().areActivitiesEnabled else {
                rejecter("Activities Disabled", "Live Activities are not enabled on this device", nil)
                return
            }

            let activityAttributes = MyActivityAttributes(name: name as String)
            let initialContentState = MyActivityAttributes.ContentState(state: "initial")
            
            do {
                let activity = try Activity<MyActivityAttributes>.request(
                    attributes: activityAttributes,
                    contentState: initialContentState,
                    pushType: nil // nil é permitido aqui como um Optional
                )
                resolver(activity.id)
            } catch {
                rejecter("Activity Error", error.localizedDescription, error)
            }
        } else {
            rejecter("Unsupported Version", "Live Activities require iOS 16.1 or later", nil)
        }
    }

    @objc
    static func requiresMainQueueSetup() -> Bool {
        return true
    }
}

@available(iOS 16.1, *)
struct MyActivityAttributes: ActivityAttributes {
    public struct ContentState: Codable, Hashable {
        var state: String
    }

    var name: String
}
