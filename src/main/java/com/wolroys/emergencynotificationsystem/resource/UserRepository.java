package com.wolroys.emergencynotificationsystem.resource;

import com.wolroys.emergencynotificationsystem.entity.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UserRepository extends JpaRepository<User, Long> {
}
