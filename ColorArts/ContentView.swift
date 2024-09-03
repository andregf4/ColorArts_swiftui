//
//  ContentView.swift
//  ColorArts
//
//  Created by Andre Gerez Foratto on 12/05/24.
//

import SwiftUI

struct ContentView: View {

    @State var r: Double = 0
    @State var g: Double = 0
    @State var b: Double = 0
    @State var chooseR: Double = 0
    @State var chooseG: Double = 0
    @State var chooseB: Double = 0
    @State var R: Double = 0
    @State var G: Double = 0
    @State var B: Double = 0
    
    var body: some View {
        ZStack {
            Color.beje
                .ignoresSafeArea()
            VStack {
                Text("Tap the Circle")
                    .font(Font.custom("FonteTeste", size: 30))
                    .bold()
                Circle()
                    .foregroundStyle(Color(red: r/255, green: g/255, blue: b/255))
                    .frame(width: 200)
                    .onTapGesture {
                        r = Double.random(in: 0...255)
                        g = Double.random(in: 0...255)
                        b = Double.random(in: 0...255)
                    }
                
                Text("Which is the RGB scale of the color above?")
                    .padding([.top,.bottom], 10)
                
                VStack {
                    Text("Red Scale:")
                    Slider(value: $chooseR, in: 0...255)
                        .padding([.leading, .trailing], 20)
                        .tint(.red)
                    Text("\(chooseR, specifier: "%.0f")")
                }
                .foregroundStyle(Color.red)
                .padding(5)
                .border(Color.red)
                .padding([.leading, .trailing], 20)
                VStack {
                    Text("Green Scale:")
                    Slider(value: $chooseG, in: 0...255)
                        .padding([.leading, .trailing], 20)
                        .tint(.darkgreen)
                    Text("\(chooseG, specifier: "%.0f")")
                }
                .foregroundStyle(Color.darkgreen)
                .padding(5)
                .border(Color.darkgreen)
                .padding([.leading, .trailing], 20)
                VStack {
                    Text("Blue Scale:")
                    Slider(value: $chooseB, in: 0...255)
                        .padding([.leading, .trailing], 20)
                        .tint(.blue)
                    Text("\(chooseB, specifier: "%.0f")")
                }
                .foregroundStyle(Color.blue)
                .padding(5)
                .border(Color.blue)
                .padding([.leading, .trailing, .bottom], 20)
                
                HStack {
                    VStack {
                        Button {
                            if (chooseR-r) < 0 {
                                R = (1+(((chooseR-r)/r)))*100
                            } else {
                                R = (1-(((chooseR-r)/chooseR)))*100
                            }
                        } label: {
                            Text("Submit")
                                .foregroundStyle(Color.white)
                                .padding()
                                .frame(height: 40)
                                .background(Color.red)
                                .cornerRadius(15)
                        }
                        Text("\(R, specifier: "%.1f")%").bold()
                    }
                    .padding(.leading, 20)
                    
                    Spacer ()
                    
                    VStack {
                        Button {
                            if (chooseG-g) < 0 {
                                G = (1+(((chooseG-g)/g)))*100
                            } else {
                                G = (1-(((chooseG-g)/chooseG)))*100
                            }
                        } label: {
                            Text("Submit")
                                .foregroundStyle(Color.white)
                                .padding()
                                .frame(height: 40)
                                .background(Color.darkgreen)
                                .cornerRadius(15)
                        }
                        Text("\(G, specifier: "%.1f")%").bold()
                    }
                    
                    Spacer()
                    
                    VStack {
                        Button {
                            if (chooseB-b) < 0 {
                                B = (1+(((chooseB-b)/b)))*100
                            } else {
                                B = (1-(((chooseB-b)/chooseB)))*100
                            }
                        } label: {
                            Text("Submit")
                                .foregroundStyle(Color.white)
                                .padding()
                                .frame(height: 40)
                                .background(Color.blue)
                                .cornerRadius(15)
                        }
                        Text("\(B, specifier: "%.1f")%").bold()
                    }
                    .padding(.trailing, 20)
                }
                .padding(.bottom, 10)
                
                Spacer()
                
                VStack {
                    Text("\(((R+G+B)/3), specifier: "%.0f")")
                        .font(.system(size: 30))
                    Text("PONTOS")
                }
                .foregroundStyle(.white)
                .frame(width: 100, height: 70)
                .background(Color.black)
                .cornerRadius(15)
                
                Spacer()
            }
        }
    }
}

#Preview {
    ContentView()
}
