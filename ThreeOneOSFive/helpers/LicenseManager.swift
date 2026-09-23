import Combine
import Foundation
import Security
import UIKit

@MainActor
final class LicenseManager: ObservableObject {

    @Published private(set) var isActive     = true
    @Published private(set) var isBusy       = false
    @Published private(set) var message: String? = "Key válida — Licença vitalícia"
    @Published private(set) var expiresAt: String? = "Nunca"
    @Published private(set) var daysRemaining: Int? = 9999
    @Published var rememberKey = true

    init() {
        self.isActive = true
    }

    var hasRememberedKey: Bool {
        return true
    }

    func beginLaunchSession() {
        self.isActive = true
    }

    func activate(key: String, isAutoLogin: Bool = false) {
        self.isActive = true
    }

    func rememberedKey() -> String? { 
        return "SHW-LIFETIME" 
    }

    func refresh() {
        self.isActive = true
    }

    func deactivate() {
        // Desativado, a licença é vitalícia.
    }
}
