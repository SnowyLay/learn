package edu.hubu.learn.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Example;
import org.springframework.data.domain.ExampleMatcher;
import org.springframework.data.domain.Sort;
import org.springframework.data.domain.Sort.Direction;
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
        return playerDao.findAll(new Sort(Direction.DESC, "id"));
    }

    public List<Player> searchPlayers(String keyword) {
        Player player = new Player();
        player.setName(keyword);
        ExampleMatcher matcher = ExampleMatcher.matching().withMatcher("name", match->match.contains());
        Example<Player> example = Example.of(player, matcher);
        Sort sort = new Sort(Direction.DESC, "id");
        return playerDao.findAll(example, sort);
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