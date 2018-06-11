package ru.jrintership.TestJRInternship;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
import ru.jrintership.TestJRInternship.repositories.BookRepository;

@RunWith(SpringRunner.class)
@SpringBootTest
public class TestJrInternshipApplicationTests {

	@Mock
	BookRepository bookRepository;

	@Test
	public void contextLoads() {

	}

}
