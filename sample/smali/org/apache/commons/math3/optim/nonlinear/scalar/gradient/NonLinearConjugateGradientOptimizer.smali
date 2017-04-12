.class public Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;
.super Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;
.source "NonLinearConjugateGradientOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$1;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$BracketingStep;,
        Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    }
.end annotation


# instance fields
.field private final line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

.field private final preconditioner:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

.field private final updateFormula:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;)V
    .locals 11
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    const-wide v4, 0x3e45798ee2308c3aL    # 1.0E-8

    .line 125
    new-instance v10, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDD)V
    .locals 11
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .param p3, "relativeTolerance"    # D
    .param p5, "absoluteTolerance"    # D
    .param p7, "initialBracketingRange"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;DDD)V"
        }
    .end annotation

    .prologue
    .line 175
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    new-instance v10, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    .line 181
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V
    .locals 11
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .param p3, "relativeTolerance"    # D
    .param p5, "absoluteTolerance"    # D
    .param p7, "initialBracketingRange"    # D
    .param p9, "preconditioner"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;DDD",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;",
            ")V"
        }
    .end annotation

    .prologue
    .line 227
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-direct {p0, p2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;-><init>(Lorg/apache/commons/math3/optim/ConvergenceChecker;)V

    .line 229
    iput-object p1, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;

    .line 230
    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    .line 231
    new-instance v2, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    move-object v3, p0

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    invoke-direct/range {v2 .. v9}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/MultivariateOptimizer;DDD)V

    iput-object v2, p0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    .line 235
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;)V
    .locals 1
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .param p3, "lineSearchSolver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 148
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    new-instance v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;

    invoke-direct {v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$IdentityPreconditioner;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    .line 152
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V
    .locals 11
    .param p1, "updateFormula"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;
    .param p3, "lineSearchSolver"    # Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;
    .param p4, "preconditioner"    # Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;",
            "Lorg/apache/commons/math3/optim/ConvergenceChecker",
            "<",
            "Lorg/apache/commons/math3/optim/PointValuePair;",
            ">;",
            "Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;",
            "Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 198
    .local p2, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getRelativeAccuracy()D

    move-result-wide v4

    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v6

    invoke-interface {p3}, Lorg/apache/commons/math3/analysis/solvers/UnivariateSolver;->getAbsoluteAccuracy()D

    move-result-wide v8

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v10, p4

    invoke-direct/range {v1 .. v10}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;-><init>(Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;Lorg/apache/commons/math3/optim/ConvergenceChecker;DDDLorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;)V

    .line 204
    return-void
.end method

.method private checkParameters()V
    .locals 3

    .prologue
    .line 410
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getLowerBound()[D

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getUpperBound()[D

    move-result-object v0

    if-eqz v0, :cond_1

    .line 412
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CONSTRAINT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 414
    :cond_1
    return-void
.end method


# virtual methods
.method protected bridge synthetic doOptimize()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 46
    invoke-virtual {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected doOptimize()Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 32

    .prologue
    .line 250
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v6

    .line 251
    .local v6, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/optim/PointValuePair;>;"
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getStartPoint()[D

    move-result-object v20

    .line 252
    .local v20, "point":[D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getGoalType()Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-result-object v14

    .line 253
    .local v14, "goal":Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v16, v0

    .line 254
    .local v16, "n":I
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v22

    .line 255
    .local v22, "r":[D
    sget-object v25, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-object/from16 v0, v25

    if-ne v14, v0, :cond_0

    .line 256
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_0
    move/from16 v0, v16

    if-ge v15, v0, :cond_0

    .line 257
    aget-wide v28, v22, v15

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    aput-wide v28, v22, v15

    .line 256
    add-int/lit8 v15, v15, 0x1

    goto :goto_0

    .line 262
    .end local v15    # "i":I
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;->precondition([D[D)[D

    move-result-object v24

    .line 263
    .local v24, "steepestDescent":[D
    invoke-virtual/range {v24 .. v24}, [D->clone()Ljava/lang/Object;

    move-result-object v23

    check-cast v23, [D

    .line 265
    .local v23, "searchDirection":[D
    const-wide/16 v8, 0x0

    .line 266
    .local v8, "delta":D
    const/4 v15, 0x0

    .restart local v15    # "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v15, v0, :cond_1

    .line 267
    aget-wide v28, v22, v15

    aget-wide v30, v23, v15

    mul-double v28, v28, v30

    add-double v8, v8, v28

    .line 266
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 270
    :cond_1
    const/4 v7, 0x0

    .line 272
    .local v7, "current":Lorg/apache/commons/math3/optim/PointValuePair;
    :cond_2
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->incrementIterationCount()V

    .line 274
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->computeObjectiveValue([D)D

    move-result-wide v18

    .line 275
    .local v18, "objective":D
    move-object/from16 v21, v7

    .line 276
    .local v21, "previous":Lorg/apache/commons/math3/optim/PointValuePair;
    new-instance v7, Lorg/apache/commons/math3/optim/PointValuePair;

    .end local v7    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    move-object/from16 v0, v20

    move-wide/from16 v1, v18

    invoke-direct {v7, v0, v1, v2}, Lorg/apache/commons/math3/optim/PointValuePair;-><init>([DD)V

    .line 277
    .restart local v7    # "current":Lorg/apache/commons/math3/optim/PointValuePair;
    if-eqz v21, :cond_3

    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getIterations()I

    move-result v25

    move/from16 v0, v25

    move-object/from16 v1, v21

    invoke-interface {v6, v0, v1, v7}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 279
    return-object v7

    .line 282
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->line:Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/LineSearch;->search([D[D)Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Lorg/apache/commons/math3/optim/univariate/UnivariatePointValuePair;->getPoint()D

    move-result-wide v26

    .line 285
    .local v26, "step":D
    const/4 v15, 0x0

    :goto_3
    move-object/from16 v0, v20

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v15, v0, :cond_4

    .line 286
    aget-wide v28, v20, v15

    aget-wide v30, v23, v15

    mul-double v30, v30, v26

    add-double v28, v28, v30

    aput-wide v28, v20, v15

    .line 285
    add-int/lit8 v15, v15, 0x1

    goto :goto_3

    .line 289
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->computeObjectiveGradient([D)[D

    move-result-object v22

    .line 290
    sget-object v25, Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;->MINIMIZE:Lorg/apache/commons/math3/optim/nonlinear/scalar/GoalType;

    move-object/from16 v0, v25

    if-ne v14, v0, :cond_5

    .line 291
    const/4 v15, 0x0

    :goto_4
    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 292
    aget-wide v28, v22, v15

    move-wide/from16 v0, v28

    neg-double v0, v0

    move-wide/from16 v28, v0

    aput-wide v28, v22, v15

    .line 291
    add-int/lit8 v15, v15, 0x1

    goto :goto_4

    .line 297
    :cond_5
    move-wide v12, v8

    .line 298
    .local v12, "deltaOld":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->preconditioner:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;

    move-object/from16 v25, v0

    move-object/from16 v0, v25

    move-object/from16 v1, v20

    move-object/from16 v2, v22

    invoke-interface {v0, v1, v2}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/Preconditioner;->precondition([D[D)[D

    move-result-object v17

    .line 299
    .local v17, "newSteepestDescent":[D
    const-wide/16 v8, 0x0

    .line 300
    const/4 v15, 0x0

    :goto_5
    move/from16 v0, v16

    if-ge v15, v0, :cond_6

    .line 301
    aget-wide v28, v22, v15

    aget-wide v30, v17, v15

    mul-double v28, v28, v30

    add-double v8, v8, v28

    .line 300
    add-int/lit8 v15, v15, 0x1

    goto :goto_5

    .line 305
    :cond_6
    sget-object v25, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$1;->$SwitchMap$org$apache$commons$math3$optim$nonlinear$scalar$gradient$NonLinearConjugateGradientOptimizer$Formula:[I

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->updateFormula:Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer$Formula;->ordinal()I

    move-result v28

    aget v25, v25, v28

    packed-switch v25, :pswitch_data_0

    .line 318
    new-instance v25, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct/range {v25 .. v25}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v25

    .line 307
    :pswitch_0
    div-double v4, v8, v12

    .line 320
    .local v4, "beta":D
    :goto_6
    move-object/from16 v24, v17

    .line 323
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->getIterations()I

    move-result v25

    rem-int v25, v25, v16

    if-eqz v25, :cond_7

    const-wide/16 v28, 0x0

    cmpg-double v25, v4, v28

    if-gez v25, :cond_9

    .line 326
    :cond_7
    invoke-virtual/range {v24 .. v24}, [D->clone()Ljava/lang/Object;

    move-result-object v23

    .end local v23    # "searchDirection":[D
    check-cast v23, [D

    .restart local v23    # "searchDirection":[D
    goto/16 :goto_2

    .line 310
    .end local v4    # "beta":D
    :pswitch_1
    const-wide/16 v10, 0x0

    .line 311
    .local v10, "deltaMid":D
    const/4 v15, 0x0

    :goto_7
    move-object/from16 v0, v22

    array-length v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v15, v0, :cond_8

    .line 312
    aget-wide v28, v22, v15

    aget-wide v30, v24, v15

    mul-double v28, v28, v30

    add-double v10, v10, v28

    .line 311
    add-int/lit8 v15, v15, 0x1

    goto :goto_7

    .line 314
    :cond_8
    sub-double v28, v8, v10

    div-double v4, v28, v12

    .line 315
    .restart local v4    # "beta":D
    goto :goto_6

    .line 329
    .end local v10    # "deltaMid":D
    :cond_9
    const/4 v15, 0x0

    :goto_8
    move/from16 v0, v16

    if-ge v15, v0, :cond_2

    .line 330
    aget-wide v28, v24, v15

    aget-wide v30, v23, v15

    mul-double v30, v30, v4

    add-double v28, v28, v30

    aput-wide v28, v23, v15

    .line 329
    add-int/lit8 v15, v15, 0x1

    goto :goto_8

    .line 305
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 46
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method public varargs optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;
    .locals 1
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/TooManyEvaluationsException;
        }
    .end annotation

    .prologue
    .line 244
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->optimize([Lorg/apache/commons/math3/optim/OptimizationData;)Lorg/apache/commons/math3/optim/PointValuePair;

    move-result-object v0

    return-object v0
.end method

.method protected varargs parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V
    .locals 0
    .param p1, "optData"    # [Lorg/apache/commons/math3/optim/OptimizationData;

    .prologue
    .line 342
    invoke-super {p0, p1}, Lorg/apache/commons/math3/optim/nonlinear/scalar/GradientMultivariateOptimizer;->parseOptimizationData([Lorg/apache/commons/math3/optim/OptimizationData;)V

    .line 344
    invoke-direct {p0}, Lorg/apache/commons/math3/optim/nonlinear/scalar/gradient/NonLinearConjugateGradientOptimizer;->checkParameters()V

    .line 345
    return-void
.end method
