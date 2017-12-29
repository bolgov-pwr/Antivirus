import Cocoa

class WindowController: NSWindowController {

  @IBAction func openDocument(_ sender: AnyObject?) {

    let openPanel = NSOpenPanel()
    openPanel.showsHiddenFiles = false
    openPanel.canChooseFiles = false
    openPanel.canChooseDirectories = true

    openPanel.beginSheetModal(for: window!) { response in
      guard response == NSFileHandlingPanelOKButton else {
        return
      }
      self.contentViewController?.representedObject = openPanel.url
    }
  }
  
}
