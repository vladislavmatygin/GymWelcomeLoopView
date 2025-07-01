import SwiftUI

struct SignButton: View {
    let icon: String
    let title: String
    let backgroundColor: Color
    let textColor: Color
    let action: () -> Void

    var body: some View {
        Button {
            action()
        } label: {
            HStack {
                Image(icon)
                    .resizable()
                    .scaledToFill().frame(width: 20, height: 20)

                Text(title)
            }
            .bold()
            .foregroundStyle(textColor)
            .frame(maxWidth: .infinity)
            .frame(height: 55)
            .background(backgroundColor, in: .capsule)
        }
        .tint(backgroundColor)
    }
}
