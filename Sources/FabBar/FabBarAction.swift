import Foundation

/// Configuration for the floating action button (FAB) in FabBar.
///
/// The FAB appears as a circular glass button next to the tab items,
/// morphing with the iOS 26 glass effect.
@available(iOS 26.0, *)
public struct FabBarAction {
    /// The SF Symbol name for the button icon.
    public let systemImage: String

    /// The accessibility label for VoiceOver users.
    public let accessibilityLabel: String

    /// The action to perform when the button is tapped.
    public let action: () -> Void

    /// The action to perform when the button is pressed and held, if any.
    ///
    /// It fires once, as the hold is recognised (the finger is still down), and the tap
    /// action does not follow when the finger lifts.
    public let longPressAction: (() -> Void)?

    /// Creates a floating action button configuration.
    ///
    /// - Parameters:
    ///   - systemImage: The SF Symbol name for the button icon.
    ///   - accessibilityLabel: The accessibility label for VoiceOver users.
    ///   - action: The action to perform when the button is tapped.
    ///   - longPressAction: The action to perform when the button is pressed and held.
    ///     Defaults to `nil`: a hold then does nothing special.
    public init(
        systemImage: String,
        accessibilityLabel: String,
        action: @escaping () -> Void,
        longPressAction: (() -> Void)? = nil
    ) {
        self.systemImage = systemImage
        self.accessibilityLabel = accessibilityLabel
        self.action = action
        self.longPressAction = longPressAction
    }
}
