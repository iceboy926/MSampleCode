//
//  ViewController.swift
//  PictureStretch
//
//  Created by wjl on 16/3/5.
//  Copyright © 2016年 Martin. All rights reserved.
//

import UIKit
import SnapKit
class ViewController: UIViewController {

    var portraitView: UIButton!
    var messageView: UILabel!
    var backgroundView: UIImageView!
    var TestImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = UIColor.whiteColor()
        
        portraitView = UIButton()
        portraitView.backgroundColor = UIColor.redColor()
        view.addSubview(portraitView)
        portraitView.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(100)
            make.left.equalTo(20)
            make.width.height.equalTo(40)
        }
        
        messageView = UILabel()
        messageView.text = "做人要大度，海纳百川，做事要圆滑，左右逢源，这让我想到了编程也是如此，代码要扩展，界面也要考虑自适应"
        messageView.sizeToFit()
        messageView.numberOfLines = 0
        view.addSubview(messageView)
        messageView.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(portraitView.snp_right).offset(30)
            make.top.equalTo(portraitView)
            make.width.lessThanOrEqualTo(view).multipliedBy(0.6)
        }
        
        backgroundView = UIImageView()
        backgroundView.image = UIImage(named: "left_message_back")
        view.insertSubview(backgroundView, belowSubview: messageView)
        backgroundView.snp_makeConstraints { (make) -> Void in
            make.left.equalTo(messageView.snp_left).offset(-30)
            make.top.equalTo(messageView.snp_top).offset(-10)
            make.bottom.equalTo(messageView.snp_bottom).offset(10)
            make.right.equalTo(messageView.snp_right).offset(10)

        }
        
        TestImage = UIImageView()
        TestImage.image = UIImage(named: "test")
        view.addSubview(TestImage)
        TestImage.snp_makeConstraints { (make) -> Void in
            make.top.equalTo(messageView.snp_bottom).offset(20)
            make.left.right.equalTo(view)
            make.bottom.equalTo(view)
        }
        //let im = UIEdgeInsetsMake(<#T##top: CGFloat##CGFloat#>, <#T##left: CGFloat##CGFloat#>, <#T##bottom: CGFloat##CGFloat#>, <#T##right: CGFloat##CGFloat#>)
        
        //TestImage.image?.resizableImageWithCapInsets(UIEdgeInsets, resizingMode: <#T##UIImageResizingMode#>)

    }

}

