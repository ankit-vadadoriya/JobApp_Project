package com.ankit.JobApp.repo;

import com.ankit.JobApp.model.JobPost;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
@Repository
public class JobRepo {
    List<JobPost> jobs = new ArrayList<>(Arrays.asList(
            new JobPost(1, "Java Developer", "Must have good experience in core java", 2, Arrays.asList("Java", "Spring Boot")),
            new JobPost(2, "Frontend Developer", "Experience in building process", 3, Arrays.asList("HTML", "CSS", "JavaScript")),
            new JobPost(3, "Data Scientist", "Strong background in machine learning", 1, Arrays.asList("Python", "TensorFlow")),
            new JobPost(4, "Network Engineer", "Design and implement in computer network", 2, Arrays.asList("Cisco", "Networking")),
            new JobPost(5, "Mobile App Developer", "Experience in mobile app development", 3, Arrays.asList("Kotlin", "Flutter"))
    ));
    public List<JobPost> getAllJobs(){
        return jobs;
    }

    public void addJob(JobPost job){
        jobs.add(job);
        System.out.println(jobs);
    }

}
