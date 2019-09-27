package edu.hubu.learn.dao;

import org.springframework.data.jpa.repository.JpaRepository;

import edu.hubu.learn.entity.Player;

public interface PlayerDao extends JpaRepository<Player, Long> {

}