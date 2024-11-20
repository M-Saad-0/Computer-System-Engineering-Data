
import math
from scipy.stats import binom, hypergeom, geom, poisson
import numpy as np


def probability(favorable_outcomes, total_outcomes):
    return favorable_outcomes / total_outcomes


print("Probability of an event:", probability(3, 10))



def independent_events_probability(p_a, p_b):
    return p_a * p_b


print("Probability of two independent events:", independent_events_probability(0.5, 0.4))



def conditional_probability(p_a_and_b, p_b):
    return p_a_and_b / p_b


print("Conditional probability of A given B:", conditional_probability(0.2, 0.4))



def total_probability(probabilities_b, conditional_probabilities_a_given_b):
    return sum(p_b * p_a_given_b for p_b, p_a_given_b in zip(probabilities_b, conditional_probabilities_a_given_b))


probabilities_b = [0.3, 0.5, 0.2]
conditional_probabilities_a_given_b = [0.8, 0.6, 0.1]
print("Total probability of event A:", total_probability(probabilities_b, conditional_probabilities_a_given_b))



def binomial_probability(n, k, p):
    return binom.pmf(k, n, p)


print("Binomial probability of 3 successes in 5 trials:", binomial_probability(5, 3, 0.5))



def hypergeometric_probability(N, K, n, k):
    return hypergeom.pmf(k, N, K, n)


print("Hypergeometric probability of 2 successes in 5 draws:", hypergeometric_probability(20, 7, 5, 2))



def geometric_probability(k, p):
    return geom.pmf(k, p)


print("Geometric probability of first success on the 3rd trial:", geometric_probability(3, 0.5))



def poisson_probability(k, lam):
    return poisson.pmf(k, lam)


print("Poisson probability of observing 3 events:", poisson_probability(3, 2.5))