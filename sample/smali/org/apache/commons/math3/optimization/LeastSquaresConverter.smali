.class public Lorg/apache/commons/math3/optimization/LeastSquaresConverter;
.super Ljava/lang/Object;
.source "LeastSquaresConverter.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/MultivariateFunction;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

.field private final observations:[D

.field private final scale:Lorg/apache/commons/math3/linear/RealMatrix;

.field private final weights:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D)V
    .locals 2
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p2, "observations"    # [D

    .prologue
    const/4 v1, 0x0

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 78
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->observations:[D

    .line 79
    iput-object v1, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->weights:[D

    .line 80
    iput-object v1, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 81
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[DLorg/apache/commons/math3/linear/RealMatrix;)V
    .locals 3
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p2, "observations"    # [D
    .param p3, "scale"    # Lorg/apache/commons/math3/linear/RealMatrix;

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    array-length v0, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 144
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    invoke-interface {p3}, Lorg/apache/commons/math3/linear/RealMatrix;->getColumnDimension()I

    move-result v2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 146
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 147
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->observations:[D

    .line 148
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->weights:[D

    .line 149
    invoke-interface {p3}, Lorg/apache/commons/math3/linear/RealMatrix;->copy()Lorg/apache/commons/math3/linear/RealMatrix;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 150
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;[D[D)V
    .locals 3
    .param p1, "function"    # Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;
    .param p2, "observations"    # [D
    .param p3, "weights"    # [D

    .prologue
    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    array-length v0, p2

    array-length v1, p3

    if-eq v0, v1, :cond_0

    .line 114
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p2

    array-length v2, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 116
    :cond_0
    iput-object p1, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    .line 117
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->observations:[D

    .line 118
    invoke-virtual {p3}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->weights:[D

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    .line 120
    return-void
.end method


# virtual methods
.method public value([D)D
    .locals 18
    .param p1, "point"    # [D

    .prologue
    .line 155
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->function:Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;

    move-object/from16 v0, p1

    invoke-interface {v7, v0}, Lorg/apache/commons/math3/analysis/MultivariateVectorFunction;->value([D)[D

    move-result-object v6

    .line 156
    .local v6, "residuals":[D
    array-length v7, v6

    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->observations:[D

    array-length v14, v14

    if-eq v7, v14, :cond_0

    .line 157
    new-instance v7, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v14, v6

    move-object/from16 v0, p0

    iget-object v15, v0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->observations:[D

    array-length v15, v15

    invoke-direct {v7, v14, v15}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v7

    .line 159
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v7, v6

    if-ge v3, v7, :cond_1

    .line 160
    aget-wide v14, v6, v3

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->observations:[D

    aget-wide v16, v7, v3

    sub-double v14, v14, v16

    aput-wide v14, v6, v3

    .line 159
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    const-wide/16 v10, 0x0

    .line 165
    .local v10, "sumSquares":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->weights:[D

    if-eqz v7, :cond_2

    .line 166
    const/4 v3, 0x0

    :goto_1
    array-length v7, v6

    if-ge v3, v7, :cond_4

    .line 167
    aget-wide v8, v6, v3

    .line 168
    .local v8, "ri":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->weights:[D

    aget-wide v14, v7, v3

    mul-double/2addr v14, v8

    mul-double/2addr v14, v8

    add-double/2addr v10, v14

    .line 166
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 170
    .end local v8    # "ri":D
    :cond_2
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    if-eqz v7, :cond_3

    .line 171
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/optimization/LeastSquaresConverter;->scale:Lorg/apache/commons/math3/linear/RealMatrix;

    invoke-interface {v7, v6}, Lorg/apache/commons/math3/linear/RealMatrix;->operate([D)[D

    move-result-object v2

    .local v2, "arr$":[D
    array-length v5, v2

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_2
    if-ge v4, v5, :cond_4

    aget-wide v12, v2, v4

    .line 172
    .local v12, "yi":D
    mul-double v14, v12, v12

    add-double/2addr v10, v14

    .line 171
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 175
    .end local v2    # "arr$":[D
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v12    # "yi":D
    :cond_3
    move-object v2, v6

    .restart local v2    # "arr$":[D
    array-length v5, v2

    .restart local v5    # "len$":I
    const/4 v4, 0x0

    .restart local v4    # "i$":I
    :goto_3
    if-ge v4, v5, :cond_4

    aget-wide v8, v2, v4

    .line 176
    .restart local v8    # "ri":D
    mul-double v14, v8, v8

    add-double/2addr v10, v14

    .line 175
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 180
    .end local v2    # "arr$":[D
    .end local v4    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "ri":D
    :cond_4
    return-wide v10
.end method
