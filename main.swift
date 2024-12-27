// main.swift
import Cocoa

@main
class AppDelegate: NSObject, NSApplicationDelegate {
    let window = NSWindow()
    let button = NSButton()
    
    func applicationDidFinishLaunching(_ notification: Notification) {
        // Configure window
        window.setFrame(NSRect(x: 100, y: 100, width: 400, height: 300), display: true)
        window.styleMask = [.titled, .closable, .miniaturizable]
        window.title = "Assembly Demo"
        
        // Configure button
        button.frame = NSRect(x: 150, y: 130, width: 100, height: 40)
        button.title = "Click Me"
        button.bezelStyle = .rounded
        button.target = self
        button.action = #selector(buttonClicked)
        
        window.contentView?.addSubview(button)
        window.makeKeyAndOrderFront(nil)
    }
    
    @objc func buttonClicked() {
        let message = String(cString: showGreeting())
        let alert = NSAlert()
        alert.messageText = "Greeting"
        alert.informativeText = message
        alert.runModal()
    }
}