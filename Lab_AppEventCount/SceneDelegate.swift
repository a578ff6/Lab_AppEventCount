//
//  SceneDelegate.swift
//  Lab_AppEventCount
//
//  Created by 曹家瑋 on 2023/10/5.
//

import UIKit

class SceneDelegate: UIResponder, UIWindowSceneDelegate {

    var window: UIWindow?
    
    // 用於存儲對ViewController的參考
    var viewController: ViewController?

    func scene(_ scene: UIScene, willConnectTo session: UISceneSession, options connectionOptions: UIScene.ConnectionOptions) {
        // Use this method to optionally configure and attach the UIWindow `window` to the provided UIWindowScene `scene`.
        // If using a storyboard, the `window` property will automatically be initialized and attached to the scene.
        // This delegate does not imply the connecting scene or session are new (see `application:configurationForConnectingSceneSession` instead).
       
        // 從window屬性獲取根視圖控制器(rootViewController)並轉換(轉型)為ViewController
        viewController = window?.rootViewController as? ViewController
        viewController?.willConnectCount += 1
        
        guard let _ = (scene as? UIWindowScene) else { return }
    }

    // [此方法在場景斷開連接時被調用]
    func sceneDidDisconnect(_ scene: UIScene) {
        // Called as the scene is being released by the system.
        // This occurs shortly after the scene enters the background, or when its session is discarded.
        // Release any resources associated with this scene that can be re-created the next time the scene connects.
        // The scene may re-connect later, as its session was not necessarily discarded (see `application:didDiscardSceneSessions` instead).
    }

    // [當場景變成活動狀態時調用此方法]
    func sceneDidBecomeActive(_ scene: UIScene) {
        // Called when the scene has moved from an inactive state to an active state.
        // Use this method to restart any tasks that were paused (or not yet started) when the scene was inactive.
       
        // 在場景變得活動時，增加didBecomeActiveCount並更新視圖
        viewController?.didBecomeActiveCount += 1
        
        //僅在實際需要更新視圖的時候執行updateView()，確保我們不做不必要的工作。
        // 因為在sceneDidBecomeActive(_:)中更新視圖意味著我們僅在場景活動並且用戶可以看到畫面時才刷新UI，這避免了在背景運行時做不必要的UI更新。
        viewController?.updateView()
        
    }

    // [當場景從活動狀態變成非活動狀態時調用此方法]
    func sceneWillResignActive(_ scene: UIScene) {
        // Called when the scene will move from an active state to an inactive state.
        // This may occur due to temporary interruptions (ex. an incoming phone call).
    
        // 增加willResignActiveCount，記錄這個事件的發生
        viewController?.willResignActiveCount += 1
    }

    // [當場景從背景狀態轉到前台狀態時調用此方法]
    func sceneWillEnterForeground(_ scene: UIScene) {
        // Called as the scene transitions from the background to the foreground.
        // Use this method to undo the changes made on entering the background.
    
        // 增加willEnterForegroundCount，記錄這個事件的發生
        viewController?.willEnterForegroundCount += 1
        
    }

    // [當場景從前台狀態轉到背景狀態時調用此方法]
    func sceneDidEnterBackground(_ scene: UIScene) {
        // Called as the scene transitions from the foreground to the background.
        // Use this method to save data, release shared resources, and store enough scene-specific state information
        // to restore the scene back to its current state.
        
        viewController?.didEnterBackgroundCount += 1

    }


}

