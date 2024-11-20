import random
import matplotlib.pyplot as plt

# Number of iterations for the simulation
num_iterations = 100000
count = 0  # Counter for favorable outcomes

# Perform the simulation
for _ in range(num_iterations):
    cards = random.sample(range(1, 16), 2)  # Randomly select two cards
    if sum(cards) % 2 == 0 and all(card % 2 != 0 for card in cards):
        count += 1

# Calculate the probability
probability = count / num_iterations

# Plotting the probability
labels = ['Probability', 'Complement']
values = [probability, 1 - probability]

plt.bar(labels, values)
plt.ylabel('Probability')
plt.title('Probability of Choosing Odd-numbered Cards')
plt.show()
