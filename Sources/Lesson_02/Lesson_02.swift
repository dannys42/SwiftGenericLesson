import Foundation

/// Notification center
/// Events with data
public class Lesson_02 {
    
    // Setup
    let notificationCenter = NotificationCenter.default
    
    let myEvent = Notification.Name("My Event")
    struct MyEventData {
        let someString: String
        let someNumber: Int
    }
    
    public func publishing() {
        let myEventData = MyEventData(someString: "Hello World", someNumber: 42)
        
        // func post(name aName: NSNotification.Name, object anObject: Any?)
        notificationCenter.post(name: myEvent, object: myEventData)
    }
    
    public func subscribing() {
        // func addObserver(forName name: NSNotification.Name?,
        //                  object obj: Any?,
        //                  queue: OperationQueue?,
        //                  using block: @escaping (Notification) -> Void
        //                 ) -> NSObjectProtocol
        notificationCenter.addObserver(forName: myEvent, object: nil, queue: nil) { notification in
            print("Received a notification named: \(notification.name.rawValue)")
            
            // notification.object: Any?
            let eventData = notification.object
            
            print("  event data: \(eventData)")
        }

    }
    
    /*
        Output:
     
        Received a notification named: My Event
          event data: Optional(Lesson_02.Lesson_02.MyEventData(someString: "Hello World", someNumber: 42))

     */

}
