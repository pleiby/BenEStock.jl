using BenEStock
using Documenter

DocMeta.setdocmeta!(BenEStock, :DocTestSetup, :(using BenEStock); recursive=true)

makedocs(;
    modules=[BenEStock],
    authors="Paul Leiby <pleiby@gmail.com> and contributors",
    repo="https://github.com/pleiby/BenEStock.jl/blob/{commit}{path}#{line}",
    sitename="BenEStock.jl",
    format=Documenter.HTML(;
        prettyurls=get(ENV, "CI", "false") == "true",
        canonical="https://pleiby.github.io/BenEStock.jl",
        edit_link="main",
        assets=String[],
    ),
    pages=[
        "Home" => "index.md",
    ],
)

deploydocs(;
    repo="github.com/pleiby/BenEStock.jl",
    devbranch="main",
)
