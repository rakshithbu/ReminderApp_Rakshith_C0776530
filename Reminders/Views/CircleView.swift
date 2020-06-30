
import Foundation

import UIKit

@IBDesignable class CircleView: UIView {
    
    var color: UIColor!
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        commonInit()
    }
    
    func commonInit() {
        self.color = UIColor.black
    }
    
    func setColor(color: UIColor){
        self.color = color
    }
    
    override func draw(_ rect: CGRect) {
        self.color.setFill()
        let outerPath = UIBezierPath(ovalIn: rect)
        outerPath.fill()
    }
}
