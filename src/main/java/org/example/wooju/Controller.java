package org.example.wooju;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
class Controller {
    @GetMapping("/")
    public String hello() {
        return "Hello, CD Test v444444"; // 나중에 v2로 바꿔서 테스트할 부분입니다.
    }
}