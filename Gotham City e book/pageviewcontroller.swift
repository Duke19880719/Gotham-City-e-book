//
//  pageviewcontroller.swift
//  Gotham City e book
//
//  Created by 江培瑋 on 2017/12/4.
//  Copyright © 2017年 江培瑋. All rights reserved.
//

import UIKit

class pageviewcontroller: UIPageViewController ,UIPageViewControllerDataSource{
    
    var list:[UIViewController] = []
    
    //調整子視窗大小,調整成全畫面
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        for v in view.subviews{
            if v is UIScrollView{
                v.frame = view.bounds
                break
            }
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let s01 = storyboard?.instantiateViewController(withIdentifier: "s1")
        let s02 = storyboard?.instantiateViewController(withIdentifier: "s2")
        let s03 = storyboard?.instantiateViewController(withIdentifier: "s3")
        let s04 = storyboard?.instantiateViewController(withIdentifier: "s4")
        list.append(s01!)
        list.append(s02!)
        list.append(s03!)
        list.append(s04!)
        
        setViewControllers([list[0]], direction: .forward, animated: true, completion: nil)
        
            dataSource = self
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //往前移實作
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerBefore viewController: UIViewController) -> UIViewController? {
        if let index = list.index(of: viewController),index > 0
        {
            return list[index-1]
        }
        return nil
    }
    //往後移實作
    func pageViewController(_ pageViewController: UIPageViewController, viewControllerAfter viewController: UIViewController) -> UIViewController? {
        if let index = list.index(of: viewController),index < (list.count)-1
        {
            return list[index+1]
        }
        return nil
    }
    //告訴pageview畫面個數
    func presentationCount(for pageViewController: UIPageViewController) -> Int {
        return list.count
    }
    //告訴pageview起始畫面位置
    func presentationIndex(for pageViewController: UIPageViewController) -> Int {
        return 0
    }

}
