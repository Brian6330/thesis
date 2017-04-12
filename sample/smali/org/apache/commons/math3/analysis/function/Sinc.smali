.class public Lorg/apache/commons/math3/analysis/function/Sinc;
.super Ljava/lang/Object;
.source "Sinc.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;
.implements Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;


# static fields
.field private static final SHORTCUT:D = 0.006


# instance fields
.field private final normalized:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/analysis/function/Sinc;-><init>(Z)V

    .line 72
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 0
    .param p1, "normalized"    # Z

    .prologue
    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput-boolean p1, p0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    .line 82
    return-void
.end method


# virtual methods
.method public derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 102
    invoke-static {p0}, Lorg/apache/commons/math3/analysis/FunctionUtils;->toDifferentiableUnivariateFunction(Lorg/apache/commons/math3/analysis/differentiation/UnivariateDifferentiableFunction;)Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/commons/math3/analysis/DifferentiableUnivariateFunction;->derivative()Lorg/apache/commons/math3/analysis/UnivariateFunction;

    move-result-object v0

    return-object v0
.end method

.method public value(D)D
    .locals 11
    .param p1, "x"    # D

    .prologue
    const-wide/high16 v8, 0x405e000000000000L    # 120.0

    .line 86
    iget-boolean v4, p0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    if-eqz v4, :cond_0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v4, p1

    .line 87
    .local v0, "scaledX":D
    :goto_0
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v4

    const-wide v6, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v4, v4, v6

    if-gtz v4, :cond_1

    .line 89
    mul-double v2, v0, v0

    .line 90
    .local v2, "scaledX2":D
    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    sub-double v4, v2, v4

    mul-double/2addr v4, v2

    add-double/2addr v4, v8

    div-double/2addr v4, v8

    .line 93
    .end local v2    # "scaledX2":D
    :goto_1
    return-wide v4

    .end local v0    # "scaledX":D
    :cond_0
    move-wide v0, p1

    .line 86
    goto :goto_0

    .line 93
    .restart local v0    # "scaledX":D
    :cond_1
    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v4

    div-double/2addr v4, v0

    goto :goto_1
.end method

