#include <stdio.h>
#include <stdint.h>
#include <print_board.h>
#include <bitboard.h>

int main(){
	struct bitboard pawns_b = {
		'P', 
		0x000000000000FF00
	};
	struct bitboard pawns_w = {
		'P', 
		0x00FF000000000000
	};
	bitboard_print(pawns_b); 

	return 0;
}
