import SwiftUI
import Foundation

struct ContentView: View {
    @State private var timeRemaining = 1500 // 25 minutes in seconds
    @State private var timer: Timer? = nil
    @State private var isRunning = false

    var body: some View {
        VStack {
            Text(formatTime(timeRemaining))
                .font(.largeTitle)
                .padding()

            HStack {
                Button(action: startTimer) {
                    Text(isRunning ? "Pause" : "Start")
                }
                .padding()
                .disabled(isRunning && timer == nil)
                
                Button(action: stopTimer) {
                    Text("Stop")
                }
                .padding()
            }
        }
        .frame(width: 250, height: 150)
        .onAppear {
            stopTimer()
        }
    }

    func startTimer() {
        if isRunning { return }
        isRunning = true
        unmuteAudio()
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { _ in
            if timeRemaining > 0 {
                timeRemaining -= 1
            } else {
                stopTimer()
                muteAudio()
            }
        }
    }

    func stopTimer() {
        timer?.invalidate()
        timer = nil
        isRunning = false
        timeRemaining = 1500 // Reset to 25 minutes
    }

    func formatTime(_ seconds: Int) -> String {
        let minutes = seconds / 60
        let seconds = seconds % 60
        return String(format: "%02d:%02d", minutes, seconds)
    }

    func muteAudio() {
        let appleScript = """
        set volume output muted true
        """
        var error: NSDictionary?
        if let scriptObject = NSAppleScript(source: appleScript) {
            scriptObject.executeAndReturnError(&error)
        }
    }
    
    func unmuteAudio() {
          let appleScript = """
          set volume output muted false
          """
          var error: NSDictionary?
          if let scriptObject = NSAppleScript(source: appleScript) {
              scriptObject.executeAndReturnError(&error)
          }
      }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
