import Foundation

/// Notification center
/// Simple events with no data
public class Lesson_01 {
    
    // Setup
    let notificationCenter = NotificationCenter.default
    let myEvent = Notification.Name("My Event")

    public func publishing() {
        // func post(name aName: NSNotification.Name, object anObject: Any?)
        notificationCenter.post(name: myEvent, object: nil)
    }
    
    public func subscribing() {
        
        // func addObserver(forName name: NSNotification.Name?,
        //                  object obj: Any?,
        //                  queue: OperationQueue?,
        //                  using block: @escaping (Notification) -> Void
        //                 ) -> NSObjectProtocol
        notificationCenter.addObserver(forName: myEvent, object: nil, queue: nil) { notification in
            print("Received a notification named: \(notification.name.rawValue)")
        }
        
    }
    

    /*
     Output:
    
     Received a notification named: My Event

     */
    
}
