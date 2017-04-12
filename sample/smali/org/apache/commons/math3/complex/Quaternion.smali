.class public final Lorg/apache/commons/math3/complex/Quaternion;
.super Ljava/lang/Object;
.source "Quaternion.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final I:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final IDENTITY:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final J:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final K:Lorg/apache/commons/math3/complex/Quaternion;

.field public static final ZERO:Lorg/apache/commons/math3/complex/Quaternion;

.field private static final serialVersionUID:J = 0x132946cL


# instance fields
.field private final q0:D

.field private final q1:D

.field private final q2:D

.field private final q3:D


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    const-wide/16 v4, 0x0

    .line 38
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    move-wide v6, v4

    move-wide v8, v4

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v1, Lorg/apache/commons/math3/complex/Quaternion;->IDENTITY:Lorg/apache/commons/math3/complex/Quaternion;

    .line 40
    new-instance v7, Lorg/apache/commons/math3/complex/Quaternion;

    move-wide v8, v4

    move-wide v10, v4

    move-wide v12, v4

    move-wide v14, v4

    invoke-direct/range {v7 .. v15}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v7, Lorg/apache/commons/math3/complex/Quaternion;->ZERO:Lorg/apache/commons/math3/complex/Quaternion;

    .line 42
    new-instance v7, Lorg/apache/commons/math3/complex/Quaternion;

    move-wide v8, v4

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v4

    invoke-direct/range {v7 .. v15}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v7, Lorg/apache/commons/math3/complex/Quaternion;->I:Lorg/apache/commons/math3/complex/Quaternion;

    .line 44
    new-instance v7, Lorg/apache/commons/math3/complex/Quaternion;

    move-wide v8, v4

    move-wide v10, v4

    move-wide v12, v2

    move-wide v14, v4

    invoke-direct/range {v7 .. v15}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v7, Lorg/apache/commons/math3/complex/Quaternion;->J:Lorg/apache/commons/math3/complex/Quaternion;

    .line 46
    new-instance v7, Lorg/apache/commons/math3/complex/Quaternion;

    move-wide v8, v4

    move-wide v10, v4

    move-wide v12, v4

    move-wide v14, v2

    invoke-direct/range {v7 .. v15}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    sput-object v7, Lorg/apache/commons/math3/complex/Quaternion;->K:Lorg/apache/commons/math3/complex/Quaternion;

    return-void
.end method

.method public constructor <init>(DDDD)V
    .locals 1
    .param p1, "a"    # D
    .param p3, "b"    # D
    .param p5, "c"    # D
    .param p7, "d"    # D

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    .line 73
    iput-wide p3, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    .line 74
    iput-wide p5, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    .line 75
    iput-wide p7, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    .line 76
    return-void
.end method

