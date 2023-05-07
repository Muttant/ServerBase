package com.example.server.security.entity;

import lombok.AllArgsConstructor;
import lombok.Data;
import org.hibernate.annotations.Type;

import javax.persistence.*;
import java.util.UUID;

@MappedSuperclass
@Data
@AllArgsConstructor
public class BaseObject{
    @Transient
    private static final long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private long id;

    public BaseObject() {

    }

    public BaseObject(BaseObject object) {
        if (object != null){
            this.id = object.getId();
        }
    }
}
