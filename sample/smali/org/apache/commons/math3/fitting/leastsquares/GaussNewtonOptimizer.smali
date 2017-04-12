.class public Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;
.super Ljava/lang/Object;
.source "GaussNewtonOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$1;,
        Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
    }
.end annotation


# static fields
.field private static final SINGULARITY_THRESHOLD:D = 1.0E-11


# instance fields
.field private final decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->QR:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;)V

    .line 175
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;)V
    .locals 0
    .param p1, "decomposition"    # Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    .prologue
    .line 183
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 184
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    .line 185
    return-void
.end method

.method static synthetic access$100(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "x1"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 49
    invoke-static {p0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->computeNormalMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method private static computeNormalMatrix(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/util/Pair;
    .locals 14
    .param p0, "jacobian"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p1, "residuals"    # Lorg/apache/commons/math3/linear/RealVector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            ")",
            "Lorg/apache/commons/math3/util/Pair",
            "<",
            "Lorg/apache/commons/math3/linear/RealMatrix;",
            "Lorg/apache/commons/math3/linear/RealVector;",
            ">;"
        }
    .end annotation

    .prologue
    .line 269
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v6

    .line 270
    .local v6, "nR":I
    invoke-interface {p0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v5

    .line 272
    .local v5, "nC":I
    invoke-static {v5, v5}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v7

    .line 273
    .local v7, "normal":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v2, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v2, v5}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 275
    .local v2, "jTr":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v6, :cond_3

    .line 277
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v5, :cond_0

    .line 278
    invoke-virtual {v2, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v8

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v10

    invoke-interface {p0, v0, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-virtual {v2, v1, v8, v9}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 277
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 283
    :cond_0
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_2
    if-ge v3, v5, :cond_2

    .line 285
    move v4, v3

    .local v4, "l":I
    :goto_3
    if-ge v4, v5, :cond_1

    .line 286
    invoke-interface {v7, v3, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-interface {p0, v0, v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v10

    invoke-interface {p0, v0, v4}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v12

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-interface {v7, v3, v4, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 285
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 283
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 275
    .end local v4    # "l":I
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 292
    .end local v1    # "j":I
    .end local v3    # "k":I
    :cond_3
    const/4 v0, 0x0

    :goto_4
    if-ge v0, v5, :cond_5

    .line 293
    const/4 v1, 0x0

    .restart local v1    # "j":I
    :goto_5
    if-ge v1, v0, :cond_4

    .line 294
    invoke-interface {v7, v1, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v8

    invoke-interface {v7, v0, v1, v8, v9}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 293
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 292
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 297
    .end local v1    # "j":I
    :cond_5
    new-instance v8, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v8, v7, v2}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8
.end method


# virtual methods
.method public getDecomposition()Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    return-object v0
.end method

.method public optimize(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresOptimizer$Optimum;
    .locals 12
    .param p1, "lsp"    # Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;

    .prologue
    .line 209
    invoke-interface {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getEvaluationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v5

    .line 210
    .local v5, "evaluationCounter":Lorg/apache/commons/math3/util/Incrementor;
    invoke-interface {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getIterationCounter()Lorg/apache/commons/math3/util/Incrementor;

    move-result-object v6

    .line 211
    .local v6, "iterationCounter":Lorg/apache/commons/math3/util/Incrementor;
    invoke-interface {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getConvergenceChecker()Lorg/apache/commons/math3/optim/ConvergenceChecker;

    move-result-object v0

    .line 215
    .local v0, "checker":Lorg/apache/commons/math3/optim/ConvergenceChecker;, "Lorg/apache/commons/math3/optim/ConvergenceChecker<Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;>;"
    if-nez v0, :cond_0

    .line 216
    new-instance v9, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v9}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v9

    .line 219
    :cond_0
    invoke-interface {p1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->getStart()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    .line 222
    .local v2, "currentPoint":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v1, 0x0

    .line 224
    .local v1, "current":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    :goto_0
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 227
    move-object v7, v1

    .line 229
    .local v7, "previous":Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;
    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Incrementor;->incrementCount()V

    .line 230
    invoke-interface {p1, v2}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem;->evaluate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;

    move-result-object v1

    .line 231
    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v3

    .line 232
    .local v3, "currentResiduals":Lorg/apache/commons/math3/linear/RealVector;
    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v8

    .line 233
    .local v8, "weightedJacobian":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v1}, Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;->getPoint()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    .line 236
    if-eqz v7, :cond_1

    .line 237
    invoke-virtual {v6}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v9

    invoke-interface {v0, v9, v7, v1}, Lorg/apache/commons/math3/optim/ConvergenceChecker;->converged(ILjava/lang/Object;Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 238
    new-instance v9, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;

    invoke-virtual {v5}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v10

    invoke-virtual {v6}, Lorg/apache/commons/math3/util/Incrementor;->getCount()I

    move-result v11

    invoke-direct {v9, v1, v10, v11}, Lorg/apache/commons/math3/fitting/leastsquares/OptimumImpl;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;II)V

    return-object v9

    .line 246
    :cond_1
    iget-object v9, p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-virtual {v9, v8, v3}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;->solve(Lorg/apache/commons/math3/linear/RealMatrix;Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v4

    .line 248
    .local v4, "dX":Lorg/apache/commons/math3/linear/RealVector;
    invoke-virtual {v2, v4}, Lorg/apache/commons/math3/linear/RealVector;->add(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v2

    .line 249
    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 254
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "GaussNewtonOptimizer{decomposition="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;->decomposition:Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public withDecomposition(Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;)Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;
    .locals 1
    .param p1, "newDecomposition"    # Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;

    .prologue
    .line 203
    new-instance v0, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer;-><init>(Lorg/apache/commons/math3/fitting/leastsquares/GaussNewtonOptimizer$Decomposition;)V

    return-object v0
.end method
