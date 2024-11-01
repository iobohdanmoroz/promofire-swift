//
// CreateCodesDto.swift
//
// Generated by openapi-generator
// https://openapi-generator.tech
//

import Foundation
#if canImport(AnyCodable)
import AnyCodable
#endif

public final class CreateCodesDto: Codable, JSONEncodable, Hashable {

    public var templateId: UUID
    public var payload: AnyCodable
    public var count: Double

    public init(templateId: UUID, payload: AnyCodable, count: Double) {
        self.templateId = templateId
        self.payload = payload
        self.count = count
    }

    public enum CodingKeys: String, CodingKey, CaseIterable {
        case templateId
        case payload
        case count
    }

    // Encodable protocol methods

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(templateId, forKey: .templateId)
        try container.encode(payload, forKey: .payload)
        try container.encode(count, forKey: .count)
    }

    public static func == (lhs: CreateCodesDto, rhs: CreateCodesDto) -> Bool {
        lhs.templateId == rhs.templateId &&
        lhs.payload == rhs.payload &&
        lhs.count == rhs.count
        
    }

    public func hash(into hasher: inout Hasher) {
        hasher.combine(templateId.hashValue)
        hasher.combine(payload.hashValue)
        hasher.combine(count.hashValue)
        
    }
}
