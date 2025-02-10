import random

def generate_random_binary_values(count, width):
    """
    Generate a list of random binary strings.

    Parameters:
        count (int): Number of binary values to generate.
        width (int): Width (number of bits) of each binary value.

    Returns:
        list of str: A list containing random binary strings of the specified width.
    """
    random_binaries = []
    for _ in range(count):
        # Generate a random integer that fits in 'width' bits.
        value = random.getrandbits(width)
        # Convert the integer to a binary string, padded with leading zeros to ensure the specified width.
        binary_str = format(value, f'0{width}b')
        random_binaries.append(f"{width}'b{binary_str}")
    return random_binaries

if __name__ == "__main__":
    count = 25
    width = 10

    # Generate and print the random binary values.
    binaries = generate_random_binary_values(count, width)
    
    
    s = "{" + ",".join(binaries) + "}"
    print(s)
    
    