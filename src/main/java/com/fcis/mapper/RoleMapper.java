package com.fcis.mapper;

import com.fcis.model.Role;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface RoleMapper {
    List<Role> findAllRole(@Param("user_id") Integer user_id);
}
