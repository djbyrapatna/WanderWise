//
//  File.swift
//  AuthCore
//
//  Created by Dhruva Jothik Byrapatna on 5/22/25.
//

import Foundation

public final class MockAuthService: AuthService {
  public var currentUser: UserProfile? = nil
  public func signIn() async throws {
    currentUser = UserProfile(userID: "mock-id", displayName: "Mock User")
  }
  public func signOut() async throws {
    currentUser = nil
  }
}
