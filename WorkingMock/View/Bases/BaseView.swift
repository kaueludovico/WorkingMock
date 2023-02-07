//
//  BaseView.swift
//  WorkingMock
//
//  Created by Kaue Ludovico on 06/02/23.
//

import UIKit

class BaseView: UIView {
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        addSubviews()
        setConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func addSubviews() {
        // Do Nothing
    }
    
    func setConstraints() {
        // Do Nothing
    }
}
