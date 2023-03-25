package ru.emoo.videoconf.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import ru.emoo.videoconf.models.Product;

import java.util.List;

public interface ProductRepository extends JpaRepository<Product, Long> {
    List<Product> findByTitle(String title);
}
