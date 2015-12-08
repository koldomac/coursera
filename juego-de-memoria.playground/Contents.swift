//: Coursera. Tarea: Juego de memoria


import UIKit

for index in 0...100 {
    if index >= 30 && index <= 40 {
        print(" \(index) Viva Swift!!!")
    } else if (index%5 == 0) {
        print(" \(index) Bingo!!!")
    } else if (index%2 == 0) {
        print(" \(index) par!!!")
    } else if (index%2 != 0) {
        print(" \(index) impar!!!")
    }
}
