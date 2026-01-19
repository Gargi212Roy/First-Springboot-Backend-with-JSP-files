package com.gargi.JobApplication.service;

import com.gargi.JobApplication.model.JobPost;
import com.gargi.JobApplication.repository.JobRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class JobService {

    @Autowired
    private JobRepository jobRepository;
    public void addJob(JobPost jobPost) {
        jobRepository.addJob(jobPost);
    }

    public List<JobPost> getJobs() {
        return jobRepository.getJobs();
    }
}
