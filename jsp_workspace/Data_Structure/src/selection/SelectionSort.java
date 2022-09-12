package selection;

import java.util.Arrays;

public class SelectionSort {

	public static void sort(int[] arr) {
		for(int i = 0; i < arr.length; i++) {
			int minIndex = i;
			//최솟값을 가지는 인덱스를 찾기.
			for(int j = i+1; j < arr.length; j++) {
				if(arr[j] < arr[minIndex]) {
					minIndex = j;
				}
			}
			//int temp = arr[minIndex];
			//arr[minIndex] = arr[i]; //minIndex자리에 arr[i]번째를 넣고
			//arr[i] = temp; //arr[i]번째의 자리에 temp를 넣는다.
			swap(arr, minIndex, i);
		}
	}
	
	public static void swap(int[] arr, int i, int j) {
		int temp = arr[i];
		arr[i] = arr[j];
		arr[j] = temp;
	}
	
	public static void main(String[] args) {
		// TODO Auto-generated method stub
		int[] arr = {33, 11, 99, 1, 22, 88, 55, 44, 66, 77};
		sort(arr);
		System.out.println("정렬 후: " + Arrays.toString(arr));
	}

}

/*
	선택 정렬
*/