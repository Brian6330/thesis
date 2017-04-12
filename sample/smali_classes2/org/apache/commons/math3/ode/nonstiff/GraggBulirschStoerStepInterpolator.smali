.class Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;
.super Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;
.source "GraggBulirschStoerStepInterpolator.java"


# static fields
.field private static final serialVersionUID:J = 0x132de50L


# instance fields
.field private currentDegree:I

.field private errfac:[D

.field private polynomials:[[D

.field private y0Dot:[D

.field private y1:[D

.field private y1Dot:[D

.field private yMidDots:[[D


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 110
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>()V

    .line 111
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 112
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 113
    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 114
    check-cast v0, [[D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 115
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 116
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;)V
    .locals 5
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 157
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;)V

    .line 159
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v0, v2

    .line 163
    .local v0, "dimension":I
    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 164
    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 165
    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    move-object v2, v3

    .line 166
    check-cast v2, [[D

    iput-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 169
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    if-nez v2, :cond_0

    .line 170
    check-cast v3, [[D

    iput-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    .line 171
    const/4 v2, -0x1

    iput v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    .line 182
    :goto_0
    return-void

    .line 173
    :cond_0
    iget v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    invoke-direct {p0, v2}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 174
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 175
    iget-object v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    new-array v3, v0, [D

    aput-object v3, v2, v1

    .line 176
    iget-object v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v2, v2, v1

    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v1

    invoke-static {v2, v4, v3, v4, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 174
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 179
    :cond_1
    iget v2, p1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    iput v2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    goto :goto_0
.end method

.method public constructor <init>([D[D[D[D[[DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V
    .locals 1
    .param p1, "y"    # [D
    .param p2, "y0Dot"    # [D
    .param p3, "y1"    # [D
    .param p4, "y1Dot"    # [D
    .param p5, "yMidDots"    # [[D
    .param p6, "forward"    # Z
    .param p7, "primaryMapper"    # Lorg/apache/commons/math3/ode/EquationsMapper;
    .param p8, "secondaryMappers"    # [Lorg/apache/commons/math3/ode/EquationsMapper;

    .prologue
    .line 139
    invoke-direct {p0, p1, p6, p7, p8}, Lorg/apache/commons/math3/ode/sampling/AbstractStepInterpolator;-><init>([DZLorg/apache/commons/math3/ode/EquationsMapper;[Lorg/apache/commons/math3/ode/EquationsMapper;)V

    .line 140
    iput-object p2, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    .line 141
    iput-object p3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    .line 142
    iput-object p4, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    .line 143
    iput-object p5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    .line 145
    array-length v0, p5

    add-int/lit8 v0, v0, 0x4

    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 147
    return-void
.end method

.method private resetTables(I)V
    .locals 13
    .param p1, "maxDegree"    # I

    .prologue
    const/4 v7, 0x0

    const/4 v12, 0x0

    .line 191
    if-gez p1, :cond_0

    move-object v6, v7

    .line 192
    check-cast v6, [[D

    iput-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    .line 193
    iput-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    .line 194
    const/4 v6, -0x1

    iput v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    .line 229
    :goto_0
    return-void

    .line 197
    :cond_0
    add-int/lit8 v6, p1, 0x1

    new-array v5, v6, [[D

    .line 198
    .local v5, "newPols":[[D
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    if-eqz v6, :cond_1

    .line 199
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v8, v8

    invoke-static {v6, v12, v5, v12, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 200
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    array-length v2, v6

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 201
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v6, v6

    new-array v6, v6, [D

    aput-object v6, v5, v2

    .line 200
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 204
    .end local v2    # "i":I
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_2
    array-length v6, v5

    if-ge v2, v6, :cond_2

    .line 205
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v6, v6

    new-array v6, v6, [D

    aput-object v6, v5, v2

    .line 204
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 208
    :cond_2
    iput-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    .line 211
    const/4 v6, 0x4

    if-gt p1, v6, :cond_4

    .line 212
    iput-object v7, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    .line 225
    :cond_3
    iput v12, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    goto :goto_0

    .line 214
    :cond_4
    add-int/lit8 v6, p1, -0x4

    new-array v6, v6, [D

    iput-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    .line 215
    const/4 v2, 0x0

    :goto_3
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    array-length v6, v6

    if-ge v2, v6, :cond_3

    .line 216
    add-int/lit8 v3, v2, 0x5

    .line 217
    .local v3, "ip5":I
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    mul-int v7, v3, v3

    int-to-double v10, v7

    div-double/2addr v8, v10

    aput-wide v8, v6, v2

    .line 218
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    add-int/lit8 v8, v2, 0x1

    int-to-double v8, v8

    int-to-double v10, v3

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v8

    mul-double v0, v6, v8

    .line 219
    .local v0, "e":D
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_4
    if-gt v4, v2, :cond_5

    .line 220
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    aget-wide v8, v6, v2

    add-int/lit8 v7, v4, 0x1

    int-to-double v10, v7

    div-double v10, v0, v10

    mul-double/2addr v8, v10

    aput-wide v8, v6, v2

    .line 219
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 215
    :cond_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_3
.end method


# virtual methods
.method public computeCoefficients(ID)V
    .locals 36
    .param p1, "mu"    # I
    .param p2, "h"    # D

    .prologue
    .line 244
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    if-eqz v26, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    add-int/lit8 v27, p1, 0x4

    move/from16 v0, v26

    move/from16 v1, v27

    if-gt v0, v1, :cond_1

    .line 245
    :cond_0
    add-int/lit8 v26, p1, 0x4

    move-object/from16 v0, p0

    move/from16 v1, v26

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 248
    :cond_1
    add-int/lit8 v26, p1, 0x4

    move/from16 v0, v26

    move-object/from16 v1, p0

    iput v0, v1, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    .line 250
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    move-object/from16 v26, v0

    move-object/from16 v0, v26

    array-length v0, v0

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v10, v0, :cond_2

    .line 252
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y0Dot:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    mul-double v22, p2, v26

    .line 253
    .local v22, "yp0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1Dot:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    mul-double v24, p2, v26

    .line 254
    .local v24, "yp1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    move-object/from16 v26, v0

    aget-wide v26, v26, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    sub-double v20, v26, v28

    .line 255
    .local v20, "ydiff":D
    sub-double v2, v20, v24

    .line 256
    .local v2, "aspl":D
    sub-double v4, v22, v20

    .line 258
    .local v4, "bspl":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x0

    aget-object v26, v26, v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    move-object/from16 v27, v0

    aget-wide v28, v27, v10

    aput-wide v28, v26, v10

    .line 259
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x1

    aget-object v26, v26, v27

    aput-wide v20, v26, v10

    .line 260
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x2

    aget-object v26, v26, v27

    aput-wide v2, v26, v10

    .line 261
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x3

    aget-object v26, v26, v27

    aput-wide v4, v26, v10

    .line 263
    if-gez p1, :cond_3

    .line 295
    .end local v2    # "aspl":D
    .end local v4    # "bspl":D
    .end local v20    # "ydiff":D
    .end local v22    # "yp0":D
    .end local v24    # "yp1":D
    :cond_2
    return-void

    .line 268
    .restart local v2    # "aspl":D
    .restart local v4    # "bspl":D
    .restart local v20    # "ydiff":D
    .restart local v22    # "yp0":D
    .restart local v24    # "yp1":D
    :cond_3
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    move-object/from16 v28, v0

    aget-wide v28, v28, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->y1:[D

    move-object/from16 v30, v0

    aget-wide v30, v30, v10

    add-double v28, v28, v30

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x3fc0000000000000L    # 0.125

    add-double v30, v2, v4

    mul-double v28, v28, v30

    add-double v12, v26, v28

    .line 269
    .local v12, "ph0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x4

    aget-object v26, v26, v27

    const-wide/high16 v28, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    move-object/from16 v27, v0

    const/16 v30, 0x0

    aget-object v27, v27, v30

    aget-wide v30, v27, v10

    sub-double v30, v30, v12

    mul-double v28, v28, v30

    aput-wide v28, v26, v10

    .line 271
    if-lez p1, :cond_4

    .line 272
    const-wide/high16 v26, 0x3fd0000000000000L    # 0.25

    sub-double v28, v2, v4

    mul-double v26, v26, v28

    add-double v14, v20, v26

    .line 273
    .local v14, "ph1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x5

    aget-object v26, v26, v27

    const-wide/high16 v28, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    move-object/from16 v27, v0

    const/16 v30, 0x1

    aget-object v27, v27, v30

    aget-wide v30, v27, v10

    sub-double v30, v30, v14

    mul-double v28, v28, v30

    aput-wide v28, v26, v10

    .line 275
    const/16 v26, 0x1

    move/from16 v0, p1

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 276
    sub-double v16, v24, v22

    .line 277
    .local v16, "ph2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x6

    aget-object v26, v26, v27

    const-wide/high16 v28, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    move-object/from16 v27, v0

    const/16 v30, 0x2

    aget-object v27, v27, v30

    aget-wide v30, v27, v10

    sub-double v30, v30, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v27, v0

    const/16 v32, 0x4

    aget-object v27, v27, v32

    aget-wide v32, v27, v10

    add-double v30, v30, v32

    mul-double v28, v28, v30

    aput-wide v28, v26, v10

    .line 279
    const/16 v26, 0x2

    move/from16 v0, p1

    move/from16 v1, v26

    if-le v0, v1, :cond_4

    .line 280
    const-wide/high16 v26, 0x4018000000000000L    # 6.0

    sub-double v28, v4, v2

    mul-double v18, v26, v28

    .line 281
    .local v18, "ph3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    const/16 v27, 0x7

    aget-object v26, v26, v27

    const-wide/high16 v28, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    move-object/from16 v27, v0

    const/16 v30, 0x3

    aget-object v27, v27, v30

    aget-wide v30, v27, v10

    sub-double v30, v30, v18

    const-wide/high16 v32, 0x4008000000000000L    # 3.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v27, v0

    const/16 v34, 0x5

    aget-object v27, v27, v34

    aget-wide v34, v27, v10

    mul-double v32, v32, v34

    add-double v30, v30, v32

    mul-double v28, v28, v30

    aput-wide v28, v26, v10

    .line 283
    const/4 v11, 0x4

    .local v11, "j":I
    :goto_1
    move/from16 v0, p1

    if-gt v11, v0, :cond_4

    .line 284
    const-wide/high16 v26, 0x3fe0000000000000L    # 0.5

    int-to-double v0, v11

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-int/lit8 v28, v11, -0x1

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v6, v26, v28

    .line 285
    .local v6, "fac1":D
    const-wide/high16 v26, 0x4000000000000000L    # 2.0

    mul-double v26, v26, v6

    add-int/lit8 v28, v11, -0x2

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-int/lit8 v28, v11, -0x3

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    mul-double v8, v26, v28

    .line 286
    .local v8, "fac2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v26, v0

    add-int/lit8 v27, v11, 0x4

    aget-object v26, v26, v27

    const-wide/high16 v28, 0x4030000000000000L    # 16.0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    aget-wide v30, v27, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v27, v0

    add-int/lit8 v32, v11, 0x2

    aget-object v27, v27, v32

    aget-wide v32, v27, v10

    mul-double v32, v32, v6

    add-double v30, v30, v32

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v27, v0

    aget-object v27, v27, v11

    aget-wide v32, v27, v10

    mul-double v32, v32, v8

    sub-double v30, v30, v32

    mul-double v28, v28, v30

    aput-wide v28, v26, v10

    .line 283
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 250
    .end local v6    # "fac1":D
    .end local v8    # "fac2":D
    .end local v11    # "j":I
    .end local v14    # "ph1":D
    .end local v16    # "ph2":D
    .end local v18    # "ph3":D
    :cond_4
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0
.end method

.method protected computeInterpolatedStateAndDerivatives(DD)V
    .locals 45
    .param p1, "theta"    # D
    .param p3, "oneMinusThetaH"    # D

    .prologue
    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v10, v0

    .line 320
    .local v10, "dimension":I
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    sub-double v20, v38, p1

    .line 321
    .local v20, "oneMinusTheta":D
    const-wide/high16 v38, 0x3fe0000000000000L    # 0.5

    sub-double v36, p1, v38

    .line 322
    .local v36, "theta05":D
    mul-double v34, p1, v20

    .line 323
    .local v34, "tOmT":D
    mul-double v30, v34, v34

    .line 324
    .local v30, "t4":D
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    mul-double v38, v38, v34

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v42, 0x4000000000000000L    # 2.0

    mul-double v42, v42, p1

    sub-double v40, v40, v42

    mul-double v32, v38, v40

    .line 325
    .local v32, "t4Dot":D
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    move-wide/from16 v40, v0

    div-double v12, v38, v40

    .line 326
    .local v12, "dot1":D
    const-wide/high16 v38, 0x4000000000000000L    # 2.0

    const-wide/high16 v40, 0x4008000000000000L    # 3.0

    mul-double v40, v40, p1

    sub-double v38, v38, v40

    mul-double v38, v38, p1

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    move-wide/from16 v40, v0

    div-double v14, v38, v40

    .line 327
    .local v14, "dot2":D
    const-wide/high16 v38, 0x4008000000000000L    # 3.0

    mul-double v38, v38, p1

    const-wide/high16 v40, 0x4010000000000000L    # 4.0

    sub-double v38, v38, v40

    mul-double v38, v38, p1

    const-wide/high16 v40, 0x3ff0000000000000L    # 1.0

    add-double v38, v38, v40

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    move-wide/from16 v40, v0

    div-double v16, v38, v40

    .line 329
    .local v16, "dot3":D
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    if-ge v11, v10, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v19, v0

    const/16 v38, 0x0

    aget-object v19, v19, v38

    aget-wide v22, v19, v11

    .line 332
    .local v22, "p0":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v19, v0

    const/16 v38, 0x1

    aget-object v19, v19, v38

    aget-wide v24, v19, v11

    .line 333
    .local v24, "p1":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v19, v0

    const/16 v38, 0x2

    aget-object v19, v19, v38

    aget-wide v26, v19, v11

    .line 334
    .local v26, "p2":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v19, v0

    const/16 v38, 0x3

    aget-object v19, v19, v38

    aget-wide v28, v19, v11

    .line 335
    .local v28, "p3":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedState:[D

    move-object/from16 v19, v0

    mul-double v38, v26, p1

    mul-double v40, v28, v20

    add-double v38, v38, v40

    mul-double v38, v38, v20

    add-double v38, v38, v24

    mul-double v38, v38, p1

    add-double v38, v38, v22

    aput-wide v38, v19, v11

    .line 336
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v19, v0

    mul-double v38, v12, v24

    mul-double v40, v14, v26

    add-double v38, v38, v40

    mul-double v40, v16, v28

    add-double v38, v38, v40

    aput-wide v38, v19, v11

    .line 338
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    move/from16 v19, v0

    const/16 v38, 0x3

    move/from16 v0, v19

    move/from16 v1, v38

    if-le v0, v1, :cond_1

    .line 339
    const-wide/16 v6, 0x0

    .line 340
    .local v6, "cDot":D
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    move/from16 v38, v0

    aget-object v19, v19, v38

    aget-wide v4, v19, v11

    .line 341
    .local v4, "c":D
    move-object/from16 v0, p0

    iget v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    move/from16 v19, v0

    add-int/lit8 v18, v19, -0x1

    .local v18, "j":I
    :goto_1
    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-le v0, v1, :cond_0

    .line 342
    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    add-int/lit8 v19, v18, -0x3

    move/from16 v0, v19

    int-to-double v0, v0

    move-wide/from16 v40, v0

    div-double v8, v38, v40

    .line 343
    .local v8, "d":D
    mul-double v38, v36, v6

    add-double v38, v38, v4

    mul-double v6, v8, v38

    .line 344
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    move-object/from16 v19, v0

    aget-object v19, v19, v18

    aget-wide v38, v19, v11

    mul-double v40, v4, v8

    mul-double v40, v40, v36

    add-double v4, v38, v40

    .line 341
    add-int/lit8 v18, v18, -0x1

    goto :goto_1

    .line 346
    .end local v8    # "d":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedState:[D

    move-object/from16 v19, v0

    aget-wide v38, v19, v11

    mul-double v40, v30, v4

    add-double v38, v38, v40

    aput-wide v38, v19, v11

    .line 347
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v19, v0

    aget-wide v38, v19, v11

    mul-double v40, v30, v6

    mul-double v42, v32, v4

    add-double v40, v40, v42

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    move-wide/from16 v42, v0

    div-double v40, v40, v42

    add-double v38, v38, v40

    aput-wide v38, v19, v11

    .line 329
    .end local v4    # "c":D
    .end local v6    # "cDot":D
    .end local v18    # "j":I
    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 352
    .end local v22    # "p0":D
    .end local v24    # "p1":D
    .end local v26    # "p2":D
    .end local v28    # "p3":D
    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->h:D

    move-wide/from16 v38, v0

    const-wide/16 v40, 0x0

    cmpl-double v19, v38, v40

    if-nez v19, :cond_3

    .line 355
    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->yMidDots:[[D

    move-object/from16 v19, v0

    const/16 v38, 0x1

    aget-object v19, v19, v38

    const/16 v38, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->interpolatedDerivatives:[D

    move-object/from16 v39, v0

    const/16 v40, 0x0

    move-object/from16 v0, v19

    move/from16 v1, v38

    move-object/from16 v2, v39

    move/from16 v3, v40

    invoke-static {v0, v1, v2, v3, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 358
    :cond_3
    return-void
.end method

.method protected doCopy()Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .locals 1

    .prologue
    .line 234
    new-instance v0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;

    invoke-direct {v0, p0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;-><init>(Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;)V

    return-object v0
.end method

.method public estimateError([D)D
    .locals 10
    .param p1, "scale"    # [D

    .prologue
    .line 302
    const-wide/16 v2, 0x0

    .line 303
    .local v2, "error":D
    iget v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    const/4 v6, 0x5

    if-lt v5, v6, :cond_1

    .line 304
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, p1

    if-ge v4, v5, :cond_0

    .line 305
    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    iget v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    aget-object v5, v5, v6

    aget-wide v6, v5, v4

    aget-wide v8, p1, v4

    div-double v0, v6, v8

    .line 306
    .local v0, "e":D
    mul-double v6, v0, v0

    add-double/2addr v2, v6

    .line 304
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 308
    .end local v0    # "e":D
    :cond_0
    array-length v5, p1

    int-to-double v6, v5

    div-double v6, v2, v6

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v6

    iget-object v5, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->errfac:[D

    iget v8, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    add-int/lit8 v8, v8, -0x5

    aget-wide v8, v5, v8

    mul-double v2, v6, v8

    .line 310
    .end local v4    # "i":I
    :cond_1
    return-wide v2
.end method

.method public readExternal(Ljava/io/ObjectInput;)V
    .locals 10
    .param p1, "in"    # Ljava/io/ObjectInput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 386
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->readBaseExternal(Ljava/io/ObjectInput;)D

    move-result-wide v4

    .line 387
    .local v4, "t":D
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    if-nez v6, :cond_0

    const/4 v1, -0x1

    .line 390
    .local v1, "dimension":I
    :goto_0
    invoke-interface {p1}, Ljava/io/ObjectInput;->readInt()I

    move-result v0

    .line 391
    .local v0, "degree":I
    invoke-direct {p0, v0}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->resetTables(I)V

    .line 392
    iput v0, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    .line 394
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_1
    iget v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-gt v2, v6, :cond_2

    .line 395
    const/4 v3, 0x0

    .local v3, "l":I
    :goto_2
    if-ge v3, v1, :cond_1

    .line 396
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v6, v6, v2

    invoke-interface {p1}, Ljava/io/ObjectInput;->readDouble()D

    move-result-wide v8

    aput-wide v8, v6, v3

    .line 395
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 387
    .end local v0    # "degree":I
    .end local v1    # "dimension":I
    .end local v2    # "k":I
    .end local v3    # "l":I
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v1, v6

    goto :goto_0

    .line 394
    .restart local v0    # "degree":I
    .restart local v1    # "dimension":I
    .restart local v2    # "k":I
    .restart local v3    # "l":I
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 401
    .end local v3    # "l":I
    :cond_2
    invoke-virtual {p0, v4, v5}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->setInterpolatedTime(D)V

    .line 403
    return-void
.end method

.method public writeExternal(Ljava/io/ObjectOutput;)V
    .locals 6
    .param p1, "out"    # Ljava/io/ObjectOutput;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 365
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    if-nez v3, :cond_0

    const/4 v0, -0x1

    .line 368
    .local v0, "dimension":I
    :goto_0
    invoke-virtual {p0, p1}, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->writeBaseExternal(Ljava/io/ObjectOutput;)V

    .line 371
    iget v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    invoke-interface {p1, v3}, Ljava/io/ObjectOutput;->writeInt(I)V

    .line 372
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_1
    iget v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentDegree:I

    if-gt v1, v3, :cond_2

    .line 373
    const/4 v2, 0x0

    .local v2, "l":I
    :goto_2
    if-ge v2, v0, :cond_1

    .line 374
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->polynomials:[[D

    aget-object v3, v3, v1

    aget-wide v4, v3, v2

    invoke-interface {p1, v4, v5}, Ljava/io/ObjectOutput;->writeDouble(D)V

    .line 373
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 365
    .end local v0    # "dimension":I
    .end local v1    # "k":I
    .end local v2    # "l":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/ode/nonstiff/GraggBulirschStoerStepInterpolator;->currentState:[D

    array-length v0, v3

    goto :goto_0

    .line 372
    .restart local v0    # "dimension":I
    .restart local v1    # "k":I
    .restart local v2    # "l":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 378
    .end local v2    # "l":I
    :cond_2
    return-void
.end method
