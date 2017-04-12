.class final enum Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$3;
.super Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
.source "GaussNewtonOptimizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$1;)V

    return-void
.end method


# virtual methods
.method protected solve(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 9
    .param p1, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "residuals"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 113
    :try_start_0
    # invokes: Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->computeNormalMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->access$100(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v8

    .line 115
    .local v8, "normalEquation":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;>;"
    invoke-virtual {v8}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealMatrix;

    .line 116
    .local v1, "normal":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {v8}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/commons/math3/linear/RealVector;

    .line 117
    .local v7, "jTr":Lorg/apache/commons/math3/linear/RealVector;
    new-instance v0, Lorg/apache/commons/math3/linear/CholeskyDecomposition;

    const-wide v2, 0x3da5fd7fe1796495L    # 1.0E-11

    const-wide v4, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-direct/range {v0 .. v5}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;DD)V

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/CholeskyDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v0

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    .line 121
    .end local v1    # "normal":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v7    # "jTr":Lorg/apache/commons/math3/linear/RealVector;
    .end local v8    # "normalEquation":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;>;"
    :catch_0
    move-exception v6

    .line 122
    .local v6, "e":Lorg/apache/commons/math3/linear/NonPositiveDefiniteMatrixException;
    new-instance v0, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v2, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    invoke-direct {v0, v2, v3}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
.end method
