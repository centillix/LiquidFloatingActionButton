//
//  LiquidFloatingCellWithLabel.swift
//  Pods
//
//  Created by Louis Ucheya on 6/10/17.
//
//

import UIKit

open class LiquidFloatingCellWithLabel: LiquidFloatingCell {
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    open var name: String = "sample"
    open var fontName: String = "SFUIDisplay-Regular"
    open var fontSize: CGFloat = 12.0
    open var labelTextColor : UIColor = UIColor.white
    
    public init(icon: UIImage, name: String) {
        self.name = name
        super.init(icon: icon)
    }
    
    required public init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    open override func setupView(_ view: UIView) {
        super.setupView(view)
        let label = UILabel()
        label.text = name
        label.textColor = labelTextColor
        label.font = UIFont(name: fontName, size: fontSize)
        addSubview(label)
        
        if #available(iOS 9.0, *) {
            NSLayoutConstraint.activate([
                label.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                label.trailingAnchor.constraint(equalTo: view.leadingAnchor, constant: -20),
                label.widthAnchor.constraint(equalToConstant: 100),
                label.heightAnchor.constraint(equalTo: view.heightAnchor)])
        } else {
            // Fallback on earlier versions
        }
    }
}
