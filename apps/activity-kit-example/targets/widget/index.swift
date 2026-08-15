import WidgetKit
import SwiftUI

@main
struct exportWidgets: WidgetBundle {
      @WidgetBundleBuilder
      var body: some Widget {
          widgets()
      }

      private func widgets() -> some Widget {
          return WidgetBundleBuilder.buildBlock( widget(),
                                                 // widgetControl(),
                                                 WidgetLiveActivity())
      }
}
