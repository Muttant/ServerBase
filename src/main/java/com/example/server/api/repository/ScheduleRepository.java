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

    @Query("select scd " +
            " from Schedule as scd " +
            " join Room as rm on scd.room.id = rm.id" +
            " where scd.movie.id = ?1 and rm.cinema.id = ?2 " +
            "and scd.ngayGioiChieu >= current_date ")
    List<Schedule> getByMovieId(long movieId, long cinemaId);
    @Query("select case when count(scd) > 0 then true else false end from Schedule  as scd where scd.movie.id = ?1")
    boolean hasScheduled(long id);
}
