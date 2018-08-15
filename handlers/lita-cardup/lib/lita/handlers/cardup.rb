module Lita
  module Handlers
    class Cardup < Handler
      # insert handler code here
      route /(.+)/, :reply_card

      def reply_card(response)
        target_word = response.matches[0][0]
        card = create_card(target_word)
        response.reply(card)
      end

      def create_card(word)
        <<-"EOS"
          ```
          
          `             `  `` ...-J??"^`  Z[      `.?           .
          `     `` ` ...-+?7"^`          `X`    `.(!            .
          `   ` .Y7!!`                    (;` ` .!              .
          `   ` r`                         b``.!   `            .
          `     d.                       ` j    `        `      .
          `    `(@`                       `.;                 ` .
          `      h`                       ` b        `     `    .
          `     `(-     #{word}              `d.                  .
          `  `    [`    が全く分からない      `.]`    `            .
          `       u.    時に挙げる札           4          `       .
          `       ,|`                        ,.            `    .
          `        S                         .r`   `            .
          `       `(_                        `W `               .
          .       ` [`                        ,|        `       .
          _  `      q                          b`    `     `    .
          ?<-.``    ,[                         (                .
          .  `.?+.. `S                       ` ,|  `            .
          _!!-...``_!(_                       ` b``      `    ` .
          _     `   `.L                       `J-   `  ....-~??7
          `           O.                      `.[  ` ~`        .
          `          `,]                        z              .
          `          ` 1                       `(-             
          ```
        EOS
      end

      Lita.register_handler(self)
    end
  end
end
