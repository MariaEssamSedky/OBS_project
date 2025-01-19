// package com.example.library_management_maria.service;
// import java.util.List;
// import java.util.Optional;
// import org.springframework.beans.factory.annotation.Autowired;
// import org.springframework.stereotype.Service;
// import com.example.library_management_maria.entity.User;
// import com.example.library_management_maria.repository.UserRepository;
// @Service
// public class UserService {
//     @Autowired
//     private UserRepository userRepository;
//     public List<User> getAllUsers() {
//         return userRepository.findAll();
//     }
//     public User getUserById(Long id) {
//         return userRepository.findById(id)
//             .orElseThrow(() -> new RuntimeException("User not found with id " + id));
//     }
//     public User saveUser(User user) {
//         return userRepository.save(user);
//     }
//     public void deleteUser(Long id) {
//         userRepository.deleteById(id);
//     }
//     public User login(String username, String rawPassword) {
//         Optional<User> optional = userRepository.findByUsername(username);
//         if (optional.isEmpty()) {
//             throw new RuntimeException("Invalid username or password");
//         }
//         User user = optional.get();
//         if (!user.getPassword().equals(rawPassword)) {
//             throw new RuntimeException("Invalid username or password");
//         }   
//         return user; 
//     }
// }
