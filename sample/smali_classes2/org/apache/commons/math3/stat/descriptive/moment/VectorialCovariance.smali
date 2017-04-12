.class public Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;
.super Ljava/lang/Object;
.source "VectorialCovariance.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x392765e4037ab55eL


# instance fields
.field private final isBiasCorrected:Z

.field private n:J

.field private final productsSums:[D

.field private final sums:[D


# direct methods
.method public constructor <init>(IZ)V
    .locals 2
    .param p1, "dimension"    # I
    .param p2, "isBiasCorrected"    # Z

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    new-array v0, p1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    .line 54
    add-int/lit8 v0, p1, 0x1

    mul-int/2addr v0, p1

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    .line 55
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    .line 56
    iput-boolean p2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    .line 57
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x0

    .line 115
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    .line 116
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 117
    iget-object v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 118
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 135
    if-ne p0, p1, :cond_1

    .line 154
    :cond_0
    :goto_0
    return v1

    .line 138
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    if-nez v3, :cond_2

    move v1, v2

    .line 139
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 141
    check-cast v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;

    .line 142
    .local v0, "other":Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;
    iget-boolean v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    iget-boolean v4, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    if-eq v3, v4, :cond_3

    move v1, v2

    .line 143
    goto :goto_0

    .line 145
    :cond_3
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    iget-wide v6, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    cmp-long v3, v4, v6

    if-eqz v3, :cond_4

    move v1, v2

    .line 146
    goto :goto_0

    .line 148
    :cond_4
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    iget-object v4, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v3

    if-nez v3, :cond_5

    move v1, v2

    .line 149
    goto :goto_0

    .line 151
    :cond_5
    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    iget-object v4, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([D[D)Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 152
    goto :goto_0
.end method

.method public getN()J
    .locals 2

    .prologue
    .line 108
    iget-wide v0, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    return-wide v0
.end method

.method public getResult()Lorg/apache/commons/math3/linear/RealMatrix;
    .locals 20

    .prologue
    .line 84
    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    array-length v4, v12

    .line 85
    .local v4, "dimension":I
    invoke-static {v4, v4}, Lorg/apache/commons/math3/linear/MatrixUtils;->createRealMatrix(II)Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v11

    .line 87
    .local v11, "result":Lorg/apache/commons/math3/linear/RealMatrix;
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    const-wide/16 v14, 0x1

    cmp-long v12, v12, v14

    if-lez v12, :cond_2

    .line 88
    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    move-wide/from16 v16, v0

    move-object/from16 v0, p0

    iget-boolean v12, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    if-eqz v12, :cond_0

    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    const-wide/16 v18, 0x1

    sub-long v12, v12, v18

    :goto_0
    mul-long v12, v12, v16

    long-to-double v12, v12

    div-double v2, v14, v12

    .line 89
    .local v2, "c":D
    const/4 v9, 0x0

    .line 90
    .local v9, "k":I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    if-ge v5, v4, :cond_2

    .line 91
    const/4 v8, 0x0

    .local v8, "j":I
    move v10, v9

    .end local v9    # "k":I
    .local v10, "k":I
    :goto_2
    if-gt v8, v5, :cond_1

    .line 92
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    long-to-double v12, v12

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    add-int/lit8 v9, v10, 0x1

    .end local v10    # "k":I
    .restart local v9    # "k":I
    aget-wide v14, v14, v10

    mul-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    aget-wide v14, v14, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v8

    mul-double v14, v14, v16

    sub-double/2addr v12, v14

    mul-double v6, v2, v12

    .line 93
    .local v6, "e":D
    invoke-interface {v11, v5, v8, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 94
    invoke-interface {v11, v8, v5, v6, v7}, Lorg/apache/commons/math3/linear/RealMatrix;->setEntry(IID)V

    .line 91
    add-int/lit8 v8, v8, 0x1

    move v10, v9

    .end local v9    # "k":I
    .restart local v10    # "k":I
    goto :goto_2

    .line 88
    .end local v2    # "c":D
    .end local v5    # "i":I
    .end local v6    # "e":D
    .end local v8    # "j":I
    .end local v10    # "k":I
    :cond_0
    move-object/from16 v0, p0

    iget-wide v12, v0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    goto :goto_0

    .line 90
    .restart local v2    # "c":D
    .restart local v5    # "i":I
    .restart local v8    # "j":I
    .restart local v10    # "k":I
    :cond_1
    add-int/lit8 v5, v5, 0x1

    move v9, v10

    .end local v10    # "k":I
    .restart local v9    # "k":I
    goto :goto_1

    .line 99
    .end local v2    # "c":D
    .end local v5    # "i":I
    .end local v8    # "j":I
    .end local v9    # "k":I
    :cond_2
    return-object v11
.end method

.method public hashCode()I
    .locals 8

    .prologue
    .line 123
    const/16 v0, 0x1f

    .line 124
    .local v0, "prime":I
    const/4 v1, 0x1

    .line 125
    .local v1, "result":I
    iget-boolean v2, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->isBiasCorrected:Z

    if-eqz v2, :cond_0

    const/16 v2, 0x4cf

    :goto_0
    add-int/lit8 v1, v2, 0x1f

    .line 126
    mul-int/lit8 v2, v1, 0x1f

    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    iget-wide v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    const/16 v3, 0x20

    ushr-long/2addr v6, v3

    xor-long/2addr v4, v6

    long-to-int v3, v4

    add-int v1, v2, v3

    .line 127
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([D)I

    move-result v3

    add-int v1, v2, v3

    .line 128
    mul-int/lit8 v2, v1, 0x1f

    iget-object v3, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    invoke-static {v3}, Ljava/util/Arrays;->hashCode([D)I

    move-result v3

    add-int v1, v2, v3

    .line 129
    return v1

    .line 125
    :cond_0
    const/16 v2, 0x4d5

    goto :goto_0
.end method

.method public increment([D)V
    .locals 12
    .param p1, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 65
    array-length v4, p1

    iget-object v5, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    array-length v5, v5

    if-eq v4, v5, :cond_0

    .line 66
    new-instance v4, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v5, p1

    iget-object v6, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    array-length v6, v6

    invoke-direct {v4, v5, v6}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v4

    .line 68
    :cond_0
    const/4 v2, 0x0

    .line 69
    .local v2, "k":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v4, p1

    if-ge v0, v4, :cond_2

    .line 70
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->sums:[D

    aget-wide v6, v4, v0

    aget-wide v8, p1, v0

    add-double/2addr v6, v8

    aput-wide v6, v4, v0

    .line 71
    const/4 v1, 0x0

    .local v1, "j":I
    move v3, v2

    .end local v2    # "k":I
    .local v3, "k":I
    :goto_1
    if-gt v1, v0, :cond_1

    .line 72
    iget-object v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->productsSums:[D

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "k":I
    .restart local v2    # "k":I
    aget-wide v6, v4, v3

    aget-wide v8, p1, v0

    aget-wide v10, p1, v1

    mul-double/2addr v8, v10

    add-double/2addr v6, v8

    aput-wide v6, v4, v3

    .line 71
    add-int/lit8 v1, v1, 0x1

    move v3, v2

    .end local v2    # "k":I
    .restart local v3    # "k":I
    goto :goto_1

    .line 69
    :cond_1
    add-int/lit8 v0, v0, 0x1

    move v2, v3

    .end local v3    # "k":I
    .restart local v2    # "k":I
    goto :goto_0

    .line 75
    .end local v1    # "j":I
    :cond_2
    iget-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    iput-wide v4, p0, Lorg/apache/commons/math3/stat/descriptive/moment/VectorialCovariance;->n:J

    .line 76
    return-void
.end method
