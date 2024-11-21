def print_representations(number):
    # Check for negative number for unsigned format
    if number < 0:
        print("Error: Negative numbers cannot be represented in the unsigned format.")
    else:
        # Unsigned binary
        unsigned_binary = f'{number & 0xFFFFFFFF:032b}'
        unsigned_hex = f'{number & 0xFFFFFFFF:08X}'
        unsigned_octal = f'{number & 0xFFFFFFFF:011o}'
        print(f'Unsigned binary:   {unsigned_binary}')1
        print(f'Unsigned hex:      {unsigned_hex}')
        print(f'Unsigned octal:    {unsigned_octal}')

    # Signed binary
    signed_binary = f'{number if number >= 0 else (number + (1 << 32)):032b}'
    signed_hex = f'{number if number >= 0 else (number + (1 << 32)):08X}'
    signed_octal = f'{number if number >= 0 else (number + (1 << 32)):011o}'
    print(f'Signed binary:     {signed_binary}')
    print(f'Signed hex:        {signed_hex}')
    print(f'Signed octal:      {signed_octal}')

    # One's complement
    ones_complement = ''.join('1' if bit == '0' else '0' for bit in signed_binary)
    ones_complement_hex = f'{int(ones_complement, 2):08X}'
    ones_complement_octal = f'{int(ones_complement, 2):011o}'
    print(f"One's complement:  {ones_complement}")
    print(f"One's comp. hex:   {ones_complement_hex}")
    print(f"One's comp. octal: {ones_complement_octal}")

    # Two's complement
    twos_complement = f'{(number if number >= 0 else ((number + (1 << 32)) + 1) & 0xFFFFFFFF):032b}'
    twos_complement_hex = f'{int(twos_complement, 2):08X}'
    twos_complement_octal = f'{int(twos_complement, 2):011o}'
    print(f"Two's complement:  {twos_complement}")
    print(f"Two's comp. hex:   {twos_complement_hex}")
    print(f"Two's comp. octal: {twos_complement_octal}")

# Example usage
num = int(input("Enter a number: "))
print_representations(num)
