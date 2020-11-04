//
//  ContentView.swift
//  button
//
//  Created by 64002170 on 9/8/20.
//  Copyright © 2020 RishiN. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var hei: Int = 0
    var body: some View {
        nums()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct nums: View{
    @State var currentNum: Double=0
    @State var currentTotal:Double=0
    @State var prevAction:String=""
    var body:some View{
        ZStack{
            VStack{
                ZStack{
                    RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                    if(currentNum-floor(currentNum)==0){
                        Text(String(Int(currentNum))).font(.system(size: 60))
                    } else {
                        Text("\(currentNum, specifier: "%.2f")").font(.system(size: 60))
                    }
                }
                HStack(spacing:8){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("1").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+1
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("2").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+2
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("3").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+3
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("C").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=0
                            self.currentTotal=0
                            self.prevAction=""
                    }
                    
                }
                HStack(spacing:8){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("4").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+4
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("5").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+5
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("6").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+6
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("=").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            if(self.prevAction=="+"){
                                self.currentTotal+=self.currentNum
                            } else if(self.prevAction=="-"){
                                self.currentTotal-=self.currentNum
                            } else if(self.prevAction=="x"){
                                self.currentTotal*=self.currentNum
                            } else if(self.prevAction=="/"){
                                self.currentTotal/=self.currentNum
                            } else {
                                self.currentTotal=self.currentNum
                            }
                            self.currentNum=self.currentTotal
                            self.prevAction=""
                    }
                }
                HStack(spacing:8){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("7").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+7
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("8").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+8
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("9").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)+9
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("0").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            self.currentNum=(self.currentNum*10)
                    }
                }
                HStack(spacing:8){
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("+").font(.system(size: 60))
                            .frame(maxWidth:.infinity,maxHeight:.infinity)
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            if(self.prevAction=="+"){
                                self.currentTotal+=self.currentNum
                            } else if(self.prevAction=="-"){
                                self.currentTotal-=self.currentNum
                            } else if(self.prevAction=="x"){
                                self.currentTotal*=self.currentNum
                            } else if(self.prevAction=="/"){
                                self.currentTotal/=self.currentNum
                            } else {
                                self.currentTotal=self.currentNum
                            }
                            self.prevAction="+"
                            self.currentNum=0
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("-").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            if(self.prevAction=="+"){
                                self.currentTotal+=self.currentNum
                            } else if(self.prevAction=="-"){
                                self.currentTotal-=self.currentNum
                            } else if(self.prevAction=="x"){
                                self.currentTotal*=self.currentNum
                            } else if(self.prevAction=="/"){
                                self.currentTotal/=self.currentNum
                            } else {
                                self.currentTotal=self.currentNum
                            }
                            self.prevAction="-"
                            self.currentNum=0
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("x").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            if(self.prevAction=="+"){
                                self.currentTotal+=self.currentNum
                            } else if(self.prevAction=="-"){
                                self.currentTotal-=self.currentNum
                            } else if(self.prevAction=="x"){
                                self.currentTotal*=self.currentNum
                            } else if(self.prevAction=="/"){
                                self.currentTotal/=self.currentNum
                            } else {
                                self.currentTotal=self.currentNum
                            }
                            self.prevAction="x"
                            self.currentNum=0
                    }
                    ZStack{
                        RoundedRectangle(cornerRadius: 10).stroke(lineWidth: 3)
                        Text("÷").font(.system(size: 60))
                    }.contentShape(Rectangle())
                        .onTapGesture {
                            if(self.prevAction=="+"){
                                self.currentTotal+=self.currentNum
                            } else if(self.prevAction=="-"){
                                self.currentTotal-=self.currentNum
                            } else if(self.prevAction=="x"){
                                self.currentTotal*=self.currentNum
                            } else if(self.prevAction=="/"){
                                self.currentTotal/=self.currentNum
                            } else {
                                self.currentTotal=self.currentNum
                            }
                            self.prevAction="/"
                            self.currentNum=0
                    }
                }
            }
        }.padding()
        
    }
}

