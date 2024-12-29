from sklearn.neural_network import MLPClassifier
from sklearn.metrics import accuracy_score

# XOR dataset
X = [[0, 0], [0, 1], [1, 0], [1, 1]]  # Input features
y = [0, 1, 1, 0]  # XOR labels

# Create MLP model
mlp = MLPClassifier(hidden_layer_sizes=(4,),  # One hidden layer with 4 neurons
                    activation='relu',        # Activation function
                    solver='adam',            # Optimizer
                    max_iter=1000,            # Maximum iterations
                    random_state=42)          # For reproducibility

# Train the model
mlp.fit(X, y)

# Make predictions
predictions = mlp.predict(X)

# Evaluate the model
accuracy = accuracy_score(y, predictions)
print("Predictions:", predictions)
print("Accuracy:", accuracy)

