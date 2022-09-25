using Logging

function defTasks()
    t5 = @task begin; sleep(5); println("5 sec task done."); end
    t5a = @task begin; sleep(5.1); println("5.1 sec task done."); end
    t3 = @task begin; sleep(3); println("3 sec task done."); end
    @info "defined tasks" 
    return [t3,t5,t5a],t5a
end

function schedTasks(ts)
    for t in ts
        schedule(t)
    end
    @info "scheduled tasks"
end

function main()
    ts,longestTask=defTasks()
    schedTasks(ts)
    wait(longestTask)
end

