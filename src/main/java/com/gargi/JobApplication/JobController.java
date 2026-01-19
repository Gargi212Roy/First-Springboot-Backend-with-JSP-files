package com.gargi.JobApplication;

import com.gargi.JobApplication.model.JobPost;
import com.gargi.JobApplication.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

import java.util.List;

@Controller
public class JobController {

    @Autowired
    private JobService jobService;

    @GetMapping({"/", "home"})
    public String home() {
        return "home";
    }

    @GetMapping("addjob")
    public String addJob() {
        return "addjob";
    }

    @PostMapping("handleForm")
    public String handleForm(JobPost jobPost) {
        jobService.addJob(jobPost);
        return "success";
    }

    @GetMapping("viewjobs")
    public String viewJobs(Model model) {
        List <JobPost> jobs = jobService.getJobs();
        model.addAttribute("jobPosts",jobs);
        return "viewalljobs";
    }
}
