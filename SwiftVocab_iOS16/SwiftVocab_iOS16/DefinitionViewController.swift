//
//  DefinitionViewController.swift
//  SwiftVocab_iOS16
//
//  Created by Stephanie Ballard on 3/16/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class DefinitionViewController: UIViewController {
    
    var vocabWord: VocabularyWord?
    
    @IBOutlet weak var wordLabel: UILabel!
    @IBOutlet weak var definitionTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateViews()

        // Do any additional setup after loading the view.
    }
    
    func updateViews() {
        if let unwrappedVocabWord = vocabWord {
            wordLabel.text = unwrappedVocabWord.word
            definitionTextView.text = unwrappedVocabWord.definition
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
