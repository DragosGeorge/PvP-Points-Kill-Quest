quest pvp_points_kill begin
    state start begin
		when login or levelup with pc.level >= 90 and pc.getqf("level_90_points_mission") == 0 begin
			set_state(level_90_letter)
		end
        when login or levelup with pc.level >= 91 and pc.getqf("level_90_points_mission") == 1 begin
			set_state(level_91_letter)
		end	
        when login or levelup with pc.level >= 92 and pc.getqf("level_91_points_mission") == 1 begin
			set_state(level_92_letter)
		end	
	end
    state level_90_letter begin
		when letter begin
			send_letter("Kill the players.")
		end
		when button or info begin
            say_title("Kill the players.") 
            say("") 
            say("To complete this mission, you must") 
            say("kill 2 players.")
            say("The waiting time between kills") 
            say("is 30 seconds to be taken into consideration.") 
            say("") 
            say_reward("After completing the mission, you will receive Sword +9.") 
            say("")
            set_state(go_to_level90_mission)
		end
	end
	state go_to_level90_mission begin
        when kill with (npc.is_pc()) and (pc.get_map_index() == 1 or pc.get_map_index() == 21 or pc.get_map_index() == 41) begin
            if get_time() < pc.getqf("kill_timer") then
                 chat("You must wait for 30 seconds to receive the points.")
			     return
            end
            pc.setqf("kill_time", get_time() + 60*2)
            local KILL_COUNT_PLAYER = 2 -- Change the count of killed players. 
            local n = pc.getqf("count") + 1
            pc.setqf("count", n)
            if n == KILL_COUNT_PLAYER then
                pc.give_item2(19, 1) -- Change the code for the reward.
                pc.setqf("count", 0)
                pc.setqf("level_90_points_mission", 1)
                if pc.level >= 91 then
                    set_state(level_91_letter)
                end
            end
        end
    end
    state level_91_letter begin
		when letter begin
			send_letter("Kill the players. (91)")
		end
		when button or info begin
            say_title("Kill the players.") 
            say("") 
            say("To complete this mission, you must") 
            say("kill 2 players.")
            say("The waiting time between kills") 
            say("is 30 seconds to be taken into consideration.") 
            say("") 
            say_reward("After completing the mission, you will receive Sword +9.") 
            say("")
            set_state(go_to_level91_mission)
		end
	end
	state go_to_level91_mission begin
        when kill with (npc.is_pc()) and (pc.get_map_index() == 1 or pc.get_map_index() == 21 or pc.get_map_index() == 41) begin
            if get_time() < pc.getqf("kill_timer") then
                 chat("You must wait for 30 seconds to receive the points.")
			     return
            end
            pc.setqf("kill_time", get_time() + 60*2)
            local KILL_COUNT_PLAYER = 2 -- Change the count of killed players. 
            local n = pc.getqf("count") + 1
            pc.setqf("count", n)
            if n == KILL_COUNT_PLAYER then
                pc.give_item2(19, 1) -- Change the code for the reward.
                pc.setqf("count", 0)
                pc.setqf("level_91_points_mission", 1)
                if pc.level >= 92 then
                    set_state(level_92_letter)
                end
            end
        end
    end
    state level_92_letter begin
		when letter begin
			send_letter("Kill the players. (92)")
		end
		when button or info begin
            say_title("Kill the players.") 
            say("") 
            say("To complete this mission, you must") 
            say("kill 2 players.")
            say("The waiting time between kills") 
            say("is 30 seconds to be taken into consideration.") 
            say("") 
            say_reward("After completing the mission, you will receive Sword +9.") 
            say("")
            set_state(go_to_level92_mission)
		end
	end
	state go_to_level92_mission begin
        when kill with (npc.is_pc()) and (pc.get_map_index() == 1 or pc.get_map_index() == 21 or pc.get_map_index() == 41) begin
            if get_time() < pc.getqf("kill_timer") then
                 chat("You must wait for 30 seconds to receive the points.")
			     return
            end
            pc.setqf("kill_time", get_time() + 60*2)
            local KILL_COUNT_PLAYER = 2 -- Change the count of killed players. 
            local n = pc.getqf("count") + 1
            pc.setqf("count", n)
            if n == KILL_COUNT_PLAYER then
                pc.give_item2(19, 1) -- Change the code for the reward.
                pc.setqf("count", 0)
                pc.setqf("level_92_points_mission", 1)
            end
        end
    end
end