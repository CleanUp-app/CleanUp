//
//  CustomViews.swift
//  BClean!
//
//  Created by Julien Le ber on 29/12/2022.
//

import SwiftUI

struct CustomViews: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct CustomViews_Previews: PreviewProvider {
    static var previews: some View {
        CustomViews()
    }
}

struct TextZone: View{
    @Binding var value:String
    @State var defaultText:String
    var body: some View{
        TextField("", text: $value)
            .placeholder(when: value.isEmpty, placeholder: {
                Text(defaultText)
                    .font(.custom("AirbnbCereal_W_Bk",fixedSize: 16))
                    .frame(maxWidth: .infinity,alignment: .center)
                    
            })
            .foregroundColor(.white)
            .padding(.vertical,20)
            .padding(.horizontal,20)
            .overlay(RoundedRectangle(cornerRadius: 40.0).strokeBorder(Color.white, style: StrokeStyle(lineWidth: 1.0)))
                        
            .background(Color.gray.opacity(0.3).cornerRadius(40))
            .font(.headline)
        
    }
}

struct customButton: View{
    @State var text:String
    var body: some View{
        Button {
            print("hello world")
        } label: {
            Text(text)
                .foregroundStyle(LinearGradient(gradient: Gradient(colors: [Color("orange-gradient"), Color("red-gradient")]), startPoint: .top, endPoint: .bottom))
                .font(.custom("AirbnbCereal_W_Bd", size: 20))
                .frame(maxWidth: .infinity)
                .padding(.vertical,20)
                .padding(.horizontal,20)
                .background(.white)
                .cornerRadius(40)
                .shadow(radius: 10)
        }
    }
}

struct GradientStrokeButton: View{
    @State var text:String
    var body: some View{
        Button {
            print("hello world")
        } label: {
            Text(text)
                .foregroundColor(.black)
                .font(.custom("AirbnbCereal_W_Lt", size: 10))
                .padding(.horizontal)
                .padding(.vertical,10)
                .overlay(RoundedRectangle(cornerRadius: 40.0).strokeBorder((LinearGradient(gradient: Gradient(colors: [Color("orange-gradient"), Color("red-gradient")]), startPoint: .top, endPoint: .bottom)), style: StrokeStyle(lineWidth: 1.0)))
        }
    }
}

struct GradientBackgroundButton: View{
    @State var text:String
    @State var color1:String
    @State var color2:String
    var body: some View{
        Button {
            print("hello world")
        } label: {
            Text(text)
                .foregroundColor(.white)
                .font(.custom("AirbnbCereal_W_Lt", size: 10))
                .padding(.horizontal)
                .padding(.vertical,10)
                .background((LinearGradient(gradient: Gradient(colors: [Color(color1), Color(color2)]), startPoint: .top, endPoint: .bottom)))
                .cornerRadius(20)
        }
        .shadow(radius: 20)
    }
}

