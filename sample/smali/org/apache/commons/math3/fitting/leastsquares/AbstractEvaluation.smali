.class public abstract Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;
.super Ljava/lang/Object;
.source "AbstractEvaluation.java"

# interfaces
.implements Lorg/apache/commons/math3/fitting/leastsquares/LeastSquaresProblem$Evaluation;


# instance fields
.field private final observationSize:I


# direct methods
.method constructor <init>(I)V
    .locals 0
    .param p1, "observationSize"    # I

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput p1, p0, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->observationSize:I

    .line 48
    return-void
.end method


# virtual methods
.method public getCost()D
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getResiduals()Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    .line 84
    .local v0, "r":Lorg/apache/commons/math3/linear/ArrayRealVector;
    invoke-virtual {v0, v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->dotProduct(Lorg/apache/commons/math3/linear/RealVector;)D

    move-result-wide v2

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 5
    .param p1, "threshold"    # D

    .prologue
    .line 53
    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getJacobian()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 56
    .local v0, "j":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->transpose()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    invoke-interface {v3, v0}, Lorg/apache/commons/math3/linear/RealMatrix;->multiply(Lorg/apache/commons/math3/linear/RealMatrix;)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v1

    .line 59
    .local v1, "jTj":Lorg/apache/commons/math3/linear/RealMatrix;
    new-instance v3, Lorg/apache/commons/math3/linear/QRDecomposition;

    invoke-direct {v3, v1, p1, p2}, Lorg/apache/commons/math3/linear/QRDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    invoke-virtual {v3}, Lorg/apache/commons/math3/linear/QRDecomposition;->getSolver()Lorg/apache/commons/math3/linear/DecompositionSolver;

    move-result-object v2

    .line 61
    .local v2, "solver":Lorg/apache/commons/math3/linear/DecompositionSolver;
    invoke-interface {v2}, Lorg/apache/commons/math3/linear/DecompositionSolver;->getInverse()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    return-object v3
.end method

.method public getRMS()D
    .locals 6

    .prologue
    .line 77
    invoke-virtual {p0}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getCost()D

    move-result-wide v0

    .line 78
    .local v0, "cost":D
    mul-double v2, v0, v0

    iget v4, p0, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->observationSize:I

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    return-wide v2
.end method

.method public getSigma(D)Lorg/apache/commons/math3/linear/RealVector;
    .locals 7
    .param p1, "covarianceSingularityThreshold"    # D

    .prologue
    .line 66
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/fitting/leastsquares/AbstractEvaluation;->getCovariances(D)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    .line 67
    .local v0, "cov":Lorg/apache/commons/math3/linear/RealMatrix;
    invoke-interface {v0}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    .line 68
    .local v2, "nC":I
    new-instance v3, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v3, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 69
    .local v3, "sig":Lorg/apache/commons/math3/linear/RealVector;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 70
    invoke-interface {v0, v1, v1}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v4

    invoke-static {v4, v5}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v4

    invoke-virtual {v3, v1, v4, v5}, Lorg/apache/commons/math3/linear/RealVector;->setEntry(ID)V

    .line 69
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    return-object v3
.end method
