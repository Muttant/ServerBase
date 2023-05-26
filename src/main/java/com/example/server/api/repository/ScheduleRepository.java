package com.example.server.api.repository;

import com.example.server.api.entity.Schedule;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ScheduleRepository extends JpaRepository<Schedule, Long> {
    @Query("select sc from Schedule sc, Room ro where sc.ngayGioiChieu >= current_date and sc.movie.id = ?1 and sc.room.id = ro.id and ro.cinema.id = ?2")
    List<Schedule> findByMovieIdAndCinemaId(long movieId, long cinemaId);

    @Query("select scd from Schedule as scd where scd.movie.id = ?1")
    List<Schedule> getByMovieId(long id);
}
