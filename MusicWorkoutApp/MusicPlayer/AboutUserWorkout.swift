//
//  AboutUserWorkout.swift
//  MusicPlayer
//
//  Created by  on 4/28/21.
//  Copyright © 2021 MoApps. All rights reserved.
//

import UIKit

class AboutUserWorkout: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource
{
    
    
    @IBOutlet weak var WeightLabel: UILabel!
    
    @IBOutlet weak var HeightLabel: UILabel!
    
    @IBOutlet weak var WeightPickerView: UIPickerView!
    
    @IBOutlet weak var HeightPickerView: UIPickerView!
    
    var WeightPickerViewData: [String] = [String]()
    
    var HeightPickerViewData: [String] = [String]()
    
    var gender: String = "male"
    
    override func viewDidLoad()
    {
        
        super.viewDidLoad()
        
        self.WeightPickerView.delegate = self
        self.WeightPickerView.dataSource = self
        
        self.HeightPickerView.delegate = self
        self.HeightPickerView.dataSource = self
        
        HeightPickerViewData = ["4' 0", "4' 1", "4' 2", "4' 3", "4' 4", "4' 5", "4' 6", "4' 7", "4' 8", "4' 9", "4' 10", "4' 11", "5'", "5' 1", "5' 2", "5' 3", "5' 4", "5' 5", "5' 6", "5' 7", "5' 8", "5' 9", "5' 10", "5' 11", "6'", "6' 1", "6' 2", "6' 3", "6' 4", "6' 5", "6' 6", "6' 7", "6' 8", "6' 9", "6' 10", "6' 11", "7'", "7' 1", "7' 2", "7' 3", "7' 4", "7' 5", "7' 6", "7' 7", "7' 8", "7' 9", "7' 10", "7' 11", "8'"]
        
        WeightPickerViewData = ["50 lbs", "51 lbs", "52 lbs", "53 lbs", "54 lbs", "55 lbs", "56 lbs", "57 lbs", "58 lbs", "59 lbs", "60 lbs", "61 lbs", "62 lbs", "63 lbs", "64 lbs", "65 lbs", "66 lbs", "67 lbs", "68 lbs", "69 lbs", "70 lbs", "71 lbs", "72 lbs", "73 lbs", "74 lbs", "75 lbs", "76 lbs", "77 lbs", "78 lbs", "79 lbs", "80 lbs", "81 lbs", "82 lbs", "83 lbs", "84 lbs", "85 lbs", "86 lbs", "87 lbs", "88 lbs", "89 lbs", "90 lbs", "91 lbs", "92 lbs", "93 lbs", "94 lbs", "95 lbs", "96 lbs", "97 lbs", "98 lbs", "99 lbs", "100 lbs", "101 lbs", "102 lbs", "103 lbs", "104 lbs", "105 lbs", "106 lbs", "107 lbs", "108 lbs", "109 lbs", "110 lbs", "111 lbs", "112 lbs", "113 lbs", "114 lbs", "115 lbs", "116 lbs", "117 lbs", "118 lbs", "119 lbs", "120 lbs", "121 lbs", "122 lbs", "123 lbs", "124 lbs", "125 lbs", "126 lbs", "127 lbs", "128 lbs", "129 lbs", "130 lbs", "131 lbs", "132 lbs", "133 lbs", "134 lbs", "135 lbs", "136 lbs", "137 lbs", "138 lbs", "139 lbs", "140 lbs", "141 lbs", "142 lbs", "143 lbs", "144 lbs", "145 lbs", "146 lbs", "147 lbs", "148 lbs", "149 lbs", "150 lbs", "151 lbs", "152 lbs", "153 lbs", "154 lbs", "155 lbs", "76 lbs", "157 lbs", "158 lbs", "159 lbs", "160 lbs", "161 lbs", "162 lbs", "163 lbs", "164 lbs", "165 lbs", "166 lbs", "167 lbs", "168 lbs", "169 lbs", "170 lbs", "171 lbs", "172 lbs", "173 lbs", "174 lbs", "175 lbs", "176 lbs", "177 lbs", "178 lbs", "179 lbs", "180 lbs", "181 lbs", "182 lbs", "183 lbs", "184 lbs", "185 lbs", "186 lbs", "187 lbs", "188 lbs", "189 lbs", "190 lbs", "191 lbs", "192 lbs", "193 lbs", "194 lbs", "195 lbs", "196 lbs", "197 lbs", "198 lbs", "199 lbs", "200 lbs", "201 lbs", "202 lbs", "203 lbs", "204 lbs", "205 lbs", "206 lbs", "207 lbs", "208 lbs", "209 lbs", "210 lbs", "211 lbs", "212 lbs", "213 lbs", "214 lbs", "215 lbs", "216 lbs", "217 lbs", "218 lbs", "219 lbs", "220 lbs", "221 lbs", "222 lbs", "223 lbs", "224 lbs", "225 lbs", "226 lbs", "227 lbs", "228 lbs", "229 lbs", "230 lbs", "231 lbs", "232 lbs", "233 lbs", "234 lbs", "235 lbs", "236 lbs", "237 lbs", "238 lbs", "239 lbs", "240 lbs", "241 lbs", "242 lbs", "243 lbs", "244 lbs", "245 lbs", "246 lbs", "247 lbs", "248 lbs", "249 lbs", "250 lbs", "over 250 lbs"]
        
    }
    @IBAction func genderSwitch(_ sender: UISwitch)
    {
        if sender.isOn
        {
            gender = "male"
            
        }
        else
        {
            gender = "female"
        }
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int
    {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int
    {
        if pickerView == HeightPickerView
        {
             return HeightPickerViewData.count
        }
        else
        {
            return WeightPickerViewData.count
        }
       
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?
    {
        if pickerView == WeightPickerView
        {
            return WeightPickerViewData[row]
        }
        else
        {
            return HeightPickerViewData[row]
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "nextSegue"
        {
            let destinationVC = segue.destination as! Workouts
            
            
            destinationVC.gender = gender
        }
    }
    
}
