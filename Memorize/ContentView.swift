//
//  ContentView.swift
//  Memorize
//
//  Created by CSD on 11/7/21.
//

import SwiftUI

struct ContentView: View {
    @State var theme_smileys=["😀","😃","😄","😁","🤣","😂","😅","😆","🥲","☺️","😊","😇","😌","😉","🙃","🙂","😍","🥰","😘","😗","😛","😋","😚","😙","😝","😜","🤪","🤨","🥸","😎","🤓","🧐"]
    @State var theme_flags=["🇪🇭","🇼🇫","🇻🇳","🇻🇪","🇻🇮","🇺🇿","🇻🇺","🇻🇦","🇺🇾","🇺🇸","🏴󠁧󠁢󠁷󠁬󠁳󠁿","🏴󠁧󠁢󠁳󠁣󠁴󠁿","🇺🇦","🇦🇪","🇬🇧","🏴󠁧󠁢󠁥󠁮󠁧󠁿","🇺🇬","🇹🇻","🇹🇨","🇹🇲","🇹🇴","🇹🇹","🇹🇳","🇹🇷"]
    @State var theme_transports=["🚗","🚕","🚙","🚌","🚑","🚓","🏎","🚎","🚒","🚐","🛻","🚚","🦽","🦯","🚜","🚛","🦼","🛴","🚲","🛵","🚔","🚨","🛺","🏍","🚍","🚘","🚖","🚡"]

    @State var theme=1
//MAIN CODE//
    var body: some View {
        VStack { 
            Text("Memorise")
                .font(.largeTitle)
                .foregroundColor(Color.green)
            cardgrid
            Spacer()
            bottom_buttons
        }
    }
//END OF MAIN CODE//
	
    var cardgrid: some View {
        ScrollView{
            LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]){
                if theme==1{
                    ForEach(theme_smileys[0..<24],id:\.self) { element in
                        CardView(content:element)
                    }
                }
                if theme==2{
                    ForEach(theme_transports[0..<24],id:\.self) { element in
                        CardView(content:element)
                    }
                }
                if theme==3{
                    ForEach(theme_flags[0..<24],id:\.self) { element in
                        CardView(content:element)
                    }
                }
            }
        }
    }
	
    var bottom_buttons: some View {
        HStack{
            Spacer()
            VStack{
                Button{
	if theme != 1 {
	    theme=1
	    theme_smileys.shuffle()
	}
                } label:{Image(systemName: "face.smiling")}
                .font(.largeTitle)
                Text("Smileys")
                    .font(.footnote)
            }
            Spacer()
            VStack{
                Button{
	if theme != 2 {
	    theme=2
	    theme_transports.shuffle()
	}
                } label:{Image(systemName: "car.circle")}
                .font(.largeTitle)
                Text("Cars")
                    .font(.footnote)
            }
            Spacer()
            VStack{
                Button{
	if theme != 3 {
	    theme=3
	    theme_flags.shuffle()
	}
                } label:{Image(systemName: "flag.circle")}
                .font(.largeTitle)
                Text("Flags")
                    .font(.footnote)
            }
            Spacer()
        }.padding()
    }
}


struct CardView: View {
    var content:String
    @State var face_up:Bool=true
    var body: some View {
        ZStack{
            let shape=RoundedRectangle(cornerRadius: /*@START_MENU_TOKEN@*/25.0/*@END_MENU_TOKEN@*/)
            if face_up{
                shape.fill().foregroundColor(.white)
                shape.strokeBorder(lineWidth: 5).foregroundColor(.green)
                Text(content)
            }else {
                shape.fill().foregroundColor(.green)
            }
        }.aspectRatio(2/3,contentMode: /*@START_MENU_TOKEN@*/.fill/*@END_MENU_TOKEN@*/)
        .onTapGesture {
            face_up = !face_up
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .preferredColorScheme(.light)
        ContentView()
            .preferredColorScheme(.dark)
    }
}

