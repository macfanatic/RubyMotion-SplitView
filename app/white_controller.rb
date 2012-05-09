class WhiteController < UITableViewController
  
  def viewDidLoad
    view.backgroundColor = UIColor.whiteColor
    navigationItem.title = 'Left Pane'
  end
  
  def shouldAutorotateToInterfaceOrientation(o)
    true
  end
  
end