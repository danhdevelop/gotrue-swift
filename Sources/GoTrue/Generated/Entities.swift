// Generated by Create API
// https://github.com/kean/CreateAPI
//
// swiftlint:disable all

import Foundation

public struct UserCredentials: Codable, Equatable {
  public var email: String?
  public var password: String?
  public var phone: String?
  public var refreshToken: String?

  public init(
    email: String? = nil, password: String? = nil, phone: String? = nil, refreshToken: String? = nil
  ) {
    self.email = email
    self.password = password
    self.phone = phone
    self.refreshToken = refreshToken
  }

  private enum CodingKeys: String, CodingKey {
    case email
    case password
    case phone
    case refreshToken = "refresh_token"
  }
}

public struct SignUpRequest: Codable, Equatable {
  public var email: String?
  public var password: String?
  public var phone: String?
  public var data: [String: AnyJSON]?
  public var gotrueMetaSecurity: GoTrueMetaSecurity?

  public init(
    email: String? = nil, password: String? = nil, phone: String? = nil,
    data: [String: AnyJSON]? = nil, gotrueMetaSecurity: GoTrueMetaSecurity? = nil
  ) {
    self.email = email
    self.password = password
    self.phone = phone
    self.data = data
    self.gotrueMetaSecurity = gotrueMetaSecurity
  }

  private enum CodingKeys: String, CodingKey {
    case email
    case password
    case phone
    case data
    case gotrueMetaSecurity = "gotrue_meta_security"
  }
}

public struct Session: Codable, Equatable {
  public var providerToken: String?
  public var accessToken: String
  public var tokenType: String
  public var expiresIn: Double
  public var refreshToken: String
  public var user: User

  public init(
    providerToken: String? = nil, accessToken: String, tokenType: String, expiresIn: Double,
    refreshToken: String, user: User
  ) {
    self.providerToken = providerToken
    self.accessToken = accessToken
    self.tokenType = tokenType
    self.expiresIn = expiresIn
    self.refreshToken = refreshToken
    self.user = user
  }

  private enum CodingKeys: String, CodingKey {
    case providerToken = "provider_token"
    case accessToken = "access_token"
    case tokenType = "token_type"
    case expiresIn = "expires_in"
    case refreshToken = "refresh_token"
    case user
  }
}

public struct User: Codable, Equatable {
  public var id: String
  public var appMetadata: [String: AnyJSON]
  public var userMetadata: [String: AnyJSON]
  public var aud: String
  public var confirmationSentAt: Date?
  public var recoverySentAt: Date?
  public var invitedAt: Date?
  public var actionLink: String?
  public var email: String?
  public var phone: String?
  public var createdAt: Date
  public var confirmedAt: Date?
  public var emailConfirmedAt: Date?
  public var phoneConfirmedAt: Date?
  public var lastSignInAt: Date?
  public var role: String?
  public var updatedAt: Date
  public var identities: [UserIdentity]?

  public init(
    id: String, appMetadata: [String: AnyJSON], userMetadata: [String: AnyJSON], aud: String,
    confirmationSentAt: Date? = nil, recoverySentAt: Date? = nil, invitedAt: Date? = nil,
    actionLink: String? = nil, email: String? = nil, phone: String? = nil, createdAt: Date,
    confirmedAt: Date? = nil, emailConfirmedAt: Date? = nil, phoneConfirmedAt: Date? = nil,
    lastSignInAt: Date? = nil, role: String? = nil, updatedAt: Date,
    identities: [UserIdentity]? = nil
  ) {
    self.id = id
    self.appMetadata = appMetadata
    self.userMetadata = userMetadata
    self.aud = aud
    self.confirmationSentAt = confirmationSentAt
    self.recoverySentAt = recoverySentAt
    self.invitedAt = invitedAt
    self.actionLink = actionLink
    self.email = email
    self.phone = phone
    self.createdAt = createdAt
    self.confirmedAt = confirmedAt
    self.emailConfirmedAt = emailConfirmedAt
    self.phoneConfirmedAt = phoneConfirmedAt
    self.lastSignInAt = lastSignInAt
    self.role = role
    self.updatedAt = updatedAt
    self.identities = identities
  }

