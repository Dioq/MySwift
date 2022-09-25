//
//  ChangeIconViewController.swift
//  MySwift
//
//  Created by hello on 2019/6/21.
//  Copyright © 2019 Dio. All rights reserved.
//

import UIKit

class ChangeIconViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeAction(_ sender: UIButton) {
        let refreshAlert = UIAlertController(title: "切换App图标", message: "选择你喜欢的图标~", preferredStyle: UIAlertController.Style.alert)
        
        // icon1
        let image1 = UIImage.init(named: "AppIcon-default")!
        let defaultAlertAction = UIAlertAction(title: "默认图标", style: .default, handler: { (action: UIAlertAction!) in
            self.changeAppIconWithName(iconName: nil)
        })
        defaultAlertAction.setValue(image1.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), forKey: "image")
        refreshAlert.addAction(defaultAlertAction)
        // icon2
        let name2 = "iWiBi-orange-icon-light"
        let image2 = UIImage.init(named: name2)!
        let alertAction2 = UIAlertAction(title: "橙色图标-轻亮", style: .default, handler: { (action: UIAlertAction!) in
            self.changeAppIconWithName(iconName: name2)
        })
        alertAction2.setValue(image2.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), forKey: "image")
        refreshAlert.addAction(alertAction2)
        // icon3
        let name3 = "iWiBi-orange-icon"
        let image3 = UIImage.init(named: name3)!
        let alertAction3 = UIAlertAction(title: "橙色图标-墨深", style: .default, handler: { (action: UIAlertAction!) in
            self.changeAppIconWithName(iconName: name3)
        })
        alertAction3.setValue(image3.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), forKey: "image")
        refreshAlert.addAction(alertAction3)
        // icon4
        let name4 = "iWiBi-orange-two"
        let image4 = UIImage.init(named: name4)!
        let alertAction4 = UIAlertAction(title: "橙色图标-全彩", style: .default, handler: { (action: UIAlertAction!) in
            self.changeAppIconWithName(iconName: name4)
        })
        alertAction4.setValue(image4.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), forKey: "image")
        refreshAlert.addAction(alertAction4)
        // icon5
        let name5 = "iWiBi-orange-blank"
        let image5 = UIImage.init(named: name5)!
        let alertAction5 = UIAlertAction(title: "橙色图标-留白", style: .default, handler: { (action: UIAlertAction!) in
            self.changeAppIconWithName(iconName: name5)
        })
        alertAction5.setValue(image5.withRenderingMode(UIImage.RenderingMode.alwaysOriginal), forKey: "image")
        refreshAlert.addAction(alertAction5)
        
        let cancel = UIAlertAction(title:  "取消", style: .cancel, handler: nil)
        refreshAlert.addAction(cancel)
        self.present(refreshAlert, animated: true, completion: nil)
    }
    
    func changeAppIconWithName(iconName: String?) {
        if #available(iOS 10.3, *) {
            UIApplication.shared.setAlternateIconName(iconName) { (error) in
                if error != nil{
                    print("error:\(error!)")
                }
            }
        } else {
            let alert = UIAlertController(title: "提示",
                                          message: "更换图标需要 iOS10.3 以上系统才能使用~",
                                          preferredStyle: UIAlertController.Style.alert)
            let cancelAction = UIAlertAction.init(title: "知道啦", style: .cancel) { (action: UIAlertAction) in
                
            }
            alert.addAction(cancelAction)
            UIApplication.shared.keyWindow?.rootViewController!.present(alert, animated: true, completion: nil)
        }
    }
    
}
