import XCTest
@testable import CDKeychain

final class CDKeychainTests: XCTestCase {
   
    var chain: TaoKeychain?
    
    override func setUpWithError() throws {
        chain = TaoKeychain(serviceIdentifier: Bundle.main.bundleIdentifier ?? "com.chain")
    }
    
    override func tearDownWithError() throws {
        chain = nil
    }
    
    
    func testChain(){
        let testString = "testString"
        let testData = testString.data(using: .utf8)
        let isSuccess = chain?.setData(value: testData, forKey: testString)
        
        if isSuccess == false {
            XCTAssertTrue(false)
            return
        }
        
        let foundUUIDData = chain?.dataFor(keyName: testString)
        if  let foundUUIDData = foundUUIDData {
            let foundUUID = String(data: foundUUIDData, encoding: .utf8)
            
            XCTAssertEqual(testString, foundUUID)
            
            return
        }
        
//        XCTAssertTrue(false)
        XCTAssertNotNil(foundUUIDData)
        
    }
    
    
}
