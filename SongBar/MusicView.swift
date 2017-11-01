////
////  MusicView.swift
////  SongBar
////
////  Created by Justin Oakes on 2/25/17.
////  Copyright © 2017 corpe. All rights reserved.
////
//
//import Cocoa
//
class MusicView: NSView {
//
    @IBOutlet var view: MusicView!
    @IBOutlet weak var playButton: NSButton!
    @IBOutlet weak var ffbutton: NSButton!
    @IBOutlet weak var rewindbutton: NSButton!
//    var settingsWindow: SettingsWindow?
//    
//    override func draw(_ dirtyRect: NSRect) {
//        super.draw(dirtyRect)
//
//        // Drawing code here.
//    }
//    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        self.wantsLayer = true
        self.layer?.cornerRadius = 10.0
        self.layer?.backgroundColor = kColors.kBackgroundColor
    }
    
    override init(frame frameRect: NSRect) {
        super.init(frame: frameRect)
        
        Bundle.main.loadNibNamed(NSNib.Name(rawValue: "MusicView"), owner: self, topLevelObjects: nil)
        self.view.frame = NSRect(x: 0, y: 0, width: frame.width, height: frame.height)
        
        self.wantsLayer = true
        self.layer?.cornerRadius = 10.0
        self.layer?.backgroundColor = kColors.kBackgroundColor
        
        self.addSubview(view)
    }
//
//    
//    @IBAction func playClicked(_ sender: Any) {
//        let mediaController:MediaController = (NSApplication.shared.delegate as! AppDelegate).mediaController ?? MediaController()
//        let playbackState: kPlaybackStates = mediaController.playPauseLastService()
//        if playbackState == .paused {
//            self.playButton.image = #imageLiteral(resourceName: "play")
//            self.playButton.alternateImage = #imageLiteral(resourceName: "pause")
//        } else {
//            self.playButton.image = #imageLiteral(resourceName: "pause")
//            self.playButton.alternateImage = #imageLiteral(resourceName: "play")
//        }
//    }
//
//    
//    @IBAction func ffClicked(_ sender: Any) {
//        let mediaController:MediaController = (NSApplication.shared.delegate as! AppDelegate).mediaController ?? MediaController()
//        mediaController.fastForwardLastService()
//    }
//    
//    @IBAction func rewindClicked(_ sender: Any) {
//        let mediaController:MediaController = (NSApplication.shared.delegate as! AppDelegate).mediaController ?? MediaController()
//        mediaController.rewindLastService()
//    }
//    
//    @IBAction func downloadFromITS(_ sender: Any) {
//        let appDeleagate: AppDelegate = (NSApplication.shared.delegate as! AppDelegate)
//        if appDeleagate.sysBar.title != kMiscStrings.songbar && appDeleagate.sysBar.title != kMiscStrings.beats && appDeleagate.sysBar.title != nil {
//            StoreSearch.search(appDeleagate.sysBar.title!)
//        }
//    }
//    
//    @IBAction func displaySettings(_ sender: Any) {
//        self.settingsWindow = self.settingsWindow ?? SettingsWindow(windowNibName: NSNib.Name(rawValue: kNIBNames.settingsWindow))
//        self.settingsWindow?.showWindow(self)
//        self.settingsWindow?.window?.orderFront(self)
//    }
//    
//    @IBAction func closeApplication(_ sender: Any) {
//        NSApplication.shared.terminate(self)
//    }
}

