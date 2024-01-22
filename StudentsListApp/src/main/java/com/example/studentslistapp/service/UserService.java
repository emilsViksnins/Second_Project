package com.example.studentslistapp.service;

import com.example.studentslistapp.domain.User;
import org.springframework.data.domain.Page;

public interface UserService {
    Page<User> getUsers(String name, int page, int size);
}
