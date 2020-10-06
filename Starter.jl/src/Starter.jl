module Starter
# List of dependencies
using Plots

# List of functions to be exported
export example_plot
export task1
# Definitions of any new types provided

# Function definitions
"""
    example_plot(n)

This function evaluates Sin(x) at n points in the interval [0, 2π], creates a
    plot and then returns the plot.
"""

"""
     task1(alpha,n)
This function evaluates x^alpha *log(x) at points 2^i for i = 1:n
"""
function example_plot(n)
    title = "This is an example plot."
    x1 = collect(range(0.0, 2*π, length=n))
    y1 = sin.(x1)

    # Plot the points
    p = plot(x1, y1, seriestype=:scatter,label="Some sample points",
    title=title, xlabel="x", ylabel="sin(x)", markersize=10, markercolor="red")

    # Now plot the true function
    x2 = collect(range(0.0, 2*π, length=1000))
    y2 = sin.(x2)
    plot!(x2, y2, label="Underlying function.", color="green", linewidth=2)
    return p
end

function task1(alpha, n)
    title = "Task 1 plot"
    x = [2^0]
    y = [x[1]^alpha *log(x[1])]
    for i= 1:n
        push!(x, 2^i)
        push!(y, x[i+1]^alpha *log(x[i+1]) )
    end    
    p2 = plot(x, y, seriestype=:scatter,
    title=title, xlabel="x", ylabel="x^ alpha *log(x)", markersize=10, markercolor="red")
    

    return p2
end
    


# End the module definition
end
