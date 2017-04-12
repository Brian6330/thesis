.class public Lorg/apache/commons/math3/complex/RootsOfUnity;
.super Ljava/lang/Object;
.source "RootsOfUnity.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x1330289L


# instance fields
.field private isCounterClockWise:Z

.field private omegaCount:I

.field private omegaImaginaryClockwise:[D

.field private omegaImaginaryCounterClockwise:[D

.field private omegaReal:[D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    .line 71
    iput-object v1, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    .line 72
    iput-object v1, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    .line 73
    iput-object v1, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    .line 74
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    .line 75
    return-void
.end method


# virtual methods
.method public declared-synchronized computeRoots(I)V
    .locals 14
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/ZeroException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x0

    .line 118
    monitor-enter p0

    if-nez p1, :cond_0

    .line 119
    :try_start_0
    new-instance v8, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v9, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CANNOT_COMPUTE_0TH_ROOT_OF_UNITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-direct {v8, v9, v10}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 118
    :catchall_0
    move-exception v8

    monitor-exit p0

    throw v8

    .line 123
    :cond_0
    if-lez p1, :cond_1

    const/4 v8, 0x1

    :cond_1
    :try_start_1
    iput-boolean v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    .line 126
    invoke-static {p1}, Lorg/apache/commons/math3/util/FastMath;->abs(I)I

    move-result v0

    .line 128
    .local v0, "absN":I
    iget v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne v0, v8, :cond_2

    .line 150
    :goto_0
    monitor-exit p0

    return-void

    .line 133
    :cond_2
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    int-to-double v10, v0

    div-double v6, v8, v10

    .line 134
    .local v6, "t":D
    :try_start_2
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v2

    .line 135
    .local v2, "cosT":D
    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    .line 136
    .local v4, "sinT":D
    new-array v8, v0, [D

    iput-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    .line 137
    new-array v8, v0, [D

    iput-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    .line 138
    new-array v8, v0, [D

    iput-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    .line 139
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    const/4 v9, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v8, v9

    .line 140
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 141
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v8, v9

    .line 142
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_1
    if-ge v1, v0, :cond_3

    .line 143
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    add-int/lit8 v10, v1, -0x1

    aget-wide v10, v9, v10

    mul-double/2addr v10, v2

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    add-int/lit8 v12, v1, -0x1

    aget-wide v12, v9, v12

    mul-double/2addr v12, v4

    sub-double/2addr v10, v12

    aput-wide v10, v8, v1

    .line 145
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    add-int/lit8 v10, v1, -0x1

    aget-wide v10, v9, v10

    mul-double/2addr v10, v4

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    add-int/lit8 v12, v1, -0x1

    aget-wide v12, v9, v12

    mul-double/2addr v12, v2

    add-double/2addr v10, v12

    aput-wide v10, v8, v1

    .line 147
    iget-object v8, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    iget-object v9, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    aget-wide v10, v9, v1

    neg-double v10, v10

    aput-wide v10, v8, v1

    .line 142
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 149
    :cond_3
    iput v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getImaginary(I)D
    .locals 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    .line 191
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-nez v0, :cond_0

    .line 192
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 195
    :cond_0
    if-ltz p1, :cond_1

    :try_start_1
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-lt p1, v0, :cond_2

    .line 196
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_ROOT_OF_UNITY_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 203
    :cond_2
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryCounterClockwise:[D

    aget-wide v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_3
    :try_start_2
    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaImaginaryClockwise:[D

    aget-wide v0, v0, p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public declared-synchronized getNumberOfRoots()I
    .locals 1

    .prologue
    .line 216
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getReal(I)D
    .locals 5
    .param p1, "k"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;,
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 164
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-nez v0, :cond_0

    .line 165
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 164
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 168
    :cond_0
    if-ltz p1, :cond_1

    :try_start_1
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-lt p1, v0, :cond_2

    .line 169
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_ROOT_OF_UNITY_INDEX:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    add-int/lit8 v4, v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 176
    :cond_2
    iget-object v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaReal:[D

    aget-wide v0, v0, p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-wide v0
.end method

.method public declared-synchronized isCounterClockWise()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalStateException;
        }
    .end annotation

    .prologue
    .line 90
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->omegaCount:I

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Lorg/apache/commons/math3/exception/MathIllegalStateException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ROOTS_OF_UNITY_NOT_COMPUTED_YET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 90
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 94
    :cond_0
    :try_start_1
    iget-boolean v0, p0, Lorg/apache/commons/math3/complex/RootsOfUnity;->isCounterClockWise:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return v0
.end method
