import SwiftUI

struct AgreementTextView: View {
    let termsOfServiceURL: String
    let privacyPolicyURL: String

    var body: some View {
        VStack(spacing: 4) {
            Text(.init("""
            By continuing, you agree to our [Term of Service](\(termsOfServiceURL))
            and [Privacy Policy](\(privacyPolicyURL))
            """))
            .multilineTextAlignment(.center)
            .font(.system(size: 14))
            .foregroundStyle(.gray)
            .tint(.white)
        }
        .frame(maxWidth: .infinity)
        .padding(.top, 8)
    }
}
