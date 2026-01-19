package com.gargi.JobApplication.repository;

import com.gargi.JobApplication.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

@Repository
public class JobRepository {

    List<JobPost> jobs = new ArrayList<>(Arrays.asList(

            new JobPost(101, "Senior Java Backend Developer",
                    "Design, develop, and maintain scalable backend services using Java and Spring ecosystem. Work closely with architects and frontend teams.",
                    4,
                    List.of("Java", "Spring Boot", "Microservices", "Hibernate", "REST APIs", "MySQL")),

            new JobPost(102, "Frontend Engineer (React)",
                    "Build responsive and high-performance user interfaces using React. Collaborate with UX designers and backend developers.",
                    3,
                    List.of("HTML5", "CSS3", "JavaScript", "React", "Redux", "TypeScript")),

            new JobPost(103, "Data Scientist",
                    "Analyze large datasets, build predictive models, and deliver insights using machine learning techniques.",
                    5,
                    List.of("Python", "Machine Learning", "Pandas", "NumPy", "SQL", "Data Visualization")),

            new JobPost(104, "Network Engineer",
                    "Design, configure, and maintain enterprise-level network infrastructure ensuring high availability and security.",
                    6,
                    List.of("Networking", "Cisco", "Routing", "Switching", "Firewall", "TCP/IP")),

            new JobPost(105, "Mobile Application Developer",
                    "Develop and maintain mobile applications for Android and iOS platforms with a focus on performance and usability.",
                    3,
                    List.of("Android", "Kotlin", "iOS", "Swift", "REST APIs", "Mobile UI")),

            new JobPost(106, "DevOps Engineer",
                    "Implement CI/CD pipelines, manage cloud infrastructure, and automate deployments for scalable applications.",
                    4,
                    List.of("AWS", "Docker", "Kubernetes", "Jenkins", "Linux", "Terraform")),

            new JobPost(107, "Full Stack Developer",
                    "Work on both frontend and backend components to deliver end-to-end web solutions.",
                    4,
                    List.of("Java", "Spring Boot", "React", "JavaScript", "SQL", "REST APIs")),

            new JobPost(108, "Cyber Security Analyst",
                    "Monitor security threats, conduct vulnerability assessments, and ensure compliance with security standards.",
                    5,
                    List.of("Cyber Security", "SIEM", "Vulnerability Assessment", "Incident Response", "Network Security")),

            new JobPost(109, "Cloud Solutions Architect",
                    "Design and implement cloud-native solutions ensuring scalability, security, and cost optimization.",
                    7,
                    List.of("AWS", "Azure", "Cloud Architecture", "Microservices", "DevOps")),

            new JobPost(110, "QA Automation Engineer",
                    "Develop automated test scripts and ensure software quality through continuous testing practices.",
                    3,
                    List.of("Selenium", "Java", "TestNG", "Automation Testing", "API Testing")),

            new JobPost(111, "AI / Machine Learning Engineer",
                    "Build, train, and deploy machine learning models into production environments.",
                    4,
                    List.of("Python", "TensorFlow", "PyTorch", "Deep Learning", "Model Deployment")),

            new JobPost(112, "Product Manager - Technology",
                    "Define product roadmap, gather requirements, and work with engineering teams to deliver impactful products.",
                    6,
                    List.of("Product Management", "Agile", "JIRA", "Stakeholder Management", "Roadmapping"))
    ));


    public List<JobPost> getJobs() {
        return jobs;
    }

    public void addJob(JobPost jobPost) {
        jobs.add(jobPost);
        System.out.println(jobs);
    }
}
