package com.example.server.api.repository;

import com.example.server.api.entity.Movie;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Set;


@Repository
public interface MovieRepository extends JpaRepository<Movie, Long> {
    @Query("select distinct mv " +
            " from Movie as mv " +
            " join Schedule as scd on scd.movie.id = mv.id " +
            " join Cinema  as cm on scd.room.id = cm.id " +
            " where cm.id = ?1")
    Set<Movie> getByCinemaId(long id);
}
