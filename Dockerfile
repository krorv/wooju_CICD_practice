# 1. 포장지 준비: 자바 17이 깔려있는 아주 가벼운 빈 상자(리눅스)를 가져옵니다.
FROM eclipse-temurin:17-jdk-alpine

# 2. 내용물 넣기: 깃허브 액션 로봇이 조립해둔 빵빵한 실행 파일(.jar)을 상자 안으로 복사해서 'app.jar'라는 이름으로 넣습니다.
COPY build/libs/*.jar app.jar

# 3. 실행 스위치 달기: 이 상자가 열리면(실행되면) 자동으로 "java -jar /app.jar" 명령어를 쳐서 스프링 부트를 켜라고 지시합니다.
ENTRYPOINT ["java","-jar","/app.jar"]