package com.SpringBoot.springbootRef.Registration;



        public record RegisterRequest(Integer Id,String username, String password, Integer phonenumber, String email, String profile, String csvData, String verified) {

}