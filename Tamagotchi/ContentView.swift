//
//  ContentView.swift
//  Tamagotchi
//
//  Created by Kit Ropner on 22/01/2021.
//

import SwiftUI



struct ContentView: View {
    @StateObject private var tamagotchi = Tamagotchi()
    
    let timer = Timer.publish(every: 5, on: .main, in: .common)
        .autoconnect()
    
    var body: some View {
        VStack(alignment: .center, spacing: 34.0){
            Text("Good Morning \(tamagotchi.name)\nYou are \(tamagotchi.age) years old with a height of \(tamagotchi.height) and a weight of \(tamagotchi.weight)\nYour hapiness level is \(tamagotchi.hapiness)/10, your bladder level is \(tamagotchi.bladder)/10, your hunger level is \(tamagotchi.hunger)/10 and your hygiene level is \(tamagotchi.hygiene)/10")
                .fontWeight(.ultraLight)
                .multilineTextAlignment(.center)
                .onReceive(timer, perform: { _ in
                    tamagotchi.aging()
                })
                .font(.headline)
                .foregroundColor(Color.black)
                .lineLimit(nil)
                .opacity(5.5)
                .padding()
            Button("Eat Snack", action: {
                tamagotchi.eatSnack()
            })
            .padding(.all)
            .accentColor(.purple)
            .border(Color.green, width: 16)
            .blendMode(.exclusion)
            .rotation3DEffect(Angle(degrees: 9), axis: (x: 10.0, y: 10.0, z: 10.0))
            .hoverEffect(.lift)
            .transformEffect(.identity)
            
            
            
            Button("Play Game", action: {
                tamagotchi.playGame()
            })
            .padding(.all)
            .accentColor(.purple)
            .border(Color.yellow, width: 16)
            .blendMode(.multiply)
            .rotation3DEffect(Angle(degrees: -9), axis: (x: 10.0, y: 10.0, z: 10.0))
            .hoverEffect(.lift)
            .transformEffect(.identity)
            
            
            Button("Eat Meal", action: {
                tamagotchi.eatMeal()
            })
            .padding(.all)
            .accentColor(.orange)
            .border(Color.purple, width: 16)
            .blendMode(.exclusion)
            .rotation3DEffect(Angle(degrees: 15), axis: (x: 10.0, y: 10.0, z: 10.0))
            .hoverEffect(.lift)
            .transformEffect(.identity)
            Button("Go to the bathroom", action: {
                tamagotchi.bathroom()
            })
            .padding(.all)
            .accentColor(.red)
            .border(Color.black, width: 16)
            .rotation3DEffect(Angle(degrees: -7), axis: (x: -10.0, y: -10.0, z: 10.0))
            .hoverEffect(.automatic)
            .transformEffect(.identity)
            
            .alert(isPresented: $tamagotchi.isDead) {
                            Alert(title: Text("Uh Oh..."), message: Text("\(tamagotchi.name) is dead!"), dismissButton: .default(Text("Oh dear :(")))
                    }
        }
        .padding(.all)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
