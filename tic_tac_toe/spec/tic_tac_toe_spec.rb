require './lib/tic_tac_toe'

describe TicTacToe do
    describe "#play" do
        it "Outputs It's a draw!" do
            moves = ['1', '2', '3', '4', '6', '5', '7', '9', '8'] # Simulated moves for a draw
            allow_any_instance_of(Kernel).to receive(:gets).and_return(*moves) # *moves indicates an arr of args
            game = TicTacToe.new
            expect { game.play }.to output(/It's a draw!/).to_stdout
        end
    end

    it"Outputs Congratulations player X/o won!" do
        moves = ['1','2','3','4','5','6','7']
        allow_any_instance_of(Kernel).to receive(:gets).and_return(*moves)
        game = TicTacToe.new
        expect {game.play}.to output(/Congratulations X won!/ || /Congratulations O won!/).to_stdout
    end
end