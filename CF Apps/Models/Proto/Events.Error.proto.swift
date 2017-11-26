/// Generated by the Protocol Buffers 3.1.0 compiler.  DO NOT EDIT!
/// Protobuf-swift version: 3.0.22
/// Source file "error.proto"
/// Syntax "Proto2"

import Foundation
import ProtocolBuffers


public extension Events{}

public extension Events {
    public struct ErrorRoot {
        public static let `default` = ErrorRoot()
        public var extensionRegistry:ExtensionRegistry

        init() {
            extensionRegistry = ExtensionRegistry()
            registerAllExtensions(registry: extensionRegistry)
        }
        public func registerAllExtensions(registry: ExtensionRegistry) {
        }
    }

    //// An Error event represents an error in the originating process.
    final public class Error : GeneratedMessage {
        public typealias BuilderType = Events.Error.Builder

        public static func == (lhs: Events.Error, rhs: Events.Error) -> Bool {
            if lhs === rhs {
                return true
            }
            var fieldCheck:Bool = (lhs.hashValue == rhs.hashValue)
            fieldCheck = fieldCheck && (lhs.hasSource == rhs.hasSource) && (!lhs.hasSource || lhs.source == rhs.source)
            fieldCheck = fieldCheck && (lhs.hasCode == rhs.hasCode) && (!lhs.hasCode || lhs.code == rhs.code)
            fieldCheck = fieldCheck && (lhs.hasMessage == rhs.hasMessage) && (!lhs.hasMessage || lhs.message == rhs.message)
            fieldCheck = (fieldCheck && (lhs.unknownFields == rhs.unknownFields))
            return fieldCheck
        }

        //// Source of the error. This may or may not be the same as the Origin in the envelope.
        public fileprivate(set) var source:String! = nil
        public fileprivate(set) var hasSource:Bool = false

        //// Numeric error code. This is provided for programmatic responses to the error.
        public fileprivate(set) var code:Int32! = nil
        public fileprivate(set) var hasCode:Bool = false

        //// Error description (preferably human-readable).
        public fileprivate(set) var message:String! = nil
        public fileprivate(set) var hasMessage:Bool = false

        required public init() {
            super.init()
        }
        override public func isInitialized() -> Bool {
            if !hasSource {
                return false
            }
            if !hasCode {
                return false
            }
            if !hasMessage {
                return false
            }
            return true
        }
        override public func writeTo(codedOutputStream: CodedOutputStream) throws {
            if hasSource {
                try codedOutputStream.writeString(fieldNumber: 1, value:source)
            }
            if hasCode {
                try codedOutputStream.writeInt32(fieldNumber: 2, value:code)
            }
            if hasMessage {
                try codedOutputStream.writeString(fieldNumber: 3, value:message)
            }
            try unknownFields.writeTo(codedOutputStream: codedOutputStream)
        }
        override public func serializedSize() -> Int32 {
            var serialize_size:Int32 = memoizedSerializedSize
            if serialize_size != -1 {
             return serialize_size
            }

            serialize_size = 0
            if hasSource {
                serialize_size += source.computeStringSize(fieldNumber: 1)
            }
            if hasCode {
                serialize_size += code.computeInt32Size(fieldNumber: 2)
            }
            if hasMessage {
                serialize_size += message.computeStringSize(fieldNumber: 3)
            }
            serialize_size += unknownFields.serializedSize()
            memoizedSerializedSize = serialize_size
            return serialize_size
        }
        public class func getBuilder() -> Events.Error.Builder {
            return Events.Error.classBuilder() as! Events.Error.Builder
        }
        public func getBuilder() -> Events.Error.Builder {
            return classBuilder() as! Events.Error.Builder
        }
        override public class func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Events.Error.Builder()
        }
        override public func classBuilder() -> ProtocolBuffersMessageBuilder {
            return Events.Error.Builder()
        }
        public func toBuilder() throws -> Events.Error.Builder {
            return try Events.Error.builderWithPrototype(prototype:self)
        }
        public class func builderWithPrototype(prototype:Events.Error) throws -> Events.Error.Builder {
            return try Events.Error.Builder().mergeFrom(other:prototype)
        }
        override public func encode() throws -> Dictionary<String,Any> {
            guard isInitialized() else {
                throw ProtocolBuffersError.invalidProtocolBuffer("Uninitialized Message")
            }

            var jsonMap:Dictionary<String,Any> = Dictionary<String,Any>()
            if hasSource {
                jsonMap["source"] = source
            }
            if hasCode {
                jsonMap["code"] = Int(code)
            }
            if hasMessage {
                jsonMap["message"] = message
            }
            return jsonMap
        }
        override class public func decode(jsonMap:Dictionary<String,Any>) throws -> Events.Error {
            return try Events.Error.Builder.decodeToBuilder(jsonMap:jsonMap).build()
        }
        override class public func fromJSON(data:Data) throws -> Events.Error {
            return try Events.Error.Builder.fromJSONToBuilder(data:data).build()
        }
        override public func getDescription(indent:String) throws -> String {
            var output = ""
            if hasSource {
                output += "\(indent) source: \(source) \n"
            }
            if hasCode {
                output += "\(indent) code: \(code) \n"
            }
            if hasMessage {
                output += "\(indent) message: \(message) \n"
            }
            output += unknownFields.getDescription(indent: indent)
            return output
        }
        override public var hashValue:Int {
            get {
                var hashCode:Int = 7
                if hasSource {
                    hashCode = (hashCode &* 31) &+ source.hashValue
                }
                if hasCode {
                    hashCode = (hashCode &* 31) &+ code.hashValue
                }
                if hasMessage {
                    hashCode = (hashCode &* 31) &+ message.hashValue
                }
                hashCode = (hashCode &* 31) &+  unknownFields.hashValue
                return hashCode
            }
        }


