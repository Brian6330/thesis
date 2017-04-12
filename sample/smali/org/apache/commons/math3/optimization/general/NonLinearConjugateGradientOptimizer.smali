.class public Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;
.source "NonLinearConjugateGradientOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;,
        Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private initialStep:D

.field private point:[D

.field private final preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

.field private final solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

.field private final updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;)V
    .locals 1
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 69
    new-instance v0, Lorg/apache/commons/math3/optimization/SimpleValueChecker;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/SimpleValueChecker;-><init>()V

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 71
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V
    .locals 2
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 84
    .local p2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    new-instance v0, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;

    invoke-direct {v0}, Lorg/apache/commons/math3/analysis/solvers/BrentSolver;-><init>()V

    new-instance v1, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    .line 88
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .param p3, "lineSearchSolver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    .local p2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    new-instance v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V

    .line 107
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;Lorg/apache/commons/math3/optimization/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optimization/general/Preconditioner;)V
    .locals 2
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;
    .param p3, "lineSearchSolver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .param p4, "preconditioner"    # Lorg/apache/commons/math3/optimization/general/Preconditioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;",
            "Lorg/apache/commons/math3/optimization/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optimization/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optimization/general/Preconditioner;",
            ")V"
        }
    .end annotation

    .prologue
    .line 121
    .local p2, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optimization/general/AbstractScalarDifferentiableOptimizer;-><init>(Lorg/apache/commons/math3/optimization/ConvergenceChecker;)V

    .line 123
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    .line 124
    iput-object p3, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    .line 125
    iput-object p4, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    .line 126
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    .line 127
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;)[D
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;

    .prologue
    .line 44
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    return-object v0
.end method

.method private findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D
    .locals 12
    .param p1, "f"    # Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .param p2, "a"    # D
    .param p4, "h"    # D

    .prologue
    .line 250
    invoke-interface {p1, p2, p3}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v4

    .line 251
    .local v4, "yA":D
    move-wide v6, v4

    .line 252
    .local v6, "yB":D
    move-wide/from16 v2, p4

    .local v2, "step":D
    :goto_0
    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    cmpg-double v8, v2, v8

    if-gez v8, :cond_1

    .line 253
    add-double v0, p2, v2

    .line 254
    .local v0, "b":D
    invoke-interface {p1, v0, v1}, Lorg/apache/commons/math3/analysis/UnivariateFunction;->value(D)D

    move-result-wide v6

    .line 255
    mul-double v8, v4, v6

    const-wide/16 v10, 0x0

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_0

    .line 256
    return-wide v0

    .line 252
    :cond_0
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    div-double v10, v4, v6

    invoke-static {v8, v9, v10, v11}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v8

    mul-double/2addr v2, v8

    goto :goto_0

    .line 259
    .end local v0    # "b":D
    :cond_1
    new-instance v8, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_BRACKET_OPTIMUM_IN_LINE_SEARCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v8
.end method


# virtual methods
.method protected doOptimize()Lorg/apache/commons/math3/optimization/PointValuePair;
    .locals 40

    .prologue
    .line 150
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optimization/ConvergenceChecker;

    move-result-object v18

    .line 151
    .local v18, "checker":Lorg/apache/commons/math3/optimization/ConvergenceChecker;, "Lorg/apache/commons/math3/optimization/ConvergenceChecker<Lorg/apache/commons/math3/optimization/PointValuePair;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getStartPoint()[D

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    .line 152
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getGoalType()Lorg/apache/commons/math3/optimization/GoalType;

    move-result-object v26

    .line 153
    .local v26, "goal":Lorg/apache/commons/math3/optimization/GoalType;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v0, v4

    move/from16 v30, v0

    .line 154
    .local v30, "n":I
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v35

    .line 155
    .local v35, "r":[D
    sget-object v4, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_0

    .line 156
    const/16 v27, 0x0

    .local v27, "i":I
    :goto_0
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_0

    .line 157
    aget-wide v6, v35, v27

    neg-double v6, v6

    aput-wide v6, v35, v27

    .line 156
    add-int/lit8 v27, v27, 0x1

    goto :goto_0

    .line 162
    .end local v27    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    move-object/from16 v0, v35

    invoke-interface {v4, v6, v0}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v37

    .line 163
    .local v37, "steepestDescent":[D
    invoke-virtual/range {v37 .. v37}, [D->clone()Ljava/lang/Object;

    move-result-object v36

    check-cast v36, [D

    .line 165
    .local v36, "searchDirection":[D
    const-wide/16 v20, 0x0

    .line 166
    .local v20, "delta":D
    const/16 v27, 0x0

    .restart local v27    # "i":I
    :goto_1
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_1

    .line 167
    aget-wide v6, v35, v27

    aget-wide v8, v36, v27

    mul-double/2addr v6, v8

    add-double v20, v20, v6

    .line 166
    add-int/lit8 v27, v27, 0x1

    goto :goto_1

    .line 170
    :cond_1
    const/16 v19, 0x0

    .line 171
    .local v19, "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    const/16 v28, 0x0

    .line 172
    .local v28, "iter":I
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->getMaxEvaluations()I

    move-result v29

    .line 174
    .local v29, "maxEval":I
    :cond_2
    :goto_2
    add-int/lit8 v28, v28, 0x1

    .line 176
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveValue([D)D

    move-result-wide v32

    .line 177
    .local v32, "objective":D
    move-object/from16 v34, v19

    .line 178
    .local v34, "previous":Lorg/apache/commons/math3/optimization/PointValuePair;
    new-instance v19, Lorg/apache/commons/math3/optimization/PointValuePair;

    .end local v19    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    move-object/from16 v0, v19

    move-wide/from16 v1, v32

    invoke-direct {v0, v4, v1, v2}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DD)V

    .line 179
    .restart local v19    # "current":Lorg/apache/commons/math3/optimization/PointValuePair;
    if-eqz v34, :cond_3

    move-object/from16 v0, v18

    move/from16 v1, v28

    move-object/from16 v2, v34

    move-object/from16 v3, v19

    invoke-interface {v0, v1, v2, v3}, Lorg/apache/commons/math3/optimization/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 181
    return-object v19

    .line 185
    :cond_3
    new-instance v5, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;

    move-object/from16 v0, p0

    move-object/from16 v1, v36

    invoke-direct {v5, v0, v1}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer$LineSearchFunction;-><init>(Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;[D)V

    .line 186
    .local v5, "lsf":Lorg/apache/commons/math3/analysis/UnivariateFunction;
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iget-wide v8, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v9}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->findUpperBound(Lorg/apache/commons/math3/analysis/UnivariateFunction;DD)D

    move-result-wide v12

    .line 190
    .local v12, "uB":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    const-wide/16 v10, 0x0

    const-wide v14, 0x3cd203af9ee75616L    # 1.0E-15

    move/from16 v8, v29

    move-object v9, v5

    invoke-interface/range {v7 .. v15}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->solve(ILorg/apache/commons/math3/analysis/UnivariateFunction;DDD)D

    move-result-wide v38

    .line 191
    .local v38, "step":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->solver:Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;

    invoke-interface {v4}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getEvaluations()I

    move-result v4

    sub-int v29, v29, v4

    .line 194
    const/16 v27, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    array-length v4, v4

    move/from16 v0, v27

    if-ge v0, v4, :cond_4

    .line 195
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    aget-wide v6, v4, v27

    aget-wide v8, v36, v27

    mul-double v8, v8, v38

    add-double/2addr v6, v8

    aput-wide v6, v4, v27

    .line 194
    add-int/lit8 v27, v27, 0x1

    goto :goto_3

    .line 198
    :cond_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v35

    .line 199
    sget-object v4, Lorg/apache/commons/math3/optimization/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optimization/GoalType;

    move-object/from16 v0, v26

    if-ne v0, v4, :cond_5

    .line 200
    const/16 v27, 0x0

    :goto_4
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_5

    .line 201
    aget-wide v6, v35, v27

    neg-double v6, v6

    aput-wide v6, v35, v27

    .line 200
    add-int/lit8 v27, v27, 0x1

    goto :goto_4

    .line 206
    :cond_5
    move-wide/from16 v24, v20

    .line 207
    .local v24, "deltaOld":D
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optimization/general/Preconditioner;

    move-object/from16 v0, p0

    iget-object v6, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->point:[D

    move-object/from16 v0, v35

    invoke-interface {v4, v6, v0}, Lorg/apache/commons/math3/optimization/general/Preconditioner;->precondition([D[D)[D

    move-result-object v31

    .line 208
    .local v31, "newSteepestDescent":[D
    const-wide/16 v20, 0x0

    .line 209
    const/16 v27, 0x0

    :goto_5
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_6

    .line 210
    aget-wide v6, v35, v27

    aget-wide v8, v31, v27

    mul-double/2addr v6, v8

    add-double v20, v20, v6

    .line 209
    add-int/lit8 v27, v27, 0x1

    goto :goto_5

    .line 214
    :cond_6
    move-object/from16 v0, p0

    iget-object v4, v0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    sget-object v6, Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;->FLETCHER_REEVES:Lorg/apache/commons/math3/optimization/general/ConjugateGradientFormula;

    if-ne v4, v6, :cond_8

    .line 215
    div-double v16, v20, v24

    .line 223
    .local v16, "beta":D
    :goto_6
    move-object/from16 v37, v31

    .line 226
    rem-int v4, v28, v30

    if-eqz v4, :cond_7

    const-wide/16 v6, 0x0

    cmpg-double v4, v16, v6

    if-gez v4, :cond_a

    .line 229
    :cond_7
    invoke-virtual/range {v37 .. v37}, [D->clone()Ljava/lang/Object;

    move-result-object v36

    .end local v36    # "searchDirection":[D
    check-cast v36, [D

    .restart local v36    # "searchDirection":[D
    goto/16 :goto_2

    .line 217
    .end local v16    # "beta":D
    :cond_8
    const-wide/16 v22, 0x0

    .line 218
    .local v22, "deltaMid":D
    const/16 v27, 0x0

    :goto_7
    move-object/from16 v0, v35

    array-length v4, v0

    move/from16 v0, v27

    if-ge v0, v4, :cond_9

    .line 219
    aget-wide v6, v35, v27

    aget-wide v8, v37, v27

    mul-double/2addr v6, v8

    add-double v22, v22, v6

    .line 218
    add-int/lit8 v27, v27, 0x1

    goto :goto_7

    .line 221
    :cond_9
    sub-double v6, v20, v22

    div-double v16, v6, v24

    .restart local v16    # "beta":D
    goto :goto_6

    .line 232
    .end local v22    # "deltaMid":D
    :cond_a
    const/16 v27, 0x0

    :goto_8
    move/from16 v0, v27

    move/from16 v1, v30

    if-ge v0, v1, :cond_2

    .line 233
    aget-wide v6, v37, v27

    aget-wide v8, v36, v27

    mul-double v8, v8, v16

    add-double/2addr v6, v8

    aput-wide v6, v36, v27

    .line 232
    add-int/lit8 v27, v27, 0x1

    goto :goto_8
.end method

.method public setInitialStep(D)V
    .locals 3
    .param p1, "initialStep"    # D

    .prologue
    .line 140
    const-wide/16 v0, 0x0

    cmpg-double v0, p1, v0

    if-gtz v0, :cond_0

    .line 141
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    iput-wide v0, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    .line 145
    :goto_0
    return-void

    .line 143
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/optimization/general/NonLinearConjugateGradientOptimizer;->initialStep:D

    goto :goto_0
.end method
