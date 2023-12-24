//
//  TimerViewModel.swift
//  voiceMemo
//

import Foundation
import UIKit

class TimerViewModel: ObservableObject {
    @Published var isDisplaySetTimeView: Bool
    @Published var time: Time
    @Published var timer: Timer?
    @Published var timeRemaining: Int
    @Published var isPaused: Bool
    var notificationService: NotificationService
    
    init(isDisplaySetTimeView: Bool = true,
         time: Time = .init(hours: 0, minutes: 0, seconds: 0),
         timer: Timer? = nil,
         timeRemaining: Int = 0,
         isPaused: Bool = false,
         notificationService: NotificationService = .init()) {
        self.isDisplaySetTimeView = isDisplaySetTimeView
        self.time = time
        self.timer = timer
        self.timeRemaining = timeRemaining
        self.isPaused = isPaused
        self.notificationService = notificationService
    }
}

extension TimerViewModel {
    func settingBtnTapped() {
        isDisplaySetTimeView = false
        timeRemaining = time.convertedSeconds
        // TODO: - 타이머 시작 메서드 호출
        startTimer()
    }
    
    func cancelBtnTapped() {
        // TODO: - 타이머 종료 메서드 호출
        stopTimer()
        isDisplaySetTimeView = true
    }
    
    func pauseOrRestartBtnTapped() {
        if isPaused {
            // TODO: - 타이머 시작 메서드 호출
            startTimer()
        } else {
            timer?.invalidate()
            timer = nil
        }
        isPaused.toggle()
    }
}

private extension TimerViewModel {
    func startTimer() {
        guard timer == nil else { return }
        
        var backgroundTaskId: UIBackgroundTaskIdentifier?
        backgroundTaskId = UIApplication.shared.beginBackgroundTask {
            if let task = backgroundTaskId {
                UIApplication.shared.endBackgroundTask(task)
                backgroundTaskId = .invalid
            }
        }
        
        
        timer = Timer.scheduledTimer(
        withTimeInterval: 1,
        repeats: true) { _ in
            if self.timeRemaining > 0 {
                self.timeRemaining -= 1
            } else {
                // TODO: - 타이머 종료 메서드 호출
                self.stopTimer()
                self.notificationService.sendNotification()
                
                
                if let task = backgroundTaskId {
                    UIApplication.shared.endBackgroundTask(task)
                    backgroundTaskId = .invalid
                }
            }
        }
    }
    
    func stopTimer() {
        timer?.invalidate()
        timer = nil
    }
}
