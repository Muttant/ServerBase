package com.example.server.api.repository;

import com.example.server.api.entity.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;


@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {

    @Query("Select distinct mv" +
            " from Movie as mv" +
            " join Schedule as scd on scd.movie.id = mv.id" +
            " join Room  as rm on rm.id = scd.room.id" +
            " where rm.cinema.id = ?1")
    Set<Movie> getByCinemaId(long id);
}
