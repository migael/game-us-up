//
//  ViewController.swift
//  Game List
//
//  Created by Akin Bektas on 08-10-15.
//  Copyright © 2015 Akin & Michael. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPageViewControllerDataSource {
    
    var pageViewController: UIPageViewController!
    var pageTitles: NSArray!
    var pageImages: NSArray!
    var people:[person]?
    var groups:[group]?
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.pageTitles = NSArray(objects: "Page 1", "Page 2", "Page 3")
        self.pageImages = NSArray(objects: "gamelist", "gamelist", "page3")
        
        self.pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("PageViewController") as! UIPageViewController
        
        self.pageViewController.dataSource = self
        
        var startVC = self.viewControllerAtIndex(0) as! ContentViewController
        var viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as! [UIViewController], direction: .Forward, animated: true, completion: nil)
        
        self.pageViewController.view.frame = CGRectMake(0, 0, self.view.frame.width, self.view.frame.size.height)
        
        self.addChildViewController(self.pageViewController)
        self.view.addSubview(self.pageViewController.view)
        self.pageViewController.didMoveToParentViewController(self)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func restartAction(sender: AnyObject) {
        var startVC = self.viewControllerAtIndex(0) as ContentViewController
        var viewControllers = NSArray(object: startVC)
        
        self.pageViewController.setViewControllers(viewControllers as! [UIViewController], direction: .Forward, animated: true, completion: nil)
    }
    
    func viewControllerAtIndex(index: Int) -> ContentViewController{
        if ((self.pageTitles.count ==  0) || (index >= self.pageTitles.count)){
            return ContentViewController()
        }
        
        var vc: ContentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("ContentViewController") as! ContentViewController
        
        vc.imageFile = self.pageImages[index] as! String
        vc.titleText = self.pageTitles[index] as! String
        vc.pageIndex = index
        
        return vc
        
    }
    
    // MARK: - Page View Controller Data Source
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController? {
        var vc = viewController as! ContentViewController
        var index = vc.pageIndex as! Int
        
        if (index == 0 || index == NSNotFound)
        {
            return nil
        }
        
        index--
        return self.viewControllerAtIndex(index)
    }
    
    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController? {
        
        var vc = viewController as! ContentViewController
        var index = vc.pageIndex as! Int
        
        if (index == NSNotFound){
            return nil
        }
        
        index++
        
        if (index == self.pageTitles.count){
            return nil
        }
        
        return self.viewControllerAtIndex(index)
    }
    
    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int {
        return self.pageTitles.count
    }
    
    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int {
        return 0
    }
    
    //Changing Status Bar
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        
        //LightContent
        return UIStatusBarStyle.LightContent
        
        //Default
        //return UIStatusBarStyle.Default
        
    }

}

