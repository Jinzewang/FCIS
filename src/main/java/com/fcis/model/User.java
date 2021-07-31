package com.fcis.model;

public class User {
    private String id;
    private String account; //用户账号
    private String password; //用户密码
    private String username; //用户姓名
    private String user_sex; //性别
    private String identifyCard; //身份证号
    private String user_phone; //联系电话
    private String email; //邮箱
    private String union; //所属工会
    private byte user_isdelete; //用户是否被删除

    @Override
    public String toString() {
        return "User{" +
                "id='" + id + '\'' +
                ", account='" + account + '\'' +
                ", password='" + password + '\'' +
                ", username='" + username + '\'' +
                ", user_sex='" + user_sex + '\'' +
                ", identifyCard='" + identifyCard + '\'' +
                ", user_phone='" + user_phone + '\'' +
                ", email='" + email + '\'' +
                ", union='" + union + '\'' +
                '}';
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getAccount() {
        return account;
    }

    public void setAccount(String account) {
        this.account = account;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getUser_sex() {
        return user_sex;
    }

    public void setUser_sex(String user_sex) {
        this.user_sex = user_sex;
    }

    public String getIdentifyCard() {
        return identifyCard;
    }

    public void setIdentifyCard(String identifyCard) {
        this.identifyCard = identifyCard;
    }

    public String getUser_phone() {
        return user_phone;
    }

    public void setUser_phone(String user_phone) {
        this.user_phone = user_phone;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getUnion() {
        return union;
    }

    public void setUnion(String union) {
        this.union = union;
    }

    public byte getUser_isdelete() {
        return user_isdelete;
    }

    public void setUser_isdelete(byte user_isdelete) {
        this.user_isdelete = user_isdelete;
    }
}
