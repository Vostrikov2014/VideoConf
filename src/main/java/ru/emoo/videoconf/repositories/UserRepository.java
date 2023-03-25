package ru.emoo.videoconf.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.emoo.videoconf.models.User;

public interface UserRepository extends JpaRepository<User, Long> {
    User findByEmail(String email);
}
