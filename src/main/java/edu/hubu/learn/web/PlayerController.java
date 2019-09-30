package edu.hubu.learn.web;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import edu.hubu.learn.entity.Player;
import edu.hubu.learn.service.PlayerService;

@Controller
@RequestMapping("/player")
public class PlayerController {

    @Autowired
    private PlayerService playerService;

    @RequestMapping("/{id}")
    public ModelAndView player(@PathVariable Long id) {
        ModelAndView mav = new ModelAndView();
        Player player = playerService.getPlayer(id);
        mav.addObject("player", player);
        mav.setViewName("player");
        return mav;
    }

    @RequestMapping("/list")
    public ModelAndView player() {
        ModelAndView mav = new ModelAndView();
        List<Player> players=playerService.getPlayers();
        mav.addObject("players", players);
        mav.setViewName("players");
        return mav;
    }
}