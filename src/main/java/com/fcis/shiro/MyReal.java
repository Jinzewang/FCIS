package com.fcis.shiro;

import com.fcis.mapper.UserMapper;
import com.fcis.model.Role;
import com.fcis.model.User;
import org.apache.shiro.authc.*;
import org.apache.shiro.authc.credential.HashedCredentialsMatcher;
import org.apache.shiro.authz.AuthorizationInfo;
import org.apache.shiro.authz.SimpleAuthorizationInfo;
import org.apache.shiro.crypto.hash.Md5Hash;
import org.apache.shiro.crypto.hash.SimpleHash;
import org.apache.shiro.realm.AuthorizingRealm;
import org.apache.shiro.subject.PrincipalCollection;
import org.apache.shiro.util.ByteSource;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class MyReal extends AuthorizingRealm {
    @Autowired
    private UserMapper userDao;
    String pass;

    /*
     * 授权
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Object principal = principalCollection.getPrimaryPrincipal();//获取登录的登录信息
        Set<String> roles = new HashSet<String>();
        User user = userDao.findByUsername(principal.toString());
        List<Role> allroles = userDao.findUserRole(user.getId());//得到用户角色
        for (Role role : allroles)
            roles.add(role.getRole_type());
        /*if("admin".equals(userRole)){               //两个if根据判断赋予登录用户权限
            info.addRole("admin");
        }
        if("user".equals(principal)){
            info.addRole("list");
        }*/
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
        return info;
    }

    /*
     * 用户验证
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //1. token 中获取登录的 username! 注意不需要获取password.
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        //2. 利用 username 查询数据库得到用户的信息.
        User user=userDao.findByUsername(username);
        if(user.getPassword()!=null){
            pass=user.getPassword();
        }else {
            throw new UnknownAccountException("用户不存在或密码错误");
        }
        String credentials = pass; //密码
        Object principal = username;// 认证的实体信息
        //3.设置盐值 ，（加密的调料，让加密出来的东西更具安全性，一般是通过数据库查询出来的。 简单的说，就是把密码根据特定的东西而进行动态加密，如果别人不知道你的盐值，就解不出你的密码）
        String source = "jinzewangshinibaba";
        ByteSource credentialsSalt = new Md5Hash(source);//盐值


        //当前 Realm 的name
        String realmName = getName();
        //返回值实例化
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(principal
                , credentials, credentialsSalt, realmName);
        return info;
    }

    //init-method 配置.
    public void setCredentialMatcher(){
        HashedCredentialsMatcher credentialsMatcher = new HashedCredentialsMatcher();
        credentialsMatcher.setHashAlgorithmName("MD5");//MD5算法加密
        credentialsMatcher.setHashIterations(1024);//1024次循环加密
        setCredentialsMatcher(credentialsMatcher);
    }

    //用来测试的算出密码password盐值加密后的结果，下面方法用于新增用户添加到数据库操作的，我这里就直接用main获得，直接数据库添加了，省时间
    /*public static void main(String[] args) {
        String saltSource = "abcdef";
        String hashAlgorithmName = "MD5";
        String credentials = "passwor";
        Object salt = new Md5Hash(saltSource);
        int hashIterations = 1024;
        Object result = new SimpleHash(hashAlgorithmName, credentials, salt, hashIterations);
        System.out.println(result);
    }*/
}
