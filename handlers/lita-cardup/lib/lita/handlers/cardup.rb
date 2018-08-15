module Lita
  module Handlers
    class Cardup < Handler
      # insert handler code here
      route /こんにちは/, :hello

      def hello(response)
        response.reply('こんにちは！今日も頑張ろう！')
      end

      Lita.register_handler(self)
    end
  end
end
