package com.example.server.api.repository;

import com.example.server.api.entity.Theater;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface TheaterRepository extends JpaRepository<Theater, UUID> {
    @Query("select distinct tt from Theater tt, Cinema cnm, Room ro, Schedule sc " +
            "where sc.ngayGioiChieu >= current_date and sc.movie.id = ?1 and sc.room.id = ro.id and ro.cinema.id = cnm.id and cnm.maHeThongRap.id = tt.id")
    List<Theater> findByMovieId(long movieId);
}