  private enum CodingKeys: String, CodingKey {
    case id
    case appMetadata = "app_metadata"
    case userMetadata = "user_metadata"
    case aud
    case confirmationSentAt = "confirmation_sent_at"
    case recoverySentAt = "recovery_sent_at"
    case invitedAt = "invited_at"
    case actionLink = "action_link"
    case email
    case phone
    case createdAt = "created_at"
    case confirmedAt = "confirmed_at"
    case emailConfirmedAt = "email_confirmed_at"
    case phoneConfirmedAt = "phone_confirmed_at"
    case lastSignInAt = "last_sign_in_at"
    case role
    case updatedAt = "updated_at"
    case identities
  }
}

public struct UserIdentity: Codable, Equatable {
  public var id: String
  public var userID: String
  public var identityData: [String: AnyJSON]
  public var provider: Provider
  public var createdAt: Date
  public var lastSignInAt: Date
  public var updatedAt: Date

  public init(
    id: String, userID: String, identityData: [String: AnyJSON], provider: Provider,
    createdAt: Date, lastSignInAt: Date, updatedAt: Date
  ) {
    self.id = id
    self.userID = userID
    self.identityData = identityData
    self.provider = provider
    self.createdAt = createdAt
    self.lastSignInAt = lastSignInAt
    self.updatedAt = updatedAt
  }

  private enum CodingKeys: String, CodingKey {
    case id
    case userID = "user_id"
    case identityData = "identity_data"
    case provider
    case createdAt = "created_at"
    case lastSignInAt = "last_sign_in_at"
    case updatedAt = "updated_at"
  }
}

public enum Provider: String, Codable, CaseIterable {
  case apple
  case azure
  case bitbucket
  case discord
  case email
  case facebook
  case github
  case gitlab
  case google
  case keycloak
  case linkedin
  case notion
  case slack
  case spotify
  case twitch
  case twitter
  case workos
}

public struct OpenIDConnectCredentials: Codable, Equatable {
  public var idToken: String
  public var nonce: String
  public var clientID: String?
  public var issuer: String?
  public var provider: Provider?

  public init(
    idToken: String, nonce: String, clientID: String? = nil, issuer: String? = nil,
    provider: Provider? = nil
  ) {
    self.idToken = idToken
    self.nonce = nonce
    self.clientID = clientID
    self.issuer = issuer
    self.provider = provider
  }

  private enum CodingKeys: String, CodingKey {
    case idToken = "id_token"
    case nonce
    case clientID = "client_id"
    case issuer
    case provider
  }
}

public struct GoTrueMetaSecurity: Codable, Equatable {
  public var hcaptchaToken: String

  public init(hcaptchaToken: String) {
    self.hcaptchaToken = hcaptchaToken
  }

  private enum CodingKeys: String, CodingKey {
    case hcaptchaToken = "hcaptcha_token"
  }
}

public struct OTPParams: Codable, Equatable {
  public var email: String?
  public var phone: String?
  public var createUser: Bool
  public var gotrueMetaSecurity: GoTrueMetaSecurity?

  public init(
    email: String? = nil, phone: String? = nil, createUser: Bool? = nil,
    gotrueMetaSecurity: GoTrueMetaSecurity? = nil
  ) {
    self.email = email
    self.phone = phone
    self.createUser = createUser ?? true
    self.gotrueMetaSecurity = gotrueMetaSecurity
  }

  private enum CodingKeys: String, CodingKey {
    case email
    case phone
    case createUser = "create_user"
    case gotrueMetaSecurity = "gotrue_meta_security"
  }

  public init(from decoder: Decoder) throws {
    let values = try decoder.container(keyedBy: CodingKeys.self)
    self.email = try values.decodeIfPresent(String.self, forKey: .email)
    self.phone = try values.decodeIfPresent(String.self, forKey: .phone)
    self.createUser = try values.decodeIfPresent(Bool.self, forKey: .createUser) ?? true
    self.gotrueMetaSecurity = try values.decodeIfPresent(
      GoTrueMetaSecurity.self, forKey: .gotrueMetaSecurity)
  }
}

public struct VerifyMobileOTPParams: Codable, Equatable {
  public var phone: String
  public var token: String
  public var type: `Type`

  public enum `Type`: String, Codable, CaseIterable {
    case sms
  }

