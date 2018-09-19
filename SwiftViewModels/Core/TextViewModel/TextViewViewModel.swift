import UIKit

public struct TextViewViewModel: TextViewModel {
    public let textViewModel: TextViewModel
    public let viewViewModel: ViewViewModel?

    public init(textViewModel: TextViewModel, viewViewModel: ViewViewModel?) {
        self.textViewModel = textViewModel
        self.viewViewModel = viewViewModel
    }

    public func apply(to label: UILabel) {
        textViewModel.apply(to: label)
        viewViewModel?.apply(to: label)
    }

    public func apply(to textField: UITextField) {
        textViewModel.apply(to: textField)
        viewViewModel?.apply(to: textField)
    }

    public func apply(to button: UIButton) {
        textViewModel.apply(to: button)
        viewViewModel?.apply(to: button)
    }
}
