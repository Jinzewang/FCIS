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
     * ��Ȩ
     */
    @Override
    protected AuthorizationInfo doGetAuthorizationInfo(PrincipalCollection principalCollection) {
        Object principal = principalCollection.getPrimaryPrincipal();//��ȡ��¼�ĵ�¼��Ϣ
        Set<String> roles = new HashSet<String>();
        User user = userDao.findByUsername(principal.toString());
        List<Role> allroles = userDao.findUserRole(user.getId());//�õ��û���ɫ
        for (Role role : allroles)
            roles.add(role.getRole_type());
        /*if("admin".equals(userRole)){               //����if�����жϸ����¼�û�Ȩ��
            info.addRole("admin");
        }
        if("user".equals(principal)){
            info.addRole("list");
        }*/
        SimpleAuthorizationInfo info = new SimpleAuthorizationInfo(roles);
        return info;
    }

    /*
     * �û���֤
     */
    @Override
    protected AuthenticationInfo doGetAuthenticationInfo(AuthenticationToken authenticationToken) throws AuthenticationException {
        //1. token �л�ȡ��¼�� username! ע�ⲻ��Ҫ��ȡpassword.
        UsernamePasswordToken token = (UsernamePasswordToken) authenticationToken;
        String username = token.getUsername();
        //2. ���� username ��ѯ���ݿ�õ��û�����Ϣ.
        User user=userDao.findByUsername(username);
        if(user.getPassword()!=null){
            pass=user.getPassword();
        }else {
            throw new UnknownAccountException("�û������ڻ��������");
        }
        String credentials = pass; //����
        Object principal = username;// ��֤��ʵ����Ϣ
        //3.������ֵ �������ܵĵ��ϣ��ü��ܳ����Ķ������߰�ȫ�ԣ�һ����ͨ�����ݿ��ѯ�����ġ� �򵥵�˵�����ǰ���������ض��Ķ��������ж�̬���ܣ�������˲�֪�������ֵ���ͽⲻ��������룩
        String source = "jinzewangshinibaba";
        ByteSource credentialsSalt = new Md5Hash(source);//��ֵ


        //��ǰ Realm ��name
        String realmName = getName();
        //����ֵʵ����
        SimpleAuthenticationInfo info = new SimpleAuthenticationInfo(principal
                , credentials, credentialsSalt, realmName);
        return info;
    }

    //init-method ����.
    public void setCredentialMatcher(){
        HashedCredentialsMatcher credentialsMatcher = new HashedCredentialsMatcher();
        credentialsMatcher.setHashAlgorithmName("MD5");//MD5�㷨����
        credentialsMatcher.setHashIterations(1024);//1024��ѭ������
        setCredentialsMatcher(credentialsMatcher);
    }

    //�������Ե��������password��ֵ���ܺ�Ľ�������淽�����������û���ӵ����ݿ�����ģ��������ֱ����main��ã�ֱ�����ݿ�����ˣ�ʡʱ��
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
