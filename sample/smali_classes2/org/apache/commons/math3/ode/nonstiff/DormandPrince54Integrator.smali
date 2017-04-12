.class public Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "DormandPrince54Integrator.java"


# static fields
.field private static final E1:D = 0.0012326388888888888

.field private static final E3:D = -0.0042527702905061394

.field private static final E4:D = 0.03697916666666667

.field private static final E5:D = -0.05086379716981132

.field private static final E6:D = 0.0419047619047619

.field private static final E7:D = -0.025

.field private static final METHOD_NAME:Ljava/lang/String; = "Dormand-Prince 5(4)"

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 54
    new-array v0, v4, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_C:[D

    .line 59
    new-array v0, v4, [[D

    new-array v1, v6, [D

    const-wide v2, 0x3fc999999999999aL    # 0.2

    aput-wide v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v7, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v8, [D

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    const/4 v1, 0x4

    new-array v1, v1, [D

    fill-array-data v1, :array_3

    aput-object v1, v0, v8

    const/4 v1, 0x4

    const/4 v2, 0x5

    new-array v2, v2, [D

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v4, [D

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_A:[[D

    .line 69
    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_B:[D

    return-void

    .line 54
    nop

    :array_0
    .array-data 8
        0x3fc999999999999aL    # 0.2
        0x3fd3333333333333L    # 0.3
        0x3fe999999999999aL    # 0.8
        0x3fec71c71c71c71cL    # 0.8888888888888888
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 59
    :array_1
    .array-data 8
        0x3fb3333333333333L    # 0.075
        0x3fcccccccccccccdL    # 0.225
    .end array-data

    :array_2
    .array-data 8
        0x3fef49f49f49f49fL    # 0.9777777777777777
        -0x3ff2222222222222L    # -3.7333333333333334
        0x400c71c71c71c71cL    # 3.5555555555555554
    .end array-data

    :array_3
    .array-data 8
        0x40079eec0fc37181L    # 2.9525986892242035
        -0x3fd8cef42d6adf1cL    # -11.595793324188385
        0x4023a552363c5290L    # 9.822892851699436
        -0x402d636145e1ccbbL    # -0.2908093278463649
    .end array-data

    :array_4
    .array-data 8
        0x4006c52bf5a814b0L    # 2.8462752525252526
        -0x3fda7c1f07c1f07cL    # -10.757575757575758
        0x4021d016a3721e8bL    # 8.906422717743473
        0x3fd1d1745d1745d1L    # 0.2784090909090909
        -0x402e7e768f2633d1L    # -0.2735313036020583
    .end array-data

    :array_5
    .array-data 8
        0x3fb7555555555555L    # 0.09114583333333333
        0x0
        0x3fdcc0499a5605fbL    # 0.44923629829290207
        0x3fe4d55555555555L    # 0.6510416666666666
        -0x402b5e304d4873edL    # -0.322376179245283
        0x3fc0c30c30c30c31L    # 0.13095238095238096
    .end array-data

    .line 69
    :array_6
    .array-data 8
        0x3fb7555555555555L    # 0.09114583333333333
        0x0
        0x3fdcc0499a5605fbL    # 0.44923629829290207
        0x3fe4d55555555555L    # 0.6510416666666666
        -0x402b5e304d4873edL    # -0.322376179245283
        0x3fc0c30c30c30c31L    # 0.13095238095238096
        0x0
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 17
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "scalAbsoluteTolerance"    # D
    .param p7, "scalRelativeTolerance"    # D

    .prologue
    .line 107
    const-string v2, "Dormand-Prince 5(4)"

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_C:[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_A:[[D

    sget-object v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_B:[D

    new-instance v7, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>()V

    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-direct/range {v1 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    .line 109
    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 15
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "vecAbsoluteTolerance"    # [D
    .param p6, "vecRelativeTolerance"    # [D

    .prologue
    .line 125
    const-string v2, "Dormand-Prince 5(4)"

    const/4 v3, 0x1

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_C:[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_A:[[D

    sget-object v6, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->STATIC_B:[D

    new-instance v7, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;

    invoke-direct {v7}, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54StepInterpolator;-><init>()V

    move-object v1, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    .line 127
    return-void
.end method


# virtual methods
.method protected estimateError([[D[D[DD)D
    .locals 20
    .param p1, "yDotK"    # [[D
    .param p2, "y0"    # [D
    .param p3, "y1"    # [D
    .param p4, "h"    # D

    .prologue
    .line 141
    const-wide/16 v4, 0x0

    .line 143
    .local v4, "error":D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->mainSetDimension:I

    if-ge v6, v7, :cond_1

    .line 144
    const-wide v14, 0x3f54320fedcba987L    # 0.0012326388888888888

    const/4 v7, 0x0

    aget-object v7, p1, v7

    aget-wide v16, v7, v6

    mul-double v14, v14, v16

    const-wide v16, -0x408e94a5aaf5403cL    # -0.0042527702905061394

    const/4 v7, 0x2

    aget-object v7, p1, v7

    aget-wide v18, v7, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const-wide v16, 0x3fa2eeeeeeeeeeefL    # 0.03697916666666667

    const/4 v7, 0x3

    aget-object v7, p1, v7

    aget-wide v18, v7, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const-wide v16, -0x4055f52e2d35e7a8L    # -0.05086379716981132

    const/4 v7, 0x4

    aget-object v7, p1, v7

    aget-wide v18, v7, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const-wide v16, 0x3fa5748a7bdaf0e2L    # 0.0419047619047619

    const/4 v7, 0x5

    aget-object v7, p1, v7

    aget-wide v18, v7, v6

    mul-double v16, v16, v18

    add-double v14, v14, v16

    const-wide v16, -0x4066666666666666L    # -0.025

    const/4 v7, 0x6

    aget-object v7, p1, v7

    aget-wide v18, v7, v6

    mul-double v16, v16, v18

    add-double v2, v14, v16

    .line 148
    .local v2, "errSum":D
    aget-wide v14, p2, v6

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    aget-wide v16, p3, v6

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    .line 149
    .local v12, "yScale":D
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->vecAbsoluteTolerance:[D

    if-nez v7, :cond_0

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->scalAbsoluteTolerance:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->scalRelativeTolerance:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    add-double v10, v14, v16

    .line 152
    .local v10, "tol":D
    :goto_1
    mul-double v14, p4, v2

    div-double v8, v14, v10

    .line 153
    .local v8, "ratio":D
    mul-double v14, v8, v8

    add-double/2addr v4, v14

    .line 143
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    .line 149
    .end local v8    # "ratio":D
    .end local v10    # "tol":D
    :cond_0
    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->vecAbsoluteTolerance:[D

    aget-wide v14, v7, v6

    move-object/from16 v0, p0

    iget-object v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->vecRelativeTolerance:[D

    aget-wide v16, v7, v6

    mul-double v16, v16, v12

    add-double v10, v14, v16

    goto :goto_1

    .line 157
    .end local v2    # "errSum":D
    .end local v12    # "yScale":D
    :cond_1
    move-object/from16 v0, p0

    iget v7, v0, Lorg/apache/commons/math3/ode/nonstiff/DormandPrince54Integrator;->mainSetDimension:I

    int-to-double v14, v7

    div-double v14, v4, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    return-wide v14
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 132
    const/4 v0, 0x5

    return v0
.end method
