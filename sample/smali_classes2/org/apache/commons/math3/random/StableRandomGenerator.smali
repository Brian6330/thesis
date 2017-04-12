.class public Lorg/apache/commons/math3/random/StableRandomGenerator;
.super Ljava/lang/Object;
.source "StableRandomGenerator.java"

# interfaces
.implements Lorg/apache/commons/math3/random/NormalizedRandomGenerator;


# instance fields
.field private final alpha:D

.field private final beta:D

.field private final generator:Lorg/apache/commons/math3/random/RandomGenerator;

.field private final zeta:D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/random/RandomGenerator;DD)V
    .locals 6
    .param p1, "generator"    # Lorg/apache/commons/math3/random/RandomGenerator;
    .param p2, "alpha"    # D
    .param p4, "beta"    # D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/OutOfRangeException;
        }
    .end annotation

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v2, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    if-nez p1, :cond_0

    .line 61
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 64
    :cond_0
    cmpl-double v0, p2, v2

    if-lez v0, :cond_1

    cmpg-double v0, p2, v4

    if-lez v0, :cond_2

    .line 65
    :cond_1
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_LEFT:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 69
    :cond_2
    const-wide/high16 v0, -0x4010000000000000L    # -1.0

    cmpl-double v0, p4, v0

    if-ltz v0, :cond_3

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double v0, p4, v0

    if-lez v0, :cond_4

    .line 70
    :cond_3
    new-instance v0, Lorg/apache/commons/math3/exception/OutOfRangeException;

    sget-object v1, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->OUT_OF_RANGE_SIMPLE:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-static {p4, p5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/exception/OutOfRangeException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;Ljava/lang/Number;Ljava/lang/Number;Ljava/lang/Number;)V

    throw v0

    .line 74
    :cond_4
    iput-object p1, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    .line 75
    iput-wide p2, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    .line 76
    iput-wide p4, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    .line 77
    cmpg-double v0, p2, v4

    if-gez v0, :cond_5

    cmpl-double v0, p4, v2

    if-eqz v0, :cond_5

    .line 78
    const-wide v0, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v0, p2

    div-double/2addr v0, v4

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v0

    mul-double/2addr v0, p4

    iput-wide v0, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    .line 82
    :goto_0
    return-void

    .line 80
    :cond_5
    iput-wide v2, p0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    goto :goto_0
.end method


# virtual methods
.method public nextNormalizedDouble()D
    .locals 24

    .prologue
    .line 91
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    neg-double v10, v0

    .line 92
    .local v10, "omega":D
    const-wide v16, 0x400921fb54442d18L    # Math.PI

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->generator:Lorg/apache/commons/math3/random/RandomGenerator;

    move-object/from16 v18, v0

    invoke-interface/range {v18 .. v18}, Lorg/apache/commons/math3/random/RandomGenerator;->nextDouble()D

    move-result-wide v18

    const-wide/high16 v20, 0x3fe0000000000000L    # 0.5

    sub-double v18, v18, v20

    mul-double v12, v16, v18

    .line 95
    .local v12, "phi":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x4000000000000000L    # 2.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_1

    .line 96
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v16

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v18

    mul-double v14, v16, v18

    .line 132
    :cond_0
    :goto_0
    return-wide v14

    .line 102
    :cond_1
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_3

    .line 104
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    .line 105
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v14

    .local v14, "x":D
    goto :goto_0

    .line 107
    .end local v14    # "x":D
    :cond_2
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v18, v0

    sub-double v16, v16, v18

    mul-double v16, v16, v12

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v10

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v20, v0

    div-double v18, v18, v20

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    sub-double v18, v18, v20

    invoke-static/range {v16 .. v19}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v18

    div-double v14, v16, v18

    .restart local v14    # "x":D
    goto :goto_0

    .line 114
    .end local v14    # "x":D
    :cond_3
    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    .line 116
    .local v6, "cosPhi":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    sub-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    const-wide v18, 0x3e45798ee2308c3aL    # 1.0E-8

    cmpl-double v16, v16, v18

    if-lez v16, :cond_4

    .line 117
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v16, v0

    mul-double v2, v16, v12

    .line 118
    .local v2, "alphaPhi":D
    sub-double v8, v12, v2

    .line 119
    .local v8, "invAlphaPhi":D
    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    move-wide/from16 v18, v0

    invoke-static {v2, v3}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v20

    mul-double v18, v18, v20

    add-double v16, v16, v18

    div-double v16, v16, v6

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->zeta:D

    move-wide/from16 v20, v0

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    add-double v18, v18, v20

    mul-double v16, v16, v18

    mul-double v18, v10, v6

    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v22, v0

    sub-double v20, v20, v22

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v22, v0

    div-double v20, v20, v22

    invoke-static/range {v18 .. v21}, Lorg/apache/commons/math3/util/FastMath;->pow(DD)D

    move-result-wide v18

    div-double v14, v16, v18

    .line 122
    .restart local v14    # "x":D
    goto/16 :goto_0

    .line 123
    .end local v2    # "alphaPhi":D
    .end local v8    # "invAlphaPhi":D
    .end local v14    # "x":D
    :cond_4
    const-wide v16, 0x3ff921fb54442d18L    # 1.5707963267948966

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    move-wide/from16 v18, v0

    mul-double v18, v18, v12

    add-double v4, v16, v18

    .line 124
    .local v4, "betaPhi":D
    const-wide v16, 0x3fe45f306dc9c883L    # 0.6366197723675814

    invoke-static {v12, v13}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v18

    mul-double v18, v18, v4

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    move-wide/from16 v20, v0

    const-wide v22, 0x3ff921fb54442d18L    # 1.5707963267948966

    mul-double v22, v22, v10

    mul-double v22, v22, v6

    div-double v22, v22, v4

    invoke-static/range {v22 .. v23}, Lorg/apache/commons/math3/util/FastMath;->log(D)D

    move-result-wide v22

    mul-double v20, v20, v22

    sub-double v18, v18, v20

    mul-double v14, v16, v18

    .line 127
    .restart local v14    # "x":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v16, v0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-eqz v16, :cond_0

    .line 128
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->beta:D

    move-wide/from16 v16, v0

    const-wide v18, 0x400921fb54442d18L    # Math.PI

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/random/StableRandomGenerator;->alpha:D

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    invoke-static/range {v18 .. v19}, Lorg/apache/commons/math3/util/FastMath;->tan(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    add-double v14, v14, v16

    goto/16 :goto_0
.end method
