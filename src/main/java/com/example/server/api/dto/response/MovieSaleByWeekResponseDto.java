package com.example.server.api.dto.response;

import com.example.server.api.entity.Movie;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Getter
@Setter
@AllArgsConstructor
@NoArgsConstructor
public class MovieSaleByWeekResponseDto {
    private MovieResponseDto movie;
    private long sale;

    public MovieSaleByWeekResponseDto(Movie movie, long sale) {
        if (movie != null)
            this.movie = new MovieResponseDto(movie);
        this.sale = sale;
    }
}
