//
//  OnBoarding.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct OnBoarding: View {
    var body: some View {

        GeometryReader { geometry in
            VStack(spacing: 0) {
                Spacer().frame(height: geometry.size.height * 0.1)

                VStack(alignment: .leading, spacing: 20) {
                    CommonText(text: "What's New in Photos", font: .system(size: 32, weight: .bold))
                        .padding(.bottom, 10)

                    VStack(spacing: 25) {
                        Card(
                            imageName: "person.2.fill",
                            title: "Shared Library",
                            caption: "Combine photos and videos with the people closest to you and automatically share new photos from Camera."
                        )
                        Card(
                            imageName: "square.and.pencil",
                            title: "Copy & Paste Edits",
                            caption: "Save time by making edits to one photo, then applying the changes to other photos with a tap."
                        )
                        Card(
                            imageName: "photo.on.rectangle.angled",
                            title: "Merge Duplicates",
                            caption: "Quickly find and merge all your duplicate photos and videos from one central place in the Albums tab."
                        )
                    }
                }
                    .padding(.horizontal, 30)

                Spacer()

                CommonButton(
                    buttonText: "Continue",
                    buttonBgColor: .blue,
                    buttonColor: .white,
                    buttonFont: .headline,
                    action: {
                        print("Continue tapped")
                    }
                )
                    .padding(.horizontal, 30)
                    .padding(.bottom, geometry.safeAreaInsets.bottom + 70)
            }
        }
            .edgesIgnoringSafeArea(.bottom)
    }
}

#Preview {
    OnBoarding()
}
