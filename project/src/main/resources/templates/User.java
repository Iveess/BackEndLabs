package com.example.socialnetwork.model;

import javax.persistence.*;
import java.time.LocalDateTime;
import java.util.List;

@Entity
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    private String username;
    private String email;
    private String password;
    private LocalDateTime registrationDate;

    @OneToMany(mappedBy = "user")
    private List<Post> posts;

    // Getters and Setters
}
