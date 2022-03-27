//
//  ViewController.swift
//  ModelViewController
//
//  Created by John Kim on 3/21/22.
//

import UIKit

class ProgrammerViewController: UIViewController {
    
    // MARK: - Properties
    
    // Reference to the Model
    public var programmer: Programmer? {
        didSet {
            updateViewFromProgrammer()
        }
    }
    
    // Reference to the View
    public var programmerView: ProgrammerView! {
        guard isViewLoaded else { return nil }
        return (view as! ProgrammerView)
    }

    // MARK: - View Lifecycles
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViewFromProgrammer()
    }
    
    // MARK: - Methods
    
    private func updateViewFromProgrammer() {
        guard let programmerView = programmerView, let programmer = programmer else { return }
        programmerView.codeEditorTextField.text = programmer.codeEditor
        programmerView.operatingSystemTextField.text = programmer.operatingSystem
        programmerView.programmingLanguageTextField.text = programmer.programmingLanguage
    }
    
    // MARK: - Actions
    @IBAction public func updateProgrammerFromView(_ sender: AnyObject) {
        guard let programmingLanguage = programmerView.programmingLanguageTextField.text,
              programmingLanguage.count > 0,
              let codeEditor = programmerView.codeEditorTextField.text,
              codeEditor.count > 0,
              let operatingSystem = programmerView.operatingSystemTextField.text,
              operatingSystem.count > 0 else {
                  // TODO: - Handle Error
                  return
              }
        programmer = Programmer(programmingLanguage: programmingLanguage, codeEditor: codeEditor, operatingSystem: operatingSystem)
    }
}