        //Meta information declaration start

        override public class func className() -> String {
            return "Events.Error"
        }
        override public func className() -> String {
            return "Events.Error"
        }
        //Meta information declaration end

        final public class Builder : GeneratedMessageBuilder {
            fileprivate var builderResult:Events.Error = Events.Error()
            public func getMessage() -> Events.Error {
                return builderResult
            }

            required override public init () {
                super.init()
            }
            //// Source of the error. This may or may not be the same as the Origin in the envelope.
            public var source:String {
                get {
                    return builderResult.source
                }
                set (value) {
                    builderResult.hasSource = true
                    builderResult.source = value
                }
            }
            public var hasSource:Bool {
                get {
                    return builderResult.hasSource
                }
            }
            @discardableResult
            public func setSource(_ value:String) -> Events.Error.Builder {
                self.source = value
                return self
            }
            @discardableResult
            public func clearSource() -> Events.Error.Builder{
                builderResult.hasSource = false
                builderResult.source = nil
                return self
            }
            //// Numeric error code. This is provided for programmatic responses to the error.
            public var code:Int32 {
                get {
                    return builderResult.code
                }
                set (value) {
                    builderResult.hasCode = true
                    builderResult.code = value
                }
            }
            public var hasCode:Bool {
                get {
                    return builderResult.hasCode
                }
            }
            @discardableResult
            public func setCode(_ value:Int32) -> Events.Error.Builder {
                self.code = value
                return self
            }
            @discardableResult
            public func clearCode() -> Events.Error.Builder{
                builderResult.hasCode = false
                builderResult.code = nil
                return self
            }
            //// Error description (preferably human-readable).
            public var message:String {
                get {
                    return builderResult.message
                }
                set (value) {
                    builderResult.hasMessage = true
                    builderResult.message = value
                }
            }
            public var hasMessage:Bool {
                get {
                    return builderResult.hasMessage
                }
            }
            @discardableResult
            public func setMessage(_ value:String) -> Events.Error.Builder {
                self.message = value
                return self
            }
            @discardableResult
            public func clearMessage() -> Events.Error.Builder{
                builderResult.hasMessage = false
                builderResult.message = nil
                return self
            }
            override public var internalGetResult:GeneratedMessage {
                get {
                    return builderResult
                }
            }
            @discardableResult
            override public func clear() -> Events.Error.Builder {
                builderResult = Events.Error()
                return self
            }
            override public func clone() throws -> Events.Error.Builder {
                return try Events.Error.builderWithPrototype(prototype:builderResult)
            }
            override public func build() throws -> Events.Error {
                try checkInitialized()
                return buildPartial()
            }
            public func buildPartial() -> Events.Error {
                let returnMe:Events.Error = builderResult
                return returnMe
            }
            @discardableResult
            public func mergeFrom(other:Events.Error) throws -> Events.Error.Builder {
                if other == Events.Error() {
                    return self
                }
                if other.hasSource {
                    source = other.source
                }
                if other.hasCode {
                    code = other.code
                }
                if other.hasMessage {
                    message = other.message
                }
                try merge(unknownField: other.unknownFields)
                return self
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream) throws -> Events.Error.Builder {
                return try mergeFrom(codedInputStream: codedInputStream, extensionRegistry:ExtensionRegistry())
            }
            @discardableResult
            override public func mergeFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Events.Error.Builder {
                let unknownFieldsBuilder:UnknownFieldSet.Builder = try UnknownFieldSet.builderWithUnknownFields(copyFrom:self.unknownFields)
                while (true) {
                    let protobufTag = try codedInputStream.readTag()
                    switch protobufTag {
                    case 0: 
                        self.unknownFields = try unknownFieldsBuilder.build()
                        return self

                    case 10:
                        source = try codedInputStream.readString()

                    case 16:
                        code = try codedInputStream.readInt32()

                    case 26:
                        message = try codedInputStream.readString()

                    default:
                        if (!(try parse(codedInputStream:codedInputStream, unknownFields:unknownFieldsBuilder, extensionRegistry:extensionRegistry, tag:protobufTag))) {
                            unknownFields = try unknownFieldsBuilder.build()
                            return self
                        }
                    }
                }
            }
            class override public func decodeToBuilder(jsonMap:Dictionary<String,Any>) throws -> Events.Error.Builder {
                let resultDecodedBuilder = Events.Error.Builder()
                if let jsonValueSource = jsonMap["source"] as? String {
                    resultDecodedBuilder.source = jsonValueSource
                }
                if let jsonValueCode = jsonMap["code"] as? Int {
                    resultDecodedBuilder.code = Int32(jsonValueCode)
                } else if let jsonValueCode = jsonMap["code"] as? String {
                    resultDecodedBuilder.code = Int32(jsonValueCode)!
                }
                if let jsonValueMessage = jsonMap["message"] as? String {
                    resultDecodedBuilder.message = jsonValueMessage
                }
                return resultDecodedBuilder
            }
            override class public func fromJSONToBuilder(data:Data) throws -> Events.Error.Builder {
                let jsonData = try JSONSerialization.jsonObject(with:data, options: JSONSerialization.ReadingOptions(rawValue: 0))
                guard let jsDataCast = jsonData as? Dictionary<String,Any> else {
                  throw ProtocolBuffersError.invalidProtocolBuffer("Invalid JSON data")
                }
                return try Events.Error.Builder.decodeToBuilder(jsonMap:jsDataCast)
            }
        }

    }

}
extension Events.Error: GeneratedMessageProtocol {
    public class func parseArrayDelimitedFrom(inputStream: InputStream) throws -> Array<Events.Error> {
        var mergedArray = Array<Events.Error>()
        while let value = try parseDelimitedFrom(inputStream: inputStream) {
          mergedArray.append(value)
        }
        return mergedArray
    }
    public class func parseDelimitedFrom(inputStream: InputStream) throws -> Events.Error? {
        return try Events.Error.Builder().mergeDelimitedFrom(inputStream: inputStream)?.build()
    }
    public class func parseFrom(data: Data) throws -> Events.Error {
        return try Events.Error.Builder().mergeFrom(data: data, extensionRegistry:Events.ErrorRoot.default.extensionRegistry).build()
    }
    public class func parseFrom(data: Data, extensionRegistry:ExtensionRegistry) throws -> Events.Error {
        return try Events.Error.Builder().mergeFrom(data: data, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(inputStream: InputStream) throws -> Events.Error {
        return try Events.Error.Builder().mergeFrom(inputStream: inputStream).build()
    }
    public class func parseFrom(inputStream: InputStream, extensionRegistry:ExtensionRegistry) throws -> Events.Error {
        return try Events.Error.Builder().mergeFrom(inputStream: inputStream, extensionRegistry:extensionRegistry).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream) throws -> Events.Error {
        return try Events.Error.Builder().mergeFrom(codedInputStream: codedInputStream).build()
    }
    public class func parseFrom(codedInputStream: CodedInputStream, extensionRegistry:ExtensionRegistry) throws -> Events.Error {
        return try Events.Error.Builder().mergeFrom(codedInputStream: codedInputStream, extensionRegistry:extensionRegistry).build()
    }
    public subscript(key: String) -> Any? {
        switch key {
        case "source": return self.source
        case "code": return self.code
        case "message": return self.message
        default: return nil
        }
    }
}
extension Events.Error.Builder: GeneratedMessageBuilderProtocol {
    public typealias GeneratedMessageType = Events.Error
    public subscript(key: String) -> Any? {
        get { 
            switch key {
            case "source": return self.source
            case "code": return self.code
            case "message": return self.message
            default: return nil
            }
        }
        set (newSubscriptValue) { 
            switch key {
            case "source":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.source = newSubscriptValue
            case "code":
                guard let newSubscriptValue = newSubscriptValue as? Int32 else {
                    return
                }
                self.code = newSubscriptValue
            case "message":
                guard let newSubscriptValue = newSubscriptValue as? String else {
                    return
                }
                self.message = newSubscriptValue
            default: return
            }
        }
    }
}

// @@protoc_insertion_point(global_scope)
