#include <stdio.h>
<<<<<<< HEAD
#include <stdint.h>
#include <print_board.h>
#include <bitboard.h>

int main(){
	struct bitboard pawns_b = {
		'P', 
		0x000000000000FF00
	};
	bitboard_print(pawns_b); 
=======

int main(){
	printf("Welcome to command line chess\n");
>>>>>>> parent of 706c8c3 (removed docker stuff, started ansi library)
	return 0;
}
