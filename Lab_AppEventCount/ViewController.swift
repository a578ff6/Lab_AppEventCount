//
//  ViewController.swift
//  Lab_AppEventCount
//
//  Created by 曹家瑋 on 2023/10/5.
//

import UIKit

class ViewController: UIViewController {

    // 用於觀察的Label
    @IBOutlet weak var launchLabel: UILabel!
    @IBOutlet weak var configureLabel: UILabel!
    @IBOutlet weak var willConnectLabel: UILabel!
    @IBOutlet weak var didBecomeActiveLabel: UILabel!
    @IBOutlet weak var willResignActiveLabel: UILabel!
    @IBOutlet weak var willEnterForegroundLabel: UILabel!
    @IBOutlet weak var didEnterBackgroundLabel: UILabel!
    
    // 計數特定事件被觸發的次數
    var willConnectCount = 0
    var didBecomeActiveCount = 0
    var willResignActiveCount = 0
    var willEnterForegroundCount = 0
    var didEnterBackgroundCount = 0
    
    // 創建一個引用到AppDelegate的實例，以便能訪問那裡的變數
    var appDelegate = (UIApplication.shared.delegate as! AppDelegate)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 當視圖載入時更新UI以顯示當前的計數
        updateView()
    }

    // 此函數將更新視圖上的Label，顯示每個事件的觸發次數
    func updateView() {
        // 使用AppDelegate中的launchCount來更新launchLabel的文字
        launchLabel.text = "App已經啟動 \(appDelegate.launchCount) 次"
        // 使用AppDelegate中的configurationForConnectingCount來更新configureLabel的文字
        configureLabel.text = "App已經創建連接配置 \(appDelegate.configurationForConnectingCount) 次"

        // 使用本地變數來更新其它Label的文字
        willConnectLabel.text = "場景將要連接 \(willConnectCount) 次"
        didBecomeActiveLabel.text = "場景已變成活動狀態 \(didBecomeActiveCount) 次"
        willResignActiveLabel.text = "場景將要放棄活動狀態 \(willResignActiveCount) 次"
        willEnterForegroundLabel.text = "場景將要進入Foreground \(willEnterForegroundCount) 次"
        didEnterBackgroundLabel.text = "場景已進入Background \(didEnterBackgroundCount) 次"
    }
    
}

