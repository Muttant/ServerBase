package com.example.server.security.task;

import com.example.server.security.config.JwtTokenBlacklist;
import com.example.server.security.repository.VerificationCodeRepository;
import lombok.RequiredArgsConstructor;
import org.springframework.context.annotation.Bean;
import org.springframework.scheduling.TaskScheduler;
import org.springframework.scheduling.annotation.EnableScheduling;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.scheduling.concurrent.ThreadPoolTaskScheduler;
import org.springframework.stereotype.Component;

import javax.transaction.Transactional;

@Component
@EnableScheduling
@RequiredArgsConstructor
public class ScheduleTask {
    private final VerificationCodeRepository verificationCodeRepository;
    private final JwtTokenBlacklist tokenBlacklist;

    @Transactional
    @Scheduled(fixedRateString = "${schedule-config.auto-delete-verification-code: 3600000}")
    public void AutoDeleteVerificationCode() {
        verificationCodeRepository.removeVerificationCodeExpired();
    }

    @Bean
    public TaskScheduler taskScheduler() {
        ThreadPoolTaskScheduler scheduler = new ThreadPoolTaskScheduler();

        scheduler.setPoolSize(2);
        scheduler.setThreadNamePrefix("scheduled-task-");
        scheduler.setDaemon(true);

        return scheduler;
    }

    @Scheduled(fixedRateString = "${schedule-config.auto-delete-black-list: 43200000l}")
    public void cleanupTokenBlacklist() {
        tokenBlacklist.removeExpiredTokens();
    }
}
