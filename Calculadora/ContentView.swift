//
//  ContentView.swift
//  Calculadora
//
//  Created by Iramar Falcão on 31/08/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack{
            VStack{
                HStack {
                    Text("...")
                }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: 100, maxWidth: .infinity, minHeight: 100, idealHeight: 100, maxHeight: 200, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            }
            VStack {
                HStack {
                    UnitButtonView(value: "C", fontColor: .black)
                    UnitButtonView(value: "+/−", fontColor: .black)
                    UnitButtonView(value: "%", fontColor: .black)
                    UnitButtonView(value: "÷", fontColor: .red)
                }
                HStack {
                    UnitButtonView(value: "7")
                    UnitButtonView(value: "8")
                    UnitButtonView(value: "9")
                    UnitButtonView(value: "×", fontColor: .red)
                }
                HStack {
                    UnitButtonView(value: "4")
                    UnitButtonView(value: "5")
                    UnitButtonView(value: "6")
                    UnitButtonView(value: "−", fontColor: .red)
                }
                HStack {
                    UnitButtonView(value: "1")
                    UnitButtonView(value: "2")
                    UnitButtonView(value: "3")
                    UnitButtonView(value: "+", fontColor: .red)
                }
                HStack {
                    UnitButtonView(value: "0")
                    UnitButtonView(value: ".", fontColor: .black)
                    UnitButtonBackspaceView(value: "")
                    UnitButtonEqualView(value: "=")
                }
            }
        }
        .font(.custom("Comfortaa", size: 32))
        .padding()
    }
}

struct UnitButtonView: View {
    @State var value = ""
    @State var fontColor = Color.gray
    
    var body: some View {
        ZStack {
            Button {
                
            } label: {
                Text(value)
            }.frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(fontColor)
        }
    }
}

struct UnitButtonEqualView: View {
    @State var value = ""
    
    var body: some View {
        ZStack {
//            RoundedRectangle(cornerRadius: 16.0)
//                .stroke()
//                .foregroundColor(.red)
            Button {
                
            } label: {
                Text(value)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
            .foregroundColor(.red)
        }
    }
}

struct UnitButtonBackspaceView: View {
    @State var value = ""
    
    var body: some View {
        ZStack {
            Button {
                
            } label: {
                Image(systemName: "delete.left")
                    .foregroundColor(.black)
            }
            .frame(minWidth: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealWidth: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, minHeight: /*@START_MENU_TOKEN@*/0/*@END_MENU_TOKEN@*/, idealHeight: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, maxHeight: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
