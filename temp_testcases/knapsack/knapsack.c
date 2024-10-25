#define write_char(c) *(char*)0xFFFFFFFFFFFFFFFFULL = c
#define max(a, b) (a > b) ? a : b
/*
REGISTER ALLOCATION TABLE
X0: temporary
X1: Pointer to weights
X2: Pointer to values
X3: j (index to weights and values)
X4: i (currently considered weight)
X5: sp 
X6: temp
X7: temp

dp[] is stored on the stack.
We open up 256 bytes on the stack.
Lower 208 bytes: dp[] array

*/

int start() {
    // 0,1 knapsack with max
    long weights[] = {10, 02, 06, 04, 07, 05, 06, 07, 8, 02};
    long values[] = {03, 10, 03, 9, 03, 03, 04, 8, 07, 8};
    // let's set the max weight to 25
    int dp[26] = {0};
    for(int j = 0; j < 10; j++) {
        // decide to take item j or not
        for(int i = 25; i >= 0; i--) {
            if(i < weights[j]) continue;
            dp[i] = max(dp[i], dp[i - weights[j]] + values[j]);
        }
    }
    // Returning the maximum value of knapsack
    // write_char(dp[25]);
    return dp[25];

}

int main() {
    return start();
}