.method public value(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 34
    .param p1, "t"    # Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 111
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    const-wide v26, 0x400921fb54442d18L    # Math.PI

    :goto_0
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getValue()D

    move-result-wide v28

    mul-double v20, v26, v28

    .line 112
    .local v20, "scaledX":D
    mul-double v22, v20, v20

    .line 114
    .local v22, "scaledX2":D
    invoke-virtual/range {p1 .. p1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getOrder()I

    move-result v26

    add-int/lit8 v26, v26, 0x1

    move/from16 v0, v26

    new-array v8, v0, [D

    .line 116
    .local v8, "f":[D
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v26

    const-wide v28, 0x3f789374bc6a7efaL    # 0.006

    cmpg-double v26, v26, v28

    if-gtz v26, :cond_4

    .line 118
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_1
    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_7

    .line 119
    div-int/lit8 v12, v9, 0x2

    .line 120
    .local v12, "k":I
    and-int/lit8 v26, v9, 0x1

    if-nez v26, :cond_2

    .line 122
    and-int/lit8 v26, v12, 0x1

    if-nez v26, :cond_1

    const/16 v26, 0x1

    :goto_2
    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v30, v9, 0x1

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-int/lit8 v32, v9, 0x2

    add-int/lit8 v32, v32, 0x6

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    mul-int/lit8 v32, v9, 0x18

    add-int/lit8 v32, v32, 0x78

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v32, v22, v32

    sub-double v30, v30, v32

    mul-double v30, v30, v22

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    aput-wide v26, v8, v9

    .line 118
    :goto_3
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 111
    .end local v8    # "f":[D
    .end local v9    # "i":I
    .end local v12    # "k":I
    .end local v20    # "scaledX":D
    .end local v22    # "scaledX2":D
    :cond_0
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    .line 122
    .restart local v8    # "f":[D
    .restart local v9    # "i":I
    .restart local v12    # "k":I
    .restart local v20    # "scaledX":D
    .restart local v22    # "scaledX2":D
    :cond_1
    const/16 v26, -0x1

    goto :goto_2

    .line 126
    :cond_2
    and-int/lit8 v26, v12, 0x1

    if-nez v26, :cond_3

    move-wide/from16 v0, v20

    neg-double v0, v0

    move-wide/from16 v26, v0

    :goto_4
    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v30, v9, 0x2

    move/from16 v0, v30

    int-to-double v0, v0

    move-wide/from16 v30, v0

    div-double v28, v28, v30

    const-wide/high16 v30, 0x3ff0000000000000L    # 1.0

    mul-int/lit8 v32, v9, 0x6

    add-int/lit8 v32, v32, 0x18

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v30, v30, v32

    mul-int/lit8 v32, v9, 0x78

    move/from16 v0, v32

    add-int/lit16 v0, v0, 0x2d0

    move/from16 v32, v0

    move/from16 v0, v32

    int-to-double v0, v0

    move-wide/from16 v32, v0

    div-double v32, v22, v32

    sub-double v30, v30, v32

    mul-double v30, v30, v22

    sub-double v28, v28, v30

    mul-double v26, v26, v28

    aput-wide v26, v8, v9

    goto :goto_3

    :cond_3
    move-wide/from16 v26, v20

    goto :goto_4

    .line 133
    .end local v9    # "i":I
    .end local v12    # "k":I
    :cond_4
    const-wide/high16 v26, 0x3ff0000000000000L    # 1.0

    div-double v10, v26, v20

    .line 134
    .local v10, "inv":D
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->cos(D)D

    move-result-wide v6

    .line 135
    .local v6, "cos":D
    invoke-static/range {v20 .. v21}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v24

    .line 137
    .local v24, "sin":D
    const/16 v26, 0x0

    mul-double v28, v10, v24

    aput-wide v28, v8, v26

    .line 149
    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    new-array v15, v0, [D

    .line 150
    .local v15, "sc":[D
    const/16 v26, 0x0

    const-wide/high16 v28, 0x3ff0000000000000L    # 1.0

    aput-wide v28, v15, v26

    .line 152
    move-wide v4, v10

    .line 153
    .local v4, "coeff":D
    const/4 v14, 0x1

    .local v14, "n":I
    :goto_5
    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v14, v0, :cond_7

    .line 155
    const-wide/16 v16, 0x0

    .line 156
    .local v16, "s":D
    const-wide/16 v2, 0x0

    .line 160
    .local v2, "c":D
    and-int/lit8 v26, v14, 0x1

    if-nez v26, :cond_5

    .line 162
    const-wide/16 v26, 0x0

    aput-wide v26, v15, v14

    .line 163
    move v13, v14

    .line 172
    .local v13, "kStart":I
    :goto_6
    move v12, v13

    .restart local v12    # "k":I
    :goto_7
    const/16 v26, 0x1

    move/from16 v0, v26

    if-le v12, v0, :cond_6

    .line 175
    sub-int v26, v12, v14

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    aget-wide v28, v15, v12

    mul-double v26, v26, v28

    add-int/lit8 v28, v12, -0x1

    aget-wide v28, v15, v28

    sub-double v26, v26, v28

    aput-wide v26, v15, v12

    .line 176
    mul-double v26, v16, v22

    aget-wide v28, v15, v12

    add-double v16, v26, v28

    .line 179
    add-int/lit8 v26, v12, -0x1

    add-int/lit8 v27, v12, -0x1

    sub-int v27, v27, v14

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v28, v0

    add-int/lit8 v27, v12, -0x1

    aget-wide v30, v15, v27

    mul-double v28, v28, v30

    add-int/lit8 v27, v12, -0x2

    aget-wide v30, v15, v27

    add-double v28, v28, v30

    aput-wide v28, v15, v26

    .line 180
    mul-double v26, v2, v22

    add-int/lit8 v28, v12, -0x1

    aget-wide v28, v15, v28

    add-double v2, v26, v28

    .line 172
    add-int/lit8 v12, v12, -0x2

    goto :goto_7

    .line 166
    .end local v12    # "k":I
    .end local v13    # "kStart":I
    :cond_5
    add-int/lit8 v26, v14, -0x1

    aget-wide v26, v15, v26

    aput-wide v26, v15, v14

    .line 167
    aget-wide v2, v15, v14

    .line 168
    add-int/lit8 v13, v14, -0x1

    .restart local v13    # "kStart":I
    goto :goto_6

    .line 183
    .restart local v12    # "k":I
    :cond_6
    const/16 v26, 0x0

    aget-wide v28, v15, v26

    neg-int v0, v14

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v30, v0

    mul-double v28, v28, v30

    aput-wide v28, v15, v26

    .line 184
    mul-double v26, v16, v22

    const/16 v28, 0x0

    aget-wide v28, v15, v28

    add-double v16, v26, v28

    .line 186
    mul-double/2addr v4, v10

    .line 187
    mul-double v26, v16, v24

    mul-double v28, v2, v20

    mul-double v28, v28, v6

    add-double v26, v26, v28

    mul-double v26, v26, v4

    aput-wide v26, v8, v14

    .line 153
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_5

    .line 193
    .end local v2    # "c":D
    .end local v4    # "coeff":D
    .end local v6    # "cos":D
    .end local v10    # "inv":D
    .end local v12    # "k":I
    .end local v13    # "kStart":I
    .end local v14    # "n":I
    .end local v15    # "sc":[D
    .end local v16    # "s":D
    .end local v24    # "sin":D
    :cond_7
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lorg/apache/commons/math3/analysis/function/Sinc;->normalized:Z

    move/from16 v26, v0

    if-eqz v26, :cond_8

    .line 194
    const-wide v18, 0x400921fb54442d18L    # Math.PI

    .line 195
    .local v18, "scale":D
    const/4 v9, 0x1

    .restart local v9    # "i":I
    :goto_8
    array-length v0, v8

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v9, v0, :cond_8

    .line 196
    aget-wide v26, v8, v9

    mul-double v26, v26, v18

    aput-wide v26, v8, v9

    .line 197
    const-wide v26, 0x400921fb54442d18L    # Math.PI

    mul-double v18, v18, v26

    .line 195
    add-int/lit8 v9, v9, 0x1

    goto :goto_8

    .line 201
    .end local v9    # "i":I
    .end local v18    # "scale":D
    :cond_8
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compose([D)Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v26

    return-object v26
.end method
