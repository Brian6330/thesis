.class public Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;
.super Ljava/lang/Object;
.source "CorrelatedRandomVectorGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/RandomVectorGenerator;


# instance fields
.field private final generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

.field private final mean:[D

.field private final normalized:[D

.field private final root:Lorg/apache/commons/math3/linear/RealMatrix;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/linear/RealMatrix;DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 6
    .param p1, "covariance"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p2, "small"    # D
    .param p4, "generator"    # Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    invoke-interface {p1}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v2

    .line 119
    .local v2, "order":I
    new-array v3, v2, [D

    iput-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    .line 120
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 121
    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v1

    .line 120
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 124
    :cond_0
    new-instance v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;

    invoke-direct {v0, p1, p2, p3}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 126
    .local v0, "decomposition":Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 128
    iput-object p4, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 129
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRank()I

    move-result v3

    new-array v3, v3, [D

    iput-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    .line 131
    return-void
.end method

.method public constructor <init>([DLorg/apache/commons/math3/linear/RealMatrix;DLorg/apache/commons/math3/random/NormalizedRandomGenerator;)V
    .locals 5
    .param p1, "mean"    # [D
    .param p2, "covariance"    # Lorg/apache/commons/math3/linear/RealMatrix;
    .param p3, "small"    # D
    .param p5, "generator"    # Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    invoke-interface {p2}, Lorg/apache/commons/math3/linear/RealMatrix;->getRowDimension()I

    move-result v1

    .line 90
    .local v1, "order":I
    array-length v2, p1

    if-eq v2, v1, :cond_0

    .line 91
    new-instance v2, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v3, p1

    invoke-direct {v2, v3, v1}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v2

    .line 93
    :cond_0
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    .line 95
    new-instance v0, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;

    invoke-direct {v0, p2, p3, p4}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;-><init>(Lorg/apache/commons/math3/linear/RealMatrix;D)V

    .line 97
    .local v0, "decomposition":Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 99
    iput-object p5, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    .line 100
    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RectangularCholeskyDecomposition;->getRank()I

    move-result v2

    new-array v2, v2, [D

    iput-object v2, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    .line 102
    return-void
.end method


# virtual methods
.method public getGenerator()Lorg/apache/commons/math3/random/NormalizedRandomGenerator;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    return-object v0
.end method

.method public getRank()I
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    array-length v0, v0

    return v0
.end method

.method public getRootMatrix()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    return-object v0
.end method

.method public nextVector()[D
    .locals 10

    .prologue
    .line 167
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    array-length v3, v3

    if-ge v1, v3, :cond_0

    .line 168
    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    iget-object v4, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->generator:Lorg/apache/commons/math3/random/NormalizedRandomGenerator;

    invoke-interface {v4}, Lorg/apache/commons/math3/random/NormalizedRandomGenerator;->nextNormalizedDouble()D

    move-result-wide v4

    aput-wide v4, v3, v1

    .line 167
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 172
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    array-length v3, v3

    new-array v0, v3, [D

    .line 173
    .local v0, "correlated":[D
    const/4 v1, 0x0

    :goto_1
    array-length v3, v0

    if-ge v1, v3, :cond_2

    .line 174
    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->mean:[D

    aget-wide v4, v3, v1

    aput-wide v4, v0, v1

    .line 175
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_2
    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 176
    aget-wide v4, v0, v1

    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->root:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v3, v1, v2}, Lorg/apache/commons/math3/linear/RealMatrix;->getEntry(II)D

    move-result-wide v6

    iget-object v3, p0, Lorg/apache/commons/math3/random/CorrelatedRandomVectorGenerator;->normalized:[D

    aget-wide v8, v3, v2

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    aput-wide v4, v0, v1

    .line 175
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 173
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 180
    .end local v2    # "j":I
    :cond_2
    return-object v0
.end method
