#Constants
NUM_ELEMENTS =25 #Elements of the random matrix
MAX_RANDOM_NUMBER=100   #Maximum value of a random number

def create_random_matrix (num_elements)
    matrix=[]
    num_elements.times{ matrix.push(rand(MAX_RANDOM_NUMBER)+1)}
    matrix
end

def bubble_sort(matrix)
    max=matrix.length-2
    return matrix if max<0
    for j in 0..max do
        for i in 0..max-j do
            interchange_positions(matrix, i) if matrix[i]>matrix[i+1]
        end
    end
    matrix
end

def interchange_positions (matrix, i)
    aux=matrix[i]
    matrix[i]=matrix[i+1]
    matrix[i+1]=aux
end

def main_program 
    random_matrix=create_random_matrix (NUM_ELEMENTS)
    string = "Original random matrix: #{random_matrix}"
    puts string
    string = "Matrix after sorting: #{bubble_sort(random_matrix)}"
    puts string
end


main_program