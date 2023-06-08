package com.example.server.api.repository;

import com.example.server.api.entity.Cinema;
import com.example.server.api.entity.Theater;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface CinemaRepository extends JpaRepository<Cinema, Long> {
//    @Query("select distinct cnm " +
//            "from Cinema cnm, Room ro, Schedule sc " +
//            "where sc.ngayGioiChieu >= current_date " +
//            "and sc.movie.id = ?1 " +
//            "and sc.room.id = ro.id " +
//            "and ro.cinema.id = cnm.id")
    @Query("select distinct cnm " +
            "from Cinema cnm, Room ro, Schedule sc " +
            "where sc.ngayGioiChieu >= current_date " +
            "and sc.movie.id = ?1 " +
            "and sc.room.id = ro.id " +
            "and ro.cinema.id = cnm.id " +
            "and cnm.maHeThongRap.id = ?2")
    List<Cinema> findByMovieId(long movieId, long theaterId);
}
