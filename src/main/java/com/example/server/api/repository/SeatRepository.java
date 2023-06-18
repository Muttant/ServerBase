package com.example.server.api.repository;

import com.example.server.api.dto.response.SeatResponseDto;
import com.example.server.api.entity.Seat;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface SeatRepository extends JpaRepository<Seat, Long> {

//    @Query("select new com.example.server.api.dto.response.SeatResponseDto(se, tk.username) " +
//            "from Seat as se " +
//            "left join Ticket as ti on se.id = ti.seat.id " +
//            "left join User as tk on tk.id = ti.user.id " +
//            "left join Schedule as sc on se.maRap.id = sc.room.id " +
//            "where sc.id = ?1")

    @Query("select new com.example.server.api.dto.response.SeatResponseDto(se, us.username) " +
            " from Seat as se " +
            " join Schedule as scd on scd.room.id = se.maRap.id " +
            " left outer join Ticket as tk on tk.seat.id = se.id and tk.schedule.id = scd.id " +
            " left outer join User as us on tk.user.id = us.id" +
            " where scd .id = ?1 ")
    List<SeatResponseDto> getByMaLichChieu(long maLichChieu);
}