.method public constructor <init>(D[D)V
    .locals 3
    .param p1, "scalar"    # D
    .param p3, "v"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    array-length v0, p3

    if-eq v0, v2, :cond_0

    .line 90
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 92
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    .line 93
    const/4 v0, 0x0

    aget-wide v0, p3, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    .line 94
    const/4 v0, 0x1

    aget-wide v0, p3, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    .line 95
    const/4 v0, 0x2

    aget-wide v0, p3, v0

    iput-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    .line 96
    return-void
.end method

.method public constructor <init>([D)V
    .locals 2
    .param p1, "v"    # [D

    .prologue
    .line 105
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(D[D)V

    .line 106
    return-void
.end method

.method public static add(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 12
    .param p0, "q1"    # Lorg/apache/commons/math3/complex/Quaternion;
    .param p1, "q2"    # Lorg/apache/commons/math3/complex/Quaternion;

    .prologue
    .line 165
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v4

    add-double/2addr v2, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v6

    add-double/2addr v4, v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v8

    add-double/2addr v6, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v10

    add-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v1
.end method

.method public static dotProduct(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)D
    .locals 6
    .param p0, "q1"    # Lorg/apache/commons/math3/complex/Quaternion;
    .param p1, "q2"    # Lorg/apache/commons/math3/complex/Quaternion;

    .prologue
    .line 215
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    mul-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v4

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public static multiply(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 28
    .param p0, "q1"    # Lorg/apache/commons/math3/complex/Quaternion;
    .param p1, "q2"    # Lorg/apache/commons/math3/complex/Quaternion;

    .prologue
    .line 126
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v10

    .line 127
    .local v10, "q1a":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v12

    .line 128
    .local v12, "q1b":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v14

    .line 129
    .local v14, "q1c":D
    invoke-virtual/range {p0 .. p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v16

    .line 132
    .local v16, "q1d":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v18

    .line 133
    .local v18, "q2a":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v20

    .line 134
    .local v20, "q2b":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v22

    .line 135
    .local v22, "q2c":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v24

    .line 138
    .local v24, "q2d":D
    mul-double v0, v10, v18

    mul-double v26, v12, v20

    sub-double v0, v0, v26

    mul-double v26, v14, v22

    sub-double v0, v0, v26

    mul-double v26, v16, v24

    sub-double v2, v0, v26

    .line 139
    .local v2, "w":D
    mul-double v0, v10, v20

    mul-double v26, v12, v18

    add-double v0, v0, v26

    mul-double v26, v14, v24

    add-double v0, v0, v26

    mul-double v26, v16, v22

    sub-double v4, v0, v26

    .line 140
    .local v4, "x":D
    mul-double v0, v10, v22

    mul-double v26, v12, v24

    sub-double v0, v0, v26

    mul-double v26, v14, v18

    add-double v0, v0, v26

    mul-double v26, v16, v20

    add-double v6, v0, v26

    .line 141
    .local v6, "y":D
    mul-double v0, v10, v24

    mul-double v26, v12, v22

    add-double v0, v0, v26

    mul-double v26, v14, v20

    sub-double v0, v0, v26

    mul-double v26, v16, v18

    add-double v8, v0, v26

    .line 143
    .local v8, "z":D
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v1
.end method

.method public static subtract(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 12
    .param p0, "q1"    # Lorg/apache/commons/math3/complex/Quaternion;
    .param p1, "q2"    # Lorg/apache/commons/math3/complex/Quaternion;

    .prologue
    .line 190
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v4

    sub-double/2addr v2, v4

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v6

    sub-double/2addr v4, v6

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v6

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v8

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v1
.end method


# virtual methods
.method public add(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 1
    .param p1, "q"    # Lorg/apache/commons/math3/complex/Quaternion;

    .prologue
    .line 178
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->add(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public dotProduct(Lorg/apache/commons/math3/complex/Quaternion;)D
    .locals 2
    .param p1, "q"    # Lorg/apache/commons/math3/complex/Quaternion;

    .prologue
    .line 228
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->dotProduct(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)D

    move-result-wide v0

    return-wide v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 268
    if-ne p0, p1, :cond_1

    .line 279
    :cond_0
    :goto_0
    return v1

    .line 271
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/complex/Quaternion;

    if-eqz v3, :cond_3

    move-object v0, p1

    .line 272
    check-cast v0, Lorg/apache/commons/math3/complex/Quaternion;

    .line 273
    .local v0, "q":Lorg/apache/commons/math3/complex/Quaternion;
    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-nez v3, :cond_2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v6

    cmpl-double v3, v4, v6

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0

    .end local v0    # "q":Lorg/apache/commons/math3/complex/Quaternion;
    :cond_3
    move v1, v2

    .line 279
    goto :goto_0
.end method

.method public equals(Lorg/apache/commons/math3/complex/Quaternion;D)Z
    .locals 6
    .param p1, "q"    # Lorg/apache/commons/math3/complex/Quaternion;
    .param p2, "eps"    # D

    .prologue
    .line 307
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {p1}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v2

    move-wide v4, p2

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConjugate()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .prologue
    .line 114
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    neg-double v6, v6

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    neg-double v8, v8

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v1
.end method

.method public getInverse()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 12

    .prologue
    .line 363
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double/2addr v2, v4

    add-double v10, v0, v2

    .line 364
    .local v10, "squareNorm":D
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v0, v10, v0

    if-gez v0, :cond_0

    .line 365
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 368
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    div-double/2addr v2, v10

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    neg-double v4, v4

    div-double/2addr v4, v10

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    neg-double v6, v6

    div-double/2addr v6, v10

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    neg-double v8, v8

    div-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v1
.end method

.method public getNorm()D
    .locals 6

    .prologue
    .line 237
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public getPositivePolarForm()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 10

    .prologue
    .line 342
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 343
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->normalize()Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v0

    .line 346
    .local v0, "unitQ":Lorg/apache/commons/math3/complex/Quaternion;
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v2

    neg-double v2, v2

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v4

    neg-double v4, v4

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v6

    neg-double v6, v6

    invoke-virtual {v0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v8

    neg-double v8, v8

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    .line 351
    .end local v0    # "unitQ":Lorg/apache/commons/math3/complex/Quaternion;
    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->normalize()Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v1

    goto :goto_0
.end method

.method public getQ0()D
    .locals 2

    .prologue
    .line 380
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    return-wide v0
.end method

.method public getQ1()D
    .locals 2

    .prologue
    .line 390
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    return-wide v0
.end method

.method public getQ2()D
    .locals 2

    .prologue
    .line 400
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    return-wide v0
.end method

.method public getQ3()D
    .locals 2

    .prologue
    .line 410
    iget-wide v0, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    return-wide v0
.end method

.method public getScalarPart()D
    .locals 2

    .prologue
    .line 420
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    return-wide v0
.end method

.method public getVectorPart()[D
    .locals 4

    .prologue
    .line 432
    const/4 v0, 0x3

    new-array v0, v0, [D

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ1()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ2()D

    move-result-wide v2

    aput-wide v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ3()D

    move-result-wide v2

    aput-wide v2, v0, v1

    return-object v0
.end method

.method public hashCode()I
    .locals 10

    .prologue
    .line 288
    const/16 v6, 0x11

    .line 289
    .local v6, "result":I
    const/4 v7, 0x4

    new-array v0, v7, [D

    const/4 v7, 0x0

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    aput-wide v8, v0, v7

    const/4 v7, 0x1

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    aput-wide v8, v0, v7

    const/4 v7, 0x2

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    aput-wide v8, v0, v7

    const/4 v7, 0x3

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    aput-wide v8, v0, v7

    .local v0, "arr$":[D
    array-length v5, v0

    .local v5, "len$":I
    const/4 v4, 0x0

    .local v4, "i$":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-wide v2, v0, v4

    .line 290
    .local v2, "comp":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/MathUtils;->hash(D)I

    move-result v1

    .line 291
    .local v1, "c":I
    mul-int/lit8 v7, v6, 0x1f

    add-int v6, v7, v1

    .line 289
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 293
    .end local v1    # "c":I
    .end local v2    # "comp":D
    :cond_0
    return v6
.end method

.method public isPureQuaternion(D)Z
    .locals 3
    .param p1, "eps"    # D

    .prologue
    .line 333
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getQ0()D

    move-result-wide v0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v0

    cmpg-double v0, v0, p1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnitQuaternion(D)Z
    .locals 7
    .param p1, "eps"    # D

    .prologue
    .line 322
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getNorm()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v4, p1

    invoke-static/range {v0 .. v5}, Lorg/apache/commons/math3/util/Precision;->equals(DDD)Z

    move-result v0

    return v0
.end method

.method public multiply(D)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 11
    .param p1, "alpha"    # D

    .prologue
    .line 442
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    mul-double/2addr v2, p1

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    mul-double/2addr v4, p1

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    mul-double/2addr v6, p1

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    mul-double/2addr v8, p1

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v1
.end method

.method public multiply(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 1
    .param p1, "q"    # Lorg/apache/commons/math3/complex/Quaternion;

    .prologue
    .line 153
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->multiply(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public normalize()Lorg/apache/commons/math3/complex/Quaternion;
    .locals 12

    .prologue
    .line 251
    invoke-virtual {p0}, Lorg/apache/commons/math3/complex/Quaternion;->getNorm()D

    move-result-wide v10

    .line 253
    .local v10, "norm":D
    sget-wide v0, Lorg/apache/commons/math3/util/Precision;->SAFE_MIN:D

    cmpg-double v0, v10, v0

    if-gez v0, :cond_0

    .line 254
    new-instance v0, Lorg/apache/commons/math3/exception/ZeroException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NORM:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v10, v11}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/ZeroException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    throw v0

    .line 257
    :cond_0
    new-instance v1, Lorg/apache/commons/math3/complex/Quaternion;

    iget-wide v2, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    div-double/2addr v2, v10

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    div-double/2addr v4, v10

    iget-wide v6, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    div-double/2addr v6, v10

    iget-wide v8, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    div-double/2addr v8, v10

    invoke-direct/range {v1 .. v9}, Lorg/apache/commons/math3/complex/Quaternion;-><init>(DDDD)V

    return-object v1
.end method

.method public subtract(Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;
    .locals 1
    .param p1, "q"    # Lorg/apache/commons/math3/complex/Quaternion;

    .prologue
    .line 203
    invoke-static {p0, p1}, Lorg/apache/commons/math3/complex/Quaternion;->subtract(Lorg/apache/commons/math3/complex/Quaternion;Lorg/apache/commons/math3/complex/Quaternion;)Lorg/apache/commons/math3/complex/Quaternion;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 453
    const-string v1, " "

    .line 454
    .local v1, "sp":Ljava/lang/String;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    .local v0, "s":Ljava/lang/StringBuilder;
    const-string v2, "["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q0:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q1:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q2:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v4, p0, Lorg/apache/commons/math3/complex/Quaternion;->q3:D

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
