//
//  ContentView.swift
//  Memorize
//
//  Created by CSD on 11/7/21.
//

import SwiftUI
var theme_smileys=["😀","😃","😄","😁","🤣","😂","😅","😆","🥲","☺️","😊","😇","😌","😉","🙃","🙂","😍","🥰","😘","😗","😛","😋","😚","😙","😝","😜","🤪","🤨","🥸","😎","🤓","🧐"]
var theme_flags=["🇪🇭","🇼🇫","🇻🇳","🇻🇪","🇻🇮","🇺🇿","🇻🇺","🇻🇦","🇺🇾","🇺🇸","🏴󠁧󠁢󠁷󠁬󠁳󠁿","🏴󠁧󠁢󠁳󠁣󠁴󠁿","🇺🇦","🇦🇪","🇬🇧","🏴󠁧󠁢󠁥󠁮󠁧󠁿","🇺🇬","🇹🇻","🇹🇨","🇹🇲","🇹🇴","🇹🇹","🇹🇳","🇹🇷"]
var theme_transports=["🚗","🚕","🚙","🚌","🚑","🚓","🏎","🚎","🚒","🚐","🛻","🚚","🦽","🦯","🚜","🚛","🦼","🛴","🚲","🛵","🚔","🚨","🛺","🏍","🚍","🚘","🚖","🚡"]

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Memorise")
                .font(.largeTitle)
                .foregroundColor(Color.green)
            VStack{
                LazyVGrid(columns: [GridItem(.adaptive(minimum: 100))]){
                    ForEach(theme_smileys[0..<6],id:\.self) { smiley in
                        CardView(content:smiley)
                    }
                }
            }
            Spacer()
        }
    }
}



struct CardView: View {
    var content:String
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .fill()
                .foregroundColor(.white)
            RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
                .stroke(lineWidth: 5)
                .foregroundColor(.green)
            Text(content)
                
        }.aspectRatio(2/3,contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        .padding()
    }
}










struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
    }
}

