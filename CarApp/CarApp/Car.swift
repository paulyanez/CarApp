//
//  Car.swift
//  CarApp
//
//  Created by Paul Yanez on 6/1/23.
//

import SwiftUI

struct Car: View {
    private var gridItemLayout = [GridItem(.flexible()), GridItem(.flexible()), GridItem(.flexible())]
    
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            VStack {
                LazyVGrid(columns: gridItemLayout, spacing: 10) {
                    ZStack {
                        Button(action: {
                            
                        }) {
                            Image(systemName: "text.justify")
                                .renderingMode(.original)
                                .font(.title2)
                                .fontWeight(.medium)
                                .foregroundColor(.white)
                        }
                    }
                    
                    HStack {
                        Image("porsche-logo")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 44, height: 44)
                            .contrast(1.6)
                    }
                    
                    ZStack {
                        Button(action: {
                            
                        }) {
                            Image("artist-drake")
                                .resizable()
                                .scaledToFill()
                                .frame(width: 34, height: 34)
                                .clipShape(Circle())
                                .padding(2)
                        }
                    }
                }
                .padding(.horizontal, -30)
                .frame(width: UIScreen.main.bounds.width)
    
                
                VStack {
                    VStack {
                        Image("porsche-logo2")
                            .resizable()
                            .scaledToFill()
                            .frame(width: 100, height: 40)
                            .offset(x: 14)
                    }
                }
                .padding(.top)
                
                VStack(spacing: 20.0) {
                    VStack {
                        ZStack {
                            Image("porsche")
                                .resizable()
                                .scaledToFit()
                                .frame(width: UIScreen.main.bounds.width)
                                .scaleEffect(x: 2.3, y: 2.3)
                                .contrast(1.25)
                                .shadow(color: Color.blue.opacity(0.7), radius: 100, x: 0, y: 30)
                                .frame(height: 220, alignment: .top)
                                .offset(x: 200)
                        }
                    }
                    
                    LazyVGrid(columns: gridItemLayout, spacing: 40) {
                        VStack(spacing: 16) {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "thermometer.medium")
                                    .font(.title3)
                                    .fontWeight(.light)
                                    .foregroundColor(.white)
                                    .frame(width: 44, height: 44)
                                    .background(Color.white.opacity(0.1))
                                    .clipShape(Circle())
                                    .scaleEffect(x: 1.2, y: 1.2)
                            }
                            VStack(spacing: 4.0) {
                                Text("24")
                                    .font(.title3)
                                    .fontWeight(.medium)
                                    .fontWidth(.expanded)
                                    .foregroundColor(.white)
                                
                                Text("TEMPERATURE")
                                    .font(.caption2)
                                    .fontWeight(.medium)
                                    .fontWidth(.expanded)
                                    .foregroundColor(.white.opacity(0.8))
                            }
                        }
                        
                        
                        VStack(spacing: 16) {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "road.lanes")
                                    .font(.title3)
                                    .fontWeight(.light)
                                    .foregroundColor(.white)
                                    .frame(width: 44, height: 44)
                                    .background(Color.white.opacity(0.1))
                                    .clipShape(Circle())
                                    .scaleEffect(x: 1.2, y: 1.2)
                            }
                            VStack(spacing: 4.0) {
                                Text("14")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .fontWidth(.expanded)
                                    .foregroundColor(.white)
                                + Text("k")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .fontWidth(.expanded)
                                    .foregroundColor(.white)
                                
                                Text("MILEAGE")
                                    .font(.caption2)
                                    .fontWeight(.medium)
                                    .fontWidth(.expanded)
                                    .foregroundColor(.white.opacity(0.8))
                            }
                        }
                        
                        
                        VStack(spacing: 16) {
                            Button(action: {
                                
                            }) {
                                Image(systemName: "bolt.batteryblock")
                                    .font(.title3)
                                    .fontWeight(.light)
                                    .foregroundColor(.white)
                                    .frame(width: 48, height: 48)
                                    .background(Color.white.opacity(0.1))
                                    .clipShape(Circle())
                                    .scaleEffect(x: 1.2, y: 1.2)
                            }
                            VStack(spacing: 4.0) {
                                Text("55")
                                    .font(.title3)
                                    .fontWeight(.semibold)
                                    .fontWidth(.expanded)
                                    .foregroundColor(.white)
                                + Text("%")
                                    .font(.body)
                                    .fontWeight(.semibold)
                                    .fontWidth(.expanded)
                                    .foregroundColor(.white)
                                
                                Text("BATTERY")
                                    .font(.caption2)
                                    .fontWeight(.medium)
                                    .fontWidth(.expanded)
                                    .foregroundColor(.white.opacity(0.8))
                            }
                        }
                    }
                    .padding(.horizontal, 20)
                    .padding(.top, 70)
                    
                    
                    VStack {
                        Spacer()
                        
                        VStack {
                            Spacer()
                            
                            HStack {
                                Button(action: {
                                    
                                }, label: {
                                    Text("START")
                                        .font(.callout)
                                        .fontWeight(.semibold)
                                        .foregroundColor(Color.white)
                                        .frame(width: 90, height: 90)
                                        .clipShape(Circle())
                                        .overlay(Circle().stroke(Color.white, lineWidth: 0.4))
                                        .padding(9)
                                        .overlay(Circle().stroke(Color.white, lineWidth: 4))
                                        .background(Color.black.opacity(0.2))
                                        .clipShape(Circle())
                                })
                            }
                        }
                        .frame(height: 80)
                    }
                    .padding(UIScreen.main.bounds.height * 0.07)
                    .ignoresSafeArea()
                }
            }
        }
    }
}

struct Car_Previews: PreviewProvider {
    static var previews: some View {
        Car()
    }
}
