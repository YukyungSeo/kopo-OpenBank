package kr.ac.kopo.gson;
import com.google.gson.Gson;

import kr.ac.kopo.vo.MemberVO;

public class GsonTest {
   
   public static void main(String[] args) {
      
      MemberVO member = new MemberVO("id", "1234");
      
      Gson gson = new Gson();
      
      String json = gson.toJson(member);
      
      System.out.println("json :"  + json);
      
      MemberVO hanc = gson.fromJson(json, MemberVO.class);
      System.out.println("java : " + hanc);
   }
   
   

}