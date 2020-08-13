//
//  ViewController.swift
//  Destini-iOS13
//
//  Created by ANDY on 13/08/2020.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var storyLabel: UILabel!
    @IBOutlet weak var choice1: UIButton!
    @IBOutlet weak var choice2: UIButton!
    
    var storyBrain = StoryBrain()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        updateUI()
    }

    @IBAction func choiceMade(_ sender: UIButton) {
        let choice = sender.currentTitle!
        storyBrain.nextStory(userChoice: choice)
        updateUI()
    }
    
    func updateUI() {
        storyLabel.text = storyBrain.getStoryTitle()
        choice1.setTitle(storyBrain.getChoice1(), for: .normal)
        choice2.setTitle(storyBrain.getChoice2(), for: .normal)
    }
    
}

