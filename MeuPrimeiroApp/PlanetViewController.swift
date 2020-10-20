//
//  PlanetViewController.swift
//  MeuPrimeiroApp
//
//  Created by Cassia Franco on 17/10/20.
//  Copyright © 2020 Cassia Franco. All rights reserved.
//

import UIKit

class PlanetViewController: UIViewController {

  
    @IBOutlet weak var Planet: UIImageView!
    
    @IBOutlet weak var explosao: UIImageView!
    
    var naoExplodiuainda : Bool = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        naoExplodiuainda = true

        // Do any additional setup after loading the view.
    }
    
    @IBAction func explodir(_ sender: Any) {
        
            if naoExplodiuainda{
                naoExplodiuainda = false
            UIView.animate(withDuration: 0.2) { // duracao de tempo do planeta na tela
                self.Planet.alpha = 0
            }
            explosao.animationImages = [ // Animacao da imagem explodindo
            UIImage(named:"explosao_15")!, //coloque a imagem em acao simbolo ! de confirmacao
            UIImage(named: "explosao_14")!, // o nome em string virgula pulando
            UIImage(named: "explosao_13")!,
            UIImage(named: "explosao_12")!,
            UIImage(named: "explosao_11")!,
            UIImage(named: "explosao_10")!,
            UIImage(named: "explosao_9")!,
            UIImage(named: "explosao_8")!,
            UIImage(named: "explosao_7")!,
            UIImage(named: "explosao_6")!,
            UIImage(named: "explosao_5")!,
            UIImage(named: "explosao_4")!,
            UIImage(named: "explosao_3")!,
            UIImage(named: "explosao_2")!,
            UIImage(named: "explosao_1")!,
            UIImage(named: "explosao_0")!
            
            ]
            explosao.animationRepeatCount = 1  // tempo de repetir a imagem
            explosao.startAnimating() // start
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
