class AppDelegate
    
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    window.makeKeyAndVisible
    true
  end
  
  def window
    @window ||= begin
      w = UIWindow.alloc.initWithFrame UIScreen.mainScreen.bounds
      w.rootViewController = split_view_controller
      w
    end
  end
  
  def split_view_controller
    @split_view_controller ||= begin
      s = UISplitViewController.alloc.init
      s.viewControllers = [UINavigationController.alloc.initWithRootViewController(WhiteController.new), UINavigationController.alloc.initWithRootViewController(BlueController.new)]
      s.delegate = self
      s
    end
  end
  
  def splitViewController(sc, shouldHideController:c, inOrientation:o)
    NSLog "splitViewController: #{c}, #{o}"
    false
  end
  
end
