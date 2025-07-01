import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            LoopingPlayerView(videoName: "welcome", videoType: "MOV")
                .ignoresSafeArea()

            VStack(alignment: .leading, spacing: 20) {
                VStack(alignment: .leading) {
                    Text("Track achieve and\nshare your fitness\njourney!")
                }
                .font(.largeTitle.bold())
                .foregroundStyle(.white)

                Spacer()

                SignButton(
                    icon: "apple-logo",
                    title: "Connect with Apple",
                    backgroundColor: .white.opacity(0.9),
                    textColor: .black,
                    action: {}
                )
                SignButton(
                    icon: "google-logo",
                    title: "Connect with Google",
                    backgroundColor: .gray.opacity(0.3),
                    textColor: .white,
                    action: {}
                )

                AgreementTextView(termsOfServiceURL: "Link", privacyPolicyURL: "Link")
            }
            .padding(.horizontal, 20)
            .safeAreaPadding(.vertical, 30)
        }
    }
}

#Preview {
    ContentView()
}
