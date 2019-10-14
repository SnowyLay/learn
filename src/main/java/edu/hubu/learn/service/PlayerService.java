package edu.hubu.learn.service;

import java.util.List;

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

    public List<Player> getPlayers(){
        return playerDao.findAll();
    }

    public Player addPlayer(Player player){
        return playerDao.save(player);
    }

    public void deletePlayer(Long id){
        playerDao.deleteById(id);
    }

    public void modifyPlayer(Player player){
        playerDao.save(player);
    }
}