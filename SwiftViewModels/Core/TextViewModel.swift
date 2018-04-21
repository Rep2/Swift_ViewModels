import UIKit

public struct TextViewModel {
    public var text: String?
    public let textColor: UIColor
    public let font: UIFont
    public let viewViewModel: ViewViewModel

    public init(text: String?, textColor: UIColor = .black, font: UIFont = UIFont.systemFont(ofSize: 15), viewViewModel: ViewViewModel) {
        self.text = text
        self.textColor = textColor
        self.font = font
        self.viewViewModel = viewViewModel
    }

    public func apply(toLabel label: UILabel) {
        if label.text != text {
            label.text = text
        }

        if label.textColor != textColor {
            label.textColor = textColor
        }

        if label.font != font {
            label.font = font
        }

        viewViewModel.apply(toView: label)
    }
}