package edu.hubu.learn.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import edu.hubu.learn.dao.PlayerDao;
import edu.hubu.learn.entity.Player;

@Service
public class PlayerService {

    @Autowired
    private PlayerDao playerDao;

    public Player getPlayer(Long id) {
        return playerDao.findById(id).get();
    }
}