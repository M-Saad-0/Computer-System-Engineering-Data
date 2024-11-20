fn main() {
    let mut arr : [u32; 10] = [32, 43, 12, 34, 71, 12, 09, 23, 12, 34];
    arr = sort(arr);
    println!("{arr:?}");
}
fn sort(mut arr : [u32; 10]) -> [u32; 10]
{
    let mut smaller = 0;
    for i in 0..arr.len()-1
    {
        for j in i..arr.len()-1
        {
            if arr[smaller]>arr[j]
            {
                smaller = j;
            }
        }
        if true
        {
            let tmp = arr[smaller];
            arr[smaller] = arr[i];
            arr[i] = tmp;
        }
    }
    return arr;
}

