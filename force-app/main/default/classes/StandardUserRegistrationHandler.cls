global class StandardUserRegistrationHandler implements Auth.RegistrationHandler{
    global User createUser(Id portalId, Auth.UserData data) {
       user userdata=[select id,name,email,username from user where email=:data.email limit 1];
       system.debug(userdata);
       return userdata;
    }

    global void updateUser(Id userId, Id portalId, Auth.UserData data) {
       
    }
}