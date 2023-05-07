package com.example.server.api.repository;

import com.example.server.api.entity.Ticket;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface TicketRepository extends JpaRepository<Ticket, Long> {
    @Query("select ti from Ticket as ti where ti.user.username = :username")
    List<Ticket> getByUsername(@Param("username") String username);

    Ticket findFirstByOrderByMaVeDesc();
}
