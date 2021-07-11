//
//  ContentView.swift
//  Memorize
//
//  Created by CSD on 11/7/21.
//

import SwiftUI

struct ContentView: View {
var theme_smileys=["😀","😃","😄","😁","🤣","😂","😅","😆","🥲","☺️","😊","😇","😌","😉","🙃","🙂","😍","🥰","😘","😗","😛","😋","😚","😙","😝","😜","🤪","🤨","🥸","😎","🤓","🧐"]
var theme_flags=["🇪🇭","🇼🇫","🇻🇳","🇻🇪","🇻🇮","🇺🇿","🇻🇺","🇻🇦","🇺🇾","🇺🇸","🏴󠁧󠁢󠁷󠁬󠁳󠁿","🏴󠁧󠁢󠁳󠁣󠁴󠁿","🇺🇦","🇦🇪","🇬🇧","🏴󠁧󠁢󠁥󠁮󠁧󠁿","🇺🇬","🇹🇻","🇹🇨","🇹🇲","🇹🇴","🇹🇹","🇹🇳","🇹🇷"]
var theme_transports=["🚗","🚕","🚙","🚌","🚑","🚓","🏎","🚎","🚒","🚐","🛻","🚚","🦽","🦯","🚜","🚛","🦼","🛴","🚲","🛵","🚔","🚨","🛺","🏍","🚍","🚘","🚖","🚡"]




    var body: some View {
                    var theme=theme_smileys
                    VStack {
                    
                Text("Memorise")
                    .font(.largeTitle)
                    .foregroundColor(Color.green)
                ScrollView{
                    LazyVGrid(columns: [GridItem(.adaptive(minimum: 85))]){
                        ForEach(theme[0..<24],id:\.self) { element in
                            CardView(content:element)
                        }
                    }
                }
                Spacer()
                bottom_buttons
        }
    }
                    var bottom_buttons: some View {
                    HStack{
                    Spacer()
                                        VStack{
                    Button{
                    } label:{
                    Image(systemName: "face.smiling")
                    }.font(.largeTitle)
                    .onTapGesture {
                                        theme=theme_smileys
                    }
                                                            Text("Smileys")
                                                                                .font(.footnote)
                                        }
                    Spacer()
                                        VStack{
                    Button{
                    } label:{
                    Image(systemName: "car.circle")
                    }.font(.largeTitle)
                    .onTapGesture {
                                        theme=theme_transports
                    }
                                                            Text("Cars")
                                                                                .font(.footnote)
                                        }
                    Spacer()
                                        VStack{
                                        Button{
                    } label:{
                    Image(systemName: "flag.circle")
                    }.font(.largeTitle)
                    .onTapGesture {
                                        theme=theme_flags
                    }
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

