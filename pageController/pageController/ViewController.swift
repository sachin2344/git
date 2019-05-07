//
//  ViewController.swift
//  pageController
//
//  Created by sachin sharma on 29/04/19.
//  Copyright © 2019 sachin sharma. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var pageControl: UIPageControl!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        scrollView.delegate = self
    }


}
extension ViewController: UIScrollViewDelegate{
    func scrollViewDidScroll(_ scrollView: UIScrollView) {
        
        //Calculate the page index
        let pageIndex = Int(scrollView.contentOffset.x/375)
        
        //set the pagecontrol
        pageControl.currentPage = pageIndex
    }
}
