class Item::Map < Item
  def describe
    current_location = game.player.current_location.id.to_s

    map.gsub(" ", "&nbsp")
      .sub(current_location, "<strong>#{current_location}</strong>")
      .prepend('<div class="map">')
      .concat('</div>')
  end

  def pick_up
    move_node_to player
    'I’ve stuffed the <strong>map</strong> down my robe.'
  end

  private

  def map
    '''
                                               #################
                                               #               #
                      ###########              #               #
                      #         #              #      bar      #
                      #   inn   #              #               #
                      #         #              #               #
                      ###########              #################
                            |                /
                            —              /
                            |            /
    ############       #################       ##############       ###############
    #          #       #               #       #            #       #             #
    #   bank   #———|———#   courtyard   #———————#   church   #———|———#   library   #
    #          #       #               #       #            #       #             #
    ############       #################       ##############       ###############
                           |             \
                           |               \
                           |                 \
                           |                   \
                           |                     ###################
                           |                     #                 #
                           |                     #     forgery     #
                           |                     #                 #
                           |                     ###################
                           |
                           |
    ################################     #######################     #################################
    #                     ~~~~     #     #                     #     #                               #
    #   road_to_castle     ~~~~    #——|——#   castle_entrance   #——|——#                               #
    #                        ~~~~  #     #                     #     #                               #
    ################################     #######################     #                               #
                                                                     #                               #
                                                                     #                               #
                                                                     #             castle            #
                                                                     #                               #
                                                                     #                               #
                                                                     #                               #
                                                                     #                               #
                                                                     #                               #
                                                                     #                               #
                                                                     #################################
    '''
  end
end
