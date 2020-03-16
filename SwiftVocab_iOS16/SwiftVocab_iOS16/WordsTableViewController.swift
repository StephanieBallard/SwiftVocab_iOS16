//
//  WordsTableViewController.swift
//  SwiftVocab_iOS16
//
//  Created by Stephanie Ballard on 3/16/20.
//  Copyright © 2020 Stephanie Ballard. All rights reserved.
//

import UIKit

class WordsTableViewController: UITableViewController {
    
    var vocabWords: [VocabularyWord] = [VocabularyWord(word: "Variable", definition: "Any named piece of data in your code that may change when your program runs."),
                                        VocabularyWord(word: "Array", definition: "A sequential collection of values of any type, such as an array of names in a band."),
                                        VocabularyWord(word: "Boolean", definition: "A data type that stores either true or false")]

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return vocabWords.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "WordCell", for: indexPath)
        let vocabword = vocabWords[indexPath.row]
        cell.textLabel?.text = vocabword.word
        return cell
    }

    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "ShowDefinitionSegue" {
            if let definitionVC = segue.destination as? DefinitionViewController,
                let indexPath = tableView.indexPathForSelectedRow {
                let word = vocabWords[indexPath.row]
                definitionVC.vocabWord = word
            }
        }
    }
}
