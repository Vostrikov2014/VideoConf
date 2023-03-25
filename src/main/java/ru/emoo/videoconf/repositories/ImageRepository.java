package ru.emoo.videoconf.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.emoo.videoconf.models.Image;

public interface ImageRepository extends JpaRepository<Image, Long> {
}
