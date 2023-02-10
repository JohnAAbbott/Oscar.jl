const AnyVecOrMat = Union{MatElem, AbstractVecOrMat}


export AffineHalfspace,
    AffineHyperplane,
    Cone,
    PointVector,
    PolyhedralComplex,
    PolyhedralFan,
    Polyhedron,
    Halfspace,
    Hyperplane,
    SubdivisionOfPoints,
    IncidenceMatrix,
    LinearHalfspace,
    LinearHyperplane,
    LinearProgram,
    MixedIntegerLinearProgram,
    RayVector,
    SubObjectIterator,
    affine_equation_matrix,
    affine_hull,
    affine_inequality_matrix,
    all_triangulations,
    archimedean_solid,
    ambient_dim,
    bipyramid,
    birkhoff_polytope,
    boundary_lattice_points,
    catalan_solid,
    codim,
    combinatorial_symmetries,
    common_refinement,
    cone_from_inequalities,
    cones,
    convex_hull,
    cross_polytope,
    cube,
    cyclic_polytope,
    del_pezzo_polytope,
    dim,
    dodecahedron,
    ehrhart_polynomial,
    fano_simplex,
    faces,
    facets,
    face_fan,
    feasible_region,
    f_vector,
    fractional_cut_polytope,
    fractional_matching_polytope,
    g_vector,
    gelfand_tsetlin_polytope,
    gkz_vector,
    halfspace_matrix_pair,
    hilbert_basis,
    h_star_polynomial,
    h_vector,
    icosahedron,
    intersect,
    interior_lattice_points,
    invert,
    is_bounded,
    is_complete,
    is_embedded,
    is_feasible,
    is_fulldimensional,
    is_normal,
    is_pointed,
    is_pure,
    is_regular,
    is_simple,
    is_simplicial,
    is_smooth,
    is_very_ample,
    johnson_solid,
    k_skeleton,
    lattice_points,
    lattice_volume,
    lineality_dim,
    lineality_space,
    linear_equation_matrix,
    linear_inequality_matrix,
    linear_span,
    linear_symmetries,
    load,
    maximal_cells,
    maximal_cones,
    maximal_polyhedra,
    min_weights,
    minimal_faces,
    minkowski_sum,
    newton_polytope,
    normalized_volume,
    normal_fan,
    normal_cone,
    nfacets,
    n_maximal_cells,
    n_maximal_cones,
    n_maximal_polyhedra,
    negbias,
    normal_vector,
    npoints,
    npolyhedra,
    nrays,
    nvertices,
    objective_function,
    optimal_solution,
    optimal_vertex,
    optimal_value,
    orbit_polytope,
    platonic_solid,
    points,
    point_matrix,
    polarize,
    polyhedra_of_dim,
    primitive_collections,
    print_constraints,
    product,
    project_full,
    pyramid,
    rays_modulo_lineality,
    recession_cone,
    regular_24_cell,
    regular_120_cell,
    regular_600_cell,
    regular_triangulations,
    regular_triangulation,
    relative_interior_point,
    save,
    secondary_cone,
    secondary_polytope,
    simplex,
    solve_lp,
    solve_milp,
    starsubdivision,
    star_triangulations,
    subdivision_of_vertices,
    support_function,
    positive_hull,
    rand_spherical_polytope,
    ray_indices,
    rays,
    tetrahedron,
    upper_bound_f_vector,
    upper_bound_g_vector,
    upper_bound_h_vector,
    vector_matrix,
    vertices,
    vertices_and_rays,
    vertex_and_ray_indices,
    vertex_indices,
    vf_group,
    visualize,
    volume,
    *

include("helpers.jl")
include("iterators.jl")
include("Polyhedron/constructors.jl")
include("Cone/constructors.jl")
include("Cone/properties.jl")
include("Cone/standard_constructions.jl")
include("Polyhedron/properties.jl")
include("Polyhedron/standard_constructions.jl")
include("PolyhedralFan/constructors.jl")
include("PolyhedralFan/properties.jl")
include("PolyhedralFan/standard_constructions.jl")
include("PolyhedralComplex/constructors.jl")
include("PolyhedralComplex/properties.jl")
include("PolyhedralComplex/standard_constructions.jl")
include("SubdivisionOfPoints/constructors.jl")
include("SubdivisionOfPoints/properties.jl")
include("SubdivisionOfPoints/functions.jl")
include("LinearProgram.jl")
include("MixedIntegerLinearProgram.jl")
include("Groups.jl")
include("type_functions.jl")
include("Visualization.jl")
include("solving_integrally.jl")
include("triangulations.jl")


# Some temporary aliases to avoid breaking all current PRs
pm_cone(C::Cone) = pm_object(C)
pm_fan(PF::PolyhedralFan) = pm_object(PF)
pm_subdivision(SOP::SubdivisionOfPoints) = pm_object(SOP)
pm_polytope(P::Polyhedron) = pm_object(P)
