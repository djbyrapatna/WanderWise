//
//  AuthService.swift
//  AuthCore
//
//  Created by Dhruva Jothik Byrapatna on 5/22/25.
//

import Foundation

public struct UserProfile {
  public let userID: String
  public let displayName: String?
}

public protocol AuthService {
  var currentUser: UserProfile? { get }
  func signIn() async throws
  func signOut() async throws
}
