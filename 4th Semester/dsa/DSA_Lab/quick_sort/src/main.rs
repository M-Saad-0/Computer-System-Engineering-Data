fn main() {
    let mut arr = [63, 42, 13, 49, 34, 81, 24, 7, 48, 80, 51, 32, 83, 88, 9, 18, 98, 20, 2, 25, 95, 84, 17, 44, 40, 62, 96, 47, 74, 87, 55, 92, 60, 29, 58, 66, 1, 78, 91, 37, 23, 26, 77, 39, 12, 89, 11, 65, 67, 72, 79, 21, 3, 50, 97, 56, 19, 27, 61, 54, 35, 68, 71, 14, 90, 57, 15, 99, 41, 8, 45, 76, 85, 69, 73, 31, 22, 36, 52, 16, 94, 86, 75, 5, 53, 43, 28, 70, 93, 6, 10, 46, 4, 64, 33, 30, 82, 59, 38];
    quicksort(&mut arr);
    println!("Sorted array: {:?}", arr);
}
fn quicksort(arr: &mut [i32]) {
    let len = arr.len();
    if len < 2 {
        return;
    }
    let pivot = arr[len / 2];
    let mut i = 0;
    let mut j = len - 1;
    loop {
        while arr[i] < pivot {
            i += 1;
        }
        while arr[j] > pivot {
            j -= 1;
        }
        if i >= j {
            break;
        }
        swap(arr, i, j);
        i += 1;
        j -= 1;
    }
    quicksort(&mut arr[..i]);
    quicksort(&mut arr[i..]);
}
fn swap(arr: &mut [i32], i: usize, j: usize) {
    let tmp = arr[i];
    arr[i] = arr[j];
    arr[j] = tmp;
}