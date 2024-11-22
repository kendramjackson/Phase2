#include <stdio.h>
#include <stdlib.h>
#include <string.h>

void int_to_bin(int num, char* output, int output_size) {
    output[output_size - 1] = '\0';
    for (int i = output_size - 2; i >= 0; i--) {
        output[i] = (num & 1) ? '1' : '0';
        num >>= 1;
    }
}

void print_representations(int number) {
    char buffer[33]; // Buffer to hold binary representations

    // Check for negative number for unsigned format
    if (number < 0) {
        printf("Error: Negative numbers cannot be represented in the unsigned format.\n");
    } else {
        // Unsigned binary
        unsigned int unsigned_number = (unsigned int) number;
        int_to_bin(unsigned_number, buffer, 33);
        printf("Unsigned binary:   %s\n", buffer);
        printf("Unsigned hex:      %08X\n", unsigned_number);
        printf("Unsigned octal:    %011o\n", unsigned_number);
    }

    // Signed binary
    int_to_bin(number, buffer, 33);
    printf("Signed binary:     %s\n", buffer);
    printf("Signed hex:        %08X\n", number);
    printf("Signed octal:      %011o\n", number);

    // One's complement
    for (int i = 0; i < 32; i++) {
        buffer[i] = (buffer[i] == '0') ? '1' : '0';
    }
    unsigned int ones_complement_value = strtoul(buffer, NULL, 2);
    printf("One's complement:  %s\n", buffer);
    printf("One's comp. hex:   %08X\n", ones_complement_value);
    printf("One's comp. octal: %011o\n", ones_complement_value);

    // Two's complement
    unsigned int twos_complement_value;
    if (number < 0) {
        twos_complement_value = (unsigned int)(number + (1 << 31)) + 1; // Adjust to correct left shift
        int_to_bin(twos_complement_value, buffer, 33);
        printf("Two's complement:  %s\n", buffer);
        printf("Two's comp. hex:   %08X\n", twos_complement_value);
        printf("Two's comp. octal: %011o\n", twos_complement_value);
    } else {
        int_to_bin(number, buffer, 33);
        printf("Two's complement:  %s\n", buffer);
        printf("Two's comp. hex:   %08X\n", number);
        printf("Two's comp. octal: %011o\n", number);
    }
}

int main() {
    int num;
    printf("Enter a number: ");
    scanf("%d", &num);
    print_representations(num);
    return 0;
}