  public init(phone: String, token: String, type: `Type`) {
    self.phone = phone
    self.token = token
    self.type = type
  }
}

public struct VerifyEmailOTPParams: Codable, Equatable {
  public var email: String
  public var token: String
  public var type: `Type`

  public enum `Type`: String, Codable, CaseIterable {
    case signup
    case invite
    case magiclink
    case recovery
    case emailChange = "email_change"
  }

  public init(email: String, token: String, type: `Type`) {
    self.email = email
    self.token = token
    self.type = type
  }
}

public enum VerifyOTPParams: Codable, Equatable {
  case verifyMobileOTPParams(VerifyMobileOTPParams)
  case verifyEmailOTPParams(VerifyEmailOTPParams)

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if let value = try? container.decode(VerifyMobileOTPParams.self) {
      self = .verifyMobileOTPParams(value)
    } else if let value = try? container.decode(VerifyEmailOTPParams.self) {
      self = .verifyEmailOTPParams(value)
    } else {
      throw DecodingError.dataCorruptedError(
        in: container, debugDescription: "Failed to intialize `oneOf`")
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    switch self {
    case .verifyMobileOTPParams(let value): try container.encode(value)
    case .verifyEmailOTPParams(let value): try container.encode(value)
    }
  }
}

public enum SessionOrUser: Codable, Equatable {
  case session(Session)
  case user(User)

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if let value = try? container.decode(Session.self) {
      self = .session(value)
    } else if let value = try? container.decode(User.self) {
      self = .user(value)
    } else {
      throw DecodingError.dataCorruptedError(
        in: container, debugDescription: "Failed to intialize `oneOf`")
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    switch self {
    case .session(let value): try container.encode(value)
    case .user(let value): try container.encode(value)
    }
  }
}

public struct UserAttributes: Codable, Equatable {
  public var email: String?
  public var phone: String?
  public var password: String?
  public var emailChangeToken: String?
  public var data: [String: AnyJSON]?

  public init(
    email: String? = nil, phone: String? = nil, password: String? = nil,
    emailChangeToken: String? = nil, data: [String: AnyJSON]? = nil
  ) {
    self.email = email
    self.phone = phone
    self.password = password
    self.emailChangeToken = emailChangeToken
    self.data = data
  }

  private enum CodingKeys: String, CodingKey {
    case email
    case phone
    case password
    case emailChangeToken = "email_change_token"
    case data
  }
}

public enum AnyJSON: Equatable, Codable {
  case string(String)
  case number(Double)
  case object([String: AnyJSON])
  case array([AnyJSON])
  case bool(Bool)

  var value: Any {
    switch self {
    case .string(let string): return string
    case .number(let double): return double
    case .object(let dictionary): return dictionary
    case .array(let array): return array
    case .bool(let bool): return bool
    }
  }

  public func encode(to encoder: Encoder) throws {
    var container = encoder.singleValueContainer()
    switch self {
    case let .array(array): try container.encode(array)
    case let .object(object): try container.encode(object)
    case let .string(string): try container.encode(string)
    case let .number(number): try container.encode(number)
    case let .bool(bool): try container.encode(bool)
    }
  }

  public init(from decoder: Decoder) throws {
    let container = try decoder.singleValueContainer()
    if let object = try? container.decode([String: AnyJSON].self) {
      self = .object(object)
    } else if let array = try? container.decode([AnyJSON].self) {
      self = .array(array)
    } else if let string = try? container.decode(String.self) {
      self = .string(string)
    } else if let bool = try? container.decode(Bool.self) {
      self = .bool(bool)
    } else if let number = try? container.decode(Double.self) {
      self = .number(number)
    } else {
      throw DecodingError.dataCorrupted(
        .init(codingPath: decoder.codingPath, debugDescription: "Invalid JSON value.")
      )
    }
  }
}

struct StringCodingKey: CodingKey, ExpressibleByStringLiteral {
  private let string: String
  private var int: Int?

  var stringValue: String { return string }

  init(string: String) {
    self.string = string
  }

  init?(stringValue: String) {
    self.string = stringValue
  }

  var intValue: Int? { return int }

  init?(intValue: Int) {
    self.string = String(describing: intValue)
    self.int = intValue
  }

  init(stringLiteral value: String) {
    self.string = value
  }
}
