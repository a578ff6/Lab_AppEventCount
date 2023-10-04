//
//  AppDelegate.swift
//  Lab_AppEventCount
//
//  Created by 曹家瑋 on 2023/10/5.
//

import UIKit

@main
class AppDelegate: UIResponder, UIApplicationDelegate {

    // 儲存app啟動的次數
    var launchCount = 0
    // 儲存app建立場景配置連接的次數
    var configurationForConnectingCount = 0

    // 此方法在app啟動後被調用
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // Override point for customization after application launch.
        
        // 每當app完成啟動，增加啟動次數計數
        launchCount += 1
        
        return true
    }

    // MARK: UISceneSession Lifecycle

    // 此方法在一個新的場景連接正在建立時被調用
    func application(_ application: UIApplication, configurationForConnecting connectingSceneSession: UISceneSession, options: UIScene.ConnectionOptions) -> UISceneConfiguration {
        // Called when a new scene session is being created.
        // Use this method to select a configuration to create the new scene with.
        
        // 每當一個新場景配置正在連接時，增加連接次數計數
        configurationForConnectingCount += 1
        
        return UISceneConfiguration(name: "Default Configuration", sessionRole: connectingSceneSession.role)
    }

    func application(_ application: UIApplication, didDiscardSceneSessions sceneSessions: Set<UISceneSession>) {
        // Called when the user discards a scene session.
        // If any sessions were discarded while the application was not running, this will be called shortly after application:didFinishLaunchingWithOptions.
        // Use this method to release any resources that were specific to the discarded scenes, as they will not return.
    }


}

