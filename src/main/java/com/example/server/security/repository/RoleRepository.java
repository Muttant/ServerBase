package com.example.server.security.repository;

import com.example.server.security.entity.Role;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

@Repository
public interface RoleRepository extends JpaRepository<Role, Long> {
    Role findByName(String name);

    @Query(value = "select case when (count (r) > 0) then true else false end from Role r where r.id <> :id and r.name = :name")
    Boolean hasName(@Param("id") Long id, @Param("name") String name);
}
