//
//  InterfaceController.swift
//  App_Watch01 WatchKit Extension
//
//  Created by cice on 29/3/17.
//  Copyright © 2017 cice. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    // MARK: - Vbles locales
    
    var miNombre = "Javier"
    let COLOR_NARANJA = UIColor.orange
    let COLOR_AZUL = UIColor.blue
    var valorSlider : Float = 0
    
    
    
    
    
    // MARK: - Outlets

    
    @IBOutlet var miBoton: WKInterfaceButton!
    @IBOutlet var miSwitch: WKInterfaceSwitch!
    @IBOutlet var miSlider: WKInterfaceSlider!
    @IBOutlet var miLabel: WKInterfaceLabel!
    
    
    // MARK: - Actions

    @IBAction func miButtonAction() {
        actionUno()
    }
    
    
    @IBAction func miSwitchAction(_ value: Bool) {
        if value == true {
            actionDos()
        }else {
            actionUno()
        }
    }
    
    @IBAction func miSliderAction(_ value: Float) {
        valorSlider = value
        actionTres()
        print(valorSlider)
    }
    
    
    
    // MARK: - UtILS
    func actionUno(){
        miBoton.setTitle("HOLA")
        miBoton.setBackgroundColor(COLOR_NARANJA)
        miLabel.setText("Saludos a tós")
        miLabel.setTextColor(COLOR_NARANJA)
        miSwitch.setColor(COLOR_NARANJA)
        miSwitch.setOn(false)
        miSlider.setColor(COLOR_NARANJA)
    }
    
    func actionDos(){
        miBoton.setTitle("Madrid")
        miBoton.setBackgroundColor(COLOR_AZUL)
        miLabel.setText("Hola Javi")
        miLabel.setTextColor(COLOR_AZUL)
        miSlider.setColor(COLOR_AZUL)
    }
    
    func actionTres(){
        miLabel.setText(String(valorSlider))
        if valorSlider == 1{
            miSlider.setColor(COLOR_AZUL)
            miLabel.setText(String(valorSlider))
        } else if valorSlider == 3{
            miSlider.setColor(UIColor.green)
            miLabel.setText(String(valorSlider))

        } else if valorSlider == 5{
            miSlider.setColor(COLOR_NARANJA)
            miLabel.setText(String(valorSlider))

        } else if valorSlider == 7{
            miSlider.setColor(UIColor.magenta)
            miLabel.setText(String(valorSlider))

        } else if valorSlider == 10 {
            miSlider.setColor(UIColor.red)
            miLabel.setText(String(valorSlider))

        }
        
    }
    
    
    
    override func awake(withContext context: Any?) {
        super.awake(withContext: context)
        
        // Configure interface objects here.
    }
    
    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }
    
    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

}
