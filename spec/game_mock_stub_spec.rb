class Character
	def initialize(strength: 1, die: Die.new, logger: Logger.new)
		@strength = strength
		@die = die
		@logger = logger
	end

	def climb(difficulty:10)
		roll = die.roll + strength
		logger.log("Climbing check. Difficulty: #{difficulty}. Roll: #{roll}")
		roll >= difficulty
	end

	private
	attr_reader :die, :strength, :logger
end

describe Character do
	let(:die) {double}
	let(:logger) {double}
	let(:character) {Character.new(strength:5, die: die, logger: logger)}

	describe 'climbing check skill' do

		before do
			allow(logger).to receive(:log)
		end

		it 'climbs successfully when roll + strength is more than difficulty' do
			allow(die).to receive(:roll) {11}
			expect(character.climb(difficulty: 15)).to be_truthy
		end

		it 'fails climbing check  when roll + strength is less than difficulty' do
			allow(die).to receive(:roll) {5}
			expect(character.climb(difficulty: 15)).to be_falsey
		end

		it 'commands logger to log climb skill check' do
			allow(die).to receive(:roll) {7}
			expect(logger).to receive(:log).with('Climbing check. Difficulty: 10. Roll: 12')
			character.climb(difficulty: 10)
		end
	end
end