.class public Lorg/apache/commons/math3/linear/JacobiPreconditioner;
.super Lorg/apache/commons/math3/linear/RealLinearOperator;
.source "JacobiPreconditioner.java"


# instance fields
.field private final diag:Lorg/apache/commons/math3/linear/ArrayRealVector;


# direct methods
.method public constructor <init>([DZ)V
    .locals 1
    .param p1, "diag"    # [D
    .param p2, "deep"    # Z

    .prologue
    .line 42
    invoke-direct {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;-><init>()V

    .line 43
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v0, p1, p2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    .line 44
    return-void
.end method

.method public static create(Lorg/apache/commons/math3/linear/RealLinearOperator;)Lorg/apache/commons/math3/linear/JacobiPreconditioner;
    .locals 8
    .param p0, "a"    # Lorg/apache/commons/math3/linear/RealLinearOperator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/linear/NonSquareOperatorException;
        }
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getColumnDimension()I

    move-result v3

    .line 62
    .local v3, "n":I
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v5

    if-eq v5, v3, :cond_0

    .line 63
    new-instance v5, Lorg/apache/commons/math3/linear/NonSquareOperatorException;

    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealLinearOperator;->getRowDimension()I

    move-result v6

    invoke-direct {v5, v6, v3}, Lorg/apache/commons/math3/linear/NonSquareOperatorException;-><init>(II)V

    throw v5

    .line 65
    :cond_0
    new-array v0, v3, [D

    .line 66
    .local v0, "diag":[D
    instance-of v5, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    if-eqz v5, :cond_1

    move-object v2, p0

    .line 67
    check-cast v2, Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    .line 68
    .local v2, "m":Lorg/apache/commons/math3/linear/AbstractRealMatrix;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v3, :cond_2

    .line 69
    invoke-virtual {v2, v1, v1}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v6

    aput-wide v6, v0, v1

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    .end local v1    # "i":I
    .end local v2    # "m":Lorg/apache/commons/math3/linear/AbstractRealMatrix;
    :cond_1
    new-instance v4, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-direct {v4, v3}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>(I)V

    .line 73
    .local v4, "x":Lorg/apache/commons/math3/linear/ArrayRealVector;
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_1
    if-ge v1, v3, :cond_2

    .line 74
    const-wide/16 v6, 0x0

    invoke-virtual {v4, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->set(D)V

    .line 75
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v4, v1, v6, v7}, Lorg/apache/commons/math3/linear/ArrayRealVector;->setEntry(ID)V

    .line 76
    invoke-virtual {p0, v4}, Lorg/apache/commons/math3/linear/RealLinearOperator;->operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;

    move-result-object v5

    invoke-virtual {v5, v1}, Lorg/apache/commons/math3/linear/RealVector;->getEntry(I)D

    move-result-wide v6

    aput-wide v6, v0, v1

    .line 73
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 79
    .end local v4    # "x":Lorg/apache/commons/math3/linear/ArrayRealVector;
    :cond_2
    new-instance v5, Lorg/apache/commons/math3/linear/JacobiPreconditioner;

    const/4 v6, 0x0

    invoke-direct {v5, v0, v6}, Lorg/apache/commons/math3/linear/JacobiPreconditioner;-><init>([DZ)V

    return-object v5
.end method


# virtual methods
.method public getColumnDimension()I
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public getRowDimension()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/ArrayRealVector;->getDimension()I

    move-result v0

    return v0
.end method

.method public operate(Lorg/apache/commons/math3/linear/RealVector;)Lorg/apache/commons/math3/linear/RealVector;
    .locals 3
    .param p1, "x"    # Lorg/apache/commons/math3/linear/RealVector;

    .prologue
    .line 98
    new-instance v0, Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->toArray()[D

    move-result-object v1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    invoke-virtual {v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->toArray()[D

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/math3/util/MathArrays;->ebeDivide([D[D)[D

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;-><init>([DZ)V

    return-object v0
.end method

.method public sqrt()Lorg/apache/commons/math3/linear/RealLinearOperator;
    .locals 3

    .prologue
    .line 112
    iget-object v1, p0, Lorg/apache/commons/math3/linear/JacobiPreconditioner;->diag:Lorg/apache/commons/math3/linear/ArrayRealVector;

    new-instance v2, Lorg/apache/commons/math3/analysis/function/Sqrt;

    invoke-direct {v2}, Lorg/apache/commons/math3/analysis/function/Sqrt;-><init>()V

    invoke-virtual {v1, v2}, Lorg/apache/commons/math3/linear/ArrayRealVector;->map(Lorg/apache/commons/math3/analysis/UnivariateFunction;)Lorg/apache/commons/math3/linear/ArrayRealVector;

    move-result-object v0

    .line 113
    .local v0, "sqrtDiag":Lorg/apache/commons/math3/linear/RealVector;
    new-instance v1, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;

    invoke-direct {v1, p0, v0}, Lorg/apache/commons/math3/linear/JacobiPreconditioner$1;-><init>(Lorg/apache/commons/math3/linear/JacobiPreconditioner;Lorg/apache/commons/math3/linear/RealVector;)V

    return-object v1
.end method
