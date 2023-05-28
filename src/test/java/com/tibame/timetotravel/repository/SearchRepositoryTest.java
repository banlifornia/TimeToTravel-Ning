package com.tibame.timetotravel.repository;

import com.tibame.timetotravel.view.ViewCompanyRoom;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import java.util.List;

@SpringBootTest
class SearchRepositoryTest {

    @Autowired
    SearchRepository searchRepository;

    @Autowired
    ViewUserOrderDetailRepository viewUserOrderDetailRepository;

    @Test
    public void findAvailableRoomTest() {
        List<ViewCompanyRoom> companies = searchRepository.findCompany("新北市", 1);

        for (ViewCompanyRoom company : companies) {
            System.out.println(company);
        }
    }

    @Test
    public void findRoomStockTest() {
        String start = "2023-05-01";
        String end = "2023-05-05";

        Integer roomStock = searchRepository.findRoomStock(5, start, end);
        System.out.println(roomStock);
    }

    @Test
    public void findRoomRankTest() {
        List<Integer> roomRanks = viewUserOrderDetailRepository.findRoomRank(7);
        System.out.println(roomRanks);
    }
}
