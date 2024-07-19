#include <stdio.h>

//a simple kernel that squares every element in an array
__global__ void square(float * d_in, float * d_out) {
    int idx = threadIdx.x;
    float f = d_in[idx];
    d_out[idx] = f * f;
}

//cpu program flow
int main(int argc, char ** argv) {
    const int ARRAY_SIZE = 64;
    const int ARRAY_BYTES = ARRAY_SIZE * sizeof(float);

    //generate input array, declare output array on cpu (host)
    float h_in[ARRAY_SIZE];
    for (int i = 0; i < ARRAY_SIZE; i++) {
        h_in[i] = float(i);
    }
    float h_out[ARRAY_SIZE];

    //declare gpu memory pointers, allocate gpu memory (device)
    float * d_in;
    float * d_out;
    cudaMalloc((void **) &d_in, ARRAY_BYTES);
    cudaMalloc((void **) &d_out, ARRAY_BYTES);

    //transfer input from host to device
    cudaMemcpy(d_in, h_in, ARRAY_BYTES, cudaMemcpyHostToDevice);
    //launch kernel on device
    square<<<1, ARRAY_SIZE>>>(d_in, d_out);
    //transfer output from device to host
    cudaMemcpy(h_out, d_out, ARRAY_BYTES, cudaMemcpyDeviceToHost);

    //print output
    for (int i = 0; i < ARRAY_SIZE; i++) {
        printf("%f", h_out[i]);
        printf(((i%4) != 3) ? "\t" : "\n");
    }

    //free gpu memory
    cudaFree(d_in);
    cudaFree(d_out);

    return 0;
}