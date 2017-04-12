.class public Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;
.super Ljava/lang/Object;
.source "NonLinearLeastSquaresSolver.java"


# static fields
.field protected static final MAXNUMBEROFITERATIONS:I = 0x3e8


# instance fields
.field protected final function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

.field protected final leastSquaresOptimizer:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;


# direct methods
.method public constructor <init>(Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;)V
    .locals 0
    .param p1, "function"    # Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;
    .param p2, "leastSquaresOptimizer"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    .line 26
    iput-object p2, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->leastSquaresOptimizer:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;

    .line 27
    return-void
.end method


# virtual methods
.method public solve()Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->solve(Z)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    move-result-object v0

    return-object v0
.end method

.method public solve(Z)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 14
    .param p1, "debugInfo"    # Z

    .prologue
    .line 49
    iget-object v10, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    invoke-virtual {v10}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v10

    array-length v4, v10

    .line 50
    .local v4, "numberOfPositions":I
    iget-object v10, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    invoke-virtual {v10}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v10

    const/4 v11, 0x0

    aget-object v10, v10, v11

    array-length v6, v10

    .line 52
    .local v6, "positionDimension":I
    new-array v2, v6, [D

    .line 54
    .local v2, "initialPoint":[D
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v10, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    invoke-virtual {v10}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v10

    array-length v10, v10

    if-ge v1, v10, :cond_1

    .line 55
    iget-object v10, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    invoke-virtual {v10}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getPositions()[[D

    move-result-object v10

    aget-object v8, v10, v1

    .line 56
    .local v8, "vertex":[D
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    array-length v10, v8

    if-ge v3, v10, :cond_0

    .line 57
    aget-wide v10, v2, v3

    aget-wide v12, v8, v3

    add-double/2addr v10, v12

    aput-wide v10, v2, v3

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 54
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 60
    .end local v3    # "j":I
    .end local v8    # "vertex":[D
    :cond_1
    const/4 v3, 0x0

    .restart local v3    # "j":I
    :goto_2
    array-length v10, v2

    if-ge v3, v10, :cond_2

    .line 61
    aget-wide v10, v2, v3

    int-to-double v12, v4

    div-double/2addr v10, v12

    aput-wide v10, v2, v3

    .line 60
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 64
    :cond_2
    if-eqz p1, :cond_4

    .line 65
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v10, "initialPoint: "

    invoke-direct {v5, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    .local v5, "output":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    :goto_3
    array-length v10, v2

    if-ge v1, v10, :cond_3

    .line 67
    aget-wide v10, v2, v1

    invoke-virtual {v5, v10, v11}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 69
    :cond_3
    sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 72
    .end local v5    # "output":Ljava/lang/StringBuilder;
    :cond_4
    new-array v7, v4, [D

    .line 73
    .local v7, "target":[D
    iget-object v10, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    invoke-virtual {v10}, Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;->getDistances()[D

    move-result-object v0

    .line 74
    .local v0, "distances":[D
    array-length v10, v7

    new-array v9, v10, [D

    .line 76
    .local v9, "weights":[D
    const/4 v1, 0x0

    :goto_4
    array-length v10, v7

    if-ge v1, v10, :cond_5

    .line 77
    const-wide/16 v10, 0x0

    aput-wide v10, v7, v1

    .line 79
    aget-wide v10, v0, v1

    aget-wide v12, v0, v1

    mul-double/2addr v10, v12

    aput-wide v10, v9, v1

    .line 76
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 82
    :cond_5
    invoke-virtual {p0, v7, v9, v2, p1}, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->solve([D[D[DZ)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    move-result-object v10

    return-object v10
.end method

.method public solve([D[D[D)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 1
    .param p1, "target"    # [D
    .param p2, "weights"    # [D
    .param p3, "initialPoint"    # [D

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->solve([D[D[DZ)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    move-result-object v0

    return-object v0
.end method

.method public solve([D[D[DZ)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 8
    .param p1, "target"    # [D
    .param p2, "weights"    # [D
    .param p3, "initialPoint"    # [D
    .param p4, "debugInfo"    # Z

    .prologue
    const/16 v5, 0x3e8

    const/4 v3, 0x0

    .line 30
    if-eqz p4, :cond_0

    .line 31
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string v1, "Max Number of Iterations : 1000"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 34
    :cond_0
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->function:Linfo/smapper/smapper/algorithms/trilateration/TrilaterationFunction;

    new-instance v1, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v1, p1, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, p3, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    new-instance v3, Lorg/apache/commons/math3/linear/DiagonalMatrix;

    invoke-direct {v3, p2}, Lorg/apache/commons/math3/linear/DiagonalMatrix;-><init>([D)V

    const/4 v4, 0x0

    move v6, v5

    invoke-static/range {v0 .. v6}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresFactory;->create(Lorg/apache/commons/math3/fitting/leastsquares/MultivariateJacobianFunction;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealVector;Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/optim/ConvergenceChecker;II)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    move-result-object v7

    .line 41
    .local v7, "leastSquaresProblem":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;
    iget-object v0, p0, Linfo/smapper/smapper/algorithms/trilateration/NonLinearLeastSquaresSolver;->leastSquaresOptimizer:Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;

    invoke-interface {v0, v7}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;->optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;

    move-result-object v0

    return-object v0
.end method
