import Foundation

extension Date {
  
    func formattedDate() -> String {
        let formatter = DateFormatter()
        formatter.dateFormat = "EEEE d, MMMM"
        return formatter.string(from: self)
    }
    
   
    func formattedTime() -> String {
        let timeFormatter = DateFormatter()
        timeFormatter.dateFormat = "h:mm a"
        return timeFormatter.string(from: self)
    }
}
