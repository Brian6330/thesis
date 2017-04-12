.class final enum Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition$1;
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
    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$1;)V

    return-void
.end method


# virtual methods
.method protected solve(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 8
    .param p1, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "residuals"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 67
    :try_start_0
    # invokes: Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->computeNormalMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    invoke-static {p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->access$100(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v3

    .line 69
    .local v3, "normalEquation":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;>;"
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/linear/RealMatrix;

    .line 70
    .local v2, "normal":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-virtual {v3}, Lorg/apache/commons/math3/util/Pair;->getSecond()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/commons/math3/linear/RealVector;

    .line 71
    .local v1, "jTr":Lorg/apache/commons/math3/linear/RealVector;
    new-instance v4, Lorg/apache/commons/math3/linear/LUDecomposition;

    const-wide v6, 0x3da5fd7fe1796495L    # 1.0E-11

    invoke-direct {v4, v2, v6, v7}, Lorg/apache/commons/math3/linear/LUDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v4}, Lorg/apache/commons/math3/linear/LUDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v4

    invoke-interface {v4, v1}, Lorg/apache/commons/math3/linear/DecompositionSolver;->solve(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    :try_end_0
    .catch Lorg/apache/commons/math3/linear/SingularMatrixException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 74
    .end local v1    # "jTr":Lorg/apache/commons/math3/linear/RealVector;
    .end local v2    # "normal":Lorg/apache/commons/math3/linear/RealMatrix;
    .end local v3    # "normalEquation":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;>;"
    :catch_0
    move-exception v0

    .line 75
    .local v0, "e":Lorg/apache/commons/math3/linear/SingularMatrixException;
    new-instance v4, Lorg/apache/commons/math3/exception/ConvergenceException;

    sget-object v5, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNABLE_TO_SOLVE_SINGULAR_PROBLEM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/ConvergenceException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v4
.end method
