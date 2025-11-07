# Install and load libraries
install.packages("arules")
install.packages("arulesViz")

library(arules)
library(arulesViz)

# Load dataset
data("Groceries")

#----------------------------#
# 1 Apriori Algorithm
#----------------------------#
rules_apriori <- apriori(Groceries,
                         parameter = list(support = 0.02, confidence = 0.5))

inspect(head(rules_apriori))    # Show first few rules
plot(rules_apriori)             # Simple plot

#----------------------------#
# 2 Eclat Algorithm
#----------------------------#
rules_eclat <- eclat(Groceries,
                     parameter = list(support = 0.02, minlen = 2))

inspect(head(rules_eclat))      # Show frequent itemsets