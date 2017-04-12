.class public Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;
.super Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;
.source "HighamHall54Integrator.java"


# static fields
.field private static final METHOD_NAME:Ljava/lang/String; = "Higham-Hall 5(4)"

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D

.field private static final STATIC_E:[D


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x6

    .line 42
    new-array v0, v4, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_C:[D

    .line 47
    new-array v0, v4, [[D

    new-array v1, v6, [D

    const-wide v2, 0x3fcc71c71c71c71cL    # 0.2222222222222222

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

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_A:[[D

    .line 57
    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_6

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_B:[D

    .line 62
    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_7

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_E:[D

    return-void

    .line 42
    nop

    :array_0
    .array-data 8
        0x3fcc71c71c71c71cL    # 0.2222222222222222
        0x3fd5555555555555L    # 0.3333333333333333
        0x3fe0000000000000L    # 0.5
        0x3fe3333333333333L    # 0.6
        0x3ff0000000000000L    # 1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 47
    :array_1
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x3fd0000000000000L    # 0.25
    .end array-data

    :array_2
    .array-data 8
        0x3fc0000000000000L    # 0.125
        0x0
        0x3fd8000000000000L    # 0.375
    .end array-data

    :array_3
    .array-data 8
        0x3fc74bc6a7ef9db2L    # 0.182
        -0x402eb851eb851eb8L    # -0.27
        0x3fe3f7ced916872bL    # 0.624
        0x3fb0624dd2f1a9fcL    # 0.064
    .end array-data

    :array_4
    .array-data 8
        -0x401e666666666666L    # -0.55
        0x3ff599999999999aL    # 1.35
        0x4003333333333333L    # 2.4
        -0x3fe3333333333333L    # -7.2
        0x4014000000000000L    # 5.0
    .end array-data

    :array_5
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x0
        0x3feb000000000000L    # 0.84375
        -0x400aaaaaaaaaaaabL    # -1.3333333333333333
        0x3ff4d55555555555L    # 1.3020833333333333
        0x3fbaaaaaaaaaaaabL    # 0.10416666666666667
    .end array-data

    .line 57
    :array_6
    .array-data 8
        0x3fb5555555555555L    # 0.08333333333333333
        0x0
        0x3feb000000000000L    # 0.84375
        -0x400aaaaaaaaaaaabL    # -1.3333333333333333
        0x3ff4d55555555555L    # 1.3020833333333333
        0x3fbaaaaaaaaaaaabL    # 0.10416666666666667
        0x0
    .end array-data

    .line 62
    :array_7
    .array-data 8
        -0x4056666666666666L    # -0.05
        0x0
        0x3fe0333333333333L    # 0.50625
        -0x400ccccccccccccdL    # -1.2
        0x3fe9000000000000L    # 0.78125
        0x3fb0000000000000L    # 0.0625
        -0x4046666666666666L    # -0.1
    .end array-data
.end method

.method public constructor <init>(DDDD)V
    .locals 17
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "scalAbsoluteTolerance"    # D
    .param p7, "scalRelativeTolerance"    # D

    .prologue
    .line 80
    const-string v2, "Higham-Hall 5(4)"

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_C:[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_A:[[D

    sget-object v6, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_B:[D

    new-instance v7, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v7}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>()V

    move-object/from16 v1, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-wide/from16 v12, p5

    move-wide/from16 v14, p7

    invoke-direct/range {v1 .. v15}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DDDD)V

    .line 82
    return-void
.end method

.method public constructor <init>(DD[D[D)V
    .locals 15
    .param p1, "minStep"    # D
    .param p3, "maxStep"    # D
    .param p5, "vecAbsoluteTolerance"    # [D
    .param p6, "vecRelativeTolerance"    # [D

    .prologue
    .line 98
    const-string v2, "Higham-Hall 5(4)"

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_C:[D

    sget-object v5, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_A:[[D

    sget-object v6, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_B:[D

    new-instance v7, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;

    invoke-direct {v7}, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54StepInterpolator;-><init>()V

    move-object v1, p0

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    invoke-direct/range {v1 .. v13}, Lorg/apache/commons/math3/ode/nonstiff/EmbeddedRungeKuttaIntegrator;-><init>(Ljava/lang/String;Z[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;DD[D[D)V

    .line 100
    return-void
.end method


# virtual methods
.method protected estimateError([[D[D[DD)D
    .locals 18
    .param p1, "yDotK"    # [[D
    .param p2, "y0"    # [D
    .param p3, "y1"    # [D
    .param p4, "h"    # D

    .prologue
    .line 114
    const-wide/16 v4, 0x0

    .line 116
    .local v4, "error":D
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->mainSetDimension:I

    if-ge v6, v14, :cond_2

    .line 117
    sget-object v14, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_E:[D

    const/4 v15, 0x0

    aget-wide v14, v14, v15

    const/16 v16, 0x0

    aget-object v16, p1, v16

    aget-wide v16, v16, v6

    mul-double v2, v14, v16

    .line 118
    .local v2, "errSum":D
    const/4 v7, 0x1

    .local v7, "l":I
    :goto_1
    sget-object v14, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_E:[D

    array-length v14, v14

    if-ge v7, v14, :cond_0

    .line 119
    sget-object v14, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->STATIC_E:[D

    aget-wide v14, v14, v7

    aget-object v16, p1, v7

    aget-wide v16, v16, v6

    mul-double v14, v14, v16

    add-double/2addr v2, v14

    .line 118
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 122
    :cond_0
    aget-wide v14, p2, v6

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v14

    aget-wide v16, p3, v6

    invoke-static/range {v16 .. v17}, Lorg/apache/commons/math3/util/FastMath;->abs(D)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/util/FastMath;->max(DD)D

    move-result-wide v12

    .line 123
    .local v12, "yScale":D
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->vecAbsoluteTolerance:[D

    if-nez v14, :cond_1

    move-object/from16 v0, p0

    iget-wide v14, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->scalAbsoluteTolerance:D

    move-object/from16 v0, p0

    iget-wide v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->scalRelativeTolerance:D

    move-wide/from16 v16, v0

    mul-double v16, v16, v12

    add-double v10, v14, v16

    .line 126
    .local v10, "tol":D
    :goto_2
    mul-double v14, p4, v2

    div-double v8, v14, v10

    .line 127
    .local v8, "ratio":D
    mul-double v14, v8, v8

    add-double/2addr v4, v14

    .line 116
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 123
    .end local v8    # "ratio":D
    .end local v10    # "tol":D
    :cond_1
    move-object/from16 v0, p0

    iget-object v14, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->vecAbsoluteTolerance:[D

    aget-wide v14, v14, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->vecRelativeTolerance:[D

    move-object/from16 v16, v0

    aget-wide v16, v16, v6

    mul-double v16, v16, v12

    add-double v10, v14, v16

    goto :goto_2

    .line 131
    .end local v2    # "errSum":D
    .end local v7    # "l":I
    .end local v12    # "yScale":D
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Lorg/apache/commons/math3/ode/nonstiff/HighamHall54Integrator;->mainSetDimension:I

    int-to-double v14, v14

    div-double v14, v4, v14

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v14

    return-wide v14
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 105
    const/4 v0, 0x5

    return v0
.end method
