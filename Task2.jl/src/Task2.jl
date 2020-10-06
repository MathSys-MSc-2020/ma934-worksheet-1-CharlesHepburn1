module Task2
# List of dependencies

# List of functions to be exported
export fibo_iter
export fibo_recurs
export fibo_memo
# Definitions of any new types provided
"""
fibo_iter(a_1, a_2, n) 

returns n fibonacci numbers starting from a_0 and a_1 using an iterative formula
"""
# Function definitions

function fibo_iter(a_1, a_2, n)
    x = [a_1, a_2]
    if n >  2
        for i = 1:n-2
            push!(x, x[i] +x[i+1])
        end    
        return x[n]
    elseif n == 2
        return x[n]
        
    else
        println("Error n needs to be at least 2")
    end
end


function fibo_recurs(a_1, a_2, n) 
    if n == 1 
        return a_1
    elseif n==2
        return a_2
    else
        return fibo_recurs(a_1, a_2, n-1) + fibo_recurs(a_1, a_2, n-2)
    end
end
    



function fibo_memo(a_1, a_2, n)
    memo = Dict()
    memo[1] = a_1
    memo[2] = a_2
    if !(n in keys(memo))
        memo[n]=fibo_memo(a_1, a_2, n-1)+fibo_memo(a_1, a_2, n-2)
    end
    return memo[n]
end
      

# End the module definition
end
