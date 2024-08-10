//
//  Card.swift
//  WarmUp
//
//  Created by LEE JAEHA on 8/10/24.
//

import SwiftUI

struct Card: View {
    var imageName: String
    var title: String
    var caption: String
    
    var body: some View {
        HStack(alignment: .center, spacing: 16) {
            Image(systemName: imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 30, height: 30)
                .foregroundColor(.blue)

            VStack(alignment: .leading, spacing: 4) {
                Text(title)
                    .font(.system(size: 17, weight: .semibold))

                Text(caption)
                    .font(.system(size: 13))
                    .foregroundColor(.secondary)
                    .fixedSize(horizontal: false, vertical: true)
            }
        }
            .padding(.horizontal, 30)
            .padding(.vertical, 12)
            .frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    Card(
        imageName: "person.2.fill",
        title: "Shared Library",
        caption: "Combine photos and videos with the people closest to you and automatically share new photos from Camera."
    )
}
