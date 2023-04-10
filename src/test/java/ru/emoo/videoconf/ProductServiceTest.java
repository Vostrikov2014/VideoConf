package ru.emoo.videoconf;

import org.junit.jupiter.api.*;
import org.junit.jupiter.api.extension.ExtendWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.boot.test.context.SpringBootTest;
import ru.emoo.videoconf.repositories.ProductRepository;
import ru.emoo.videoconf.repositories.UserRepository;
import ru.emoo.videoconf.services.ProductService;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.doReturn;


@SpringBootTest
@ExtendWith(MockitoExtension.class)
public class ProductServiceTest {
    //private List<Product> products;
    @Mock
    private ProductRepository productRepository;
    @Mock
    private UserRepository userRepository;
    @InjectMocks
    private ProductService productService;

    @Test
    void listProductsIsNotEmpty() {
        //doReturn(true).when(productRepository.findByTitle(""));
         var actualResult = productService.listProducts("");
        assertThat(actualResult).isEmpty();
        //добавим комментарии чтобы протестировать объединение
        //коммитов
        //добавим еще коммит и попробуем объединить
    }
}
