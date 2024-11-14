



import Foundation

public enum HTTPClientResult {
    case success(Data, HTTPURLResponse)
    case failure(Error)
}

public protocol HTTPClient {
    /// The completion handler can  be invoked in any thread.
    /// Clients are responsible to disptach to appopriate threads, if needed.
    func get(from url: URL, completion: @escaping(HTTPClientResult) -> Void)
}
