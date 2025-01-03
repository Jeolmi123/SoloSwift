//
//  RotatingGradientButton.swift
//  JustXractice
//
//  Created by Min on 1/4/25.
//

import SwiftUI

struct RotatingGradientButton: View {
    @State private var rotation: Double = 0 // 애니메이션 상태

    var body: some View {
        Button(action: {
            print("Button tapped")
        }) {
            Text("123123")
                .padding()
                .frame(width: 150, height: 50)
                .background(Color.white) // 버튼 배경색
                .cornerRadius(10)
        }
        .overlay(
            RoundedRectangle(cornerRadius: 10)
                .stroke(
                    AngularGradient(
                        gradient: Gradient(colors: [.red, .blue, .green, .yellow, .red]),
                        center: .center,
                        angle: .degrees(rotation)
                    ),
                    lineWidth: 4
                )
        )
        .onAppear {
            withAnimation(.linear(duration: 2).repeatForever(autoreverses: false)) {
                rotation = 360 // 각도를 회전
            }
        }
    }
}

#Preview {
    RotatingGradientButton()
}
