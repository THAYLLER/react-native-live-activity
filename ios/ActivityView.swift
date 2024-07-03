import SwiftUI
import ActivityKit

@available(iOS 16.1, *)
struct ActivityView: View {
    let context: ActivityViewContext<MyActivityAttributes>

    var body: some View {
        VStack {
            Text("Live Activity")
            Text("Name: \(context.attributes.name)")
            Text("State: \(context.state.state)")
        }
        .activityBackgroundTint(Color.blue)
        .activitySystemActionForegroundColor(Color.white)
    }
}

@available(iOS 16.1, *)
struct ActivityView_Previews: PreviewProvider {
    static var previews: some View {
        MyActivityView(context: ActivityViewContext.preview)
    }
}
