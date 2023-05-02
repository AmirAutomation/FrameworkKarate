package rest;

import com.intuit.karate.junit5.Karate;

public class KarateRun {

    @Karate.Test
    Karate Getauser(){
        return  Karate.run("classpath:rest").tags("@GetUser");
    }
    @Karate.Test
    Karate RegisterSuccessful(){
        return  Karate.run("classpath:rest").tags("@RegisterSuccessful");
    }
    @Karate.Test
    Karate RegisterFailed(){
        return  Karate.run("classpath:rest").tags("@RegisterFailed");
    }

    @Karate.Test
    Karate LoginSucessful(){
        return  Karate.run("classpath:rest").tags("@LoginSucessful");
    }

    @Karate.Test
    Karate LoginFailed(){
        return  Karate.run("classpath:rest").tags("@LoginFailed");
    }

}
