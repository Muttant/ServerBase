package com.example.server.api.repository;

import com.example.server.api.dto.response.MovieSaleByWeekResponseDto;
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

//    SELECT scd.movie_id, SUM(tk.gia_ve) as 'sum' FROM tbl_ticket as tk
//    JOIN tbl_schedule as scd on tk.ma_lichchieu = scd.id
//    WHERE YEAR(tk.ngay_gio_dat) =2023 AND MONTH(tk.ngay_gio_dat) = 5
//    GROUP BY scd.movie_id
    @Query("select new com.example.server.api.dto.response.MovieSaleByWeekResponseDto(scd.movie, sum(tk.giaVe)) from Ticket as tk " +
            " join Schedule as scd on tk.schedule.id = scd.id " +
            " where year(tk.ngayGioDat) = :YearSelect and month(tk.ngayGioDat) =:MonthSelect " +
            " group by scd.movie ")
    List<MovieSaleByWeekResponseDto> getSaleByWeek(@Param("MonthSelect") Integer month, @Param("YearSelect") Integer year);
}
