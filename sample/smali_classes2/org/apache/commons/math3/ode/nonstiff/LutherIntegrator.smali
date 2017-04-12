.class public Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "LutherIntegrator.java"


# static fields
.field private static final Q:D

.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .prologue
    const/4 v15, 0x3

    const/4 v14, 0x2

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-wide v10, 0x4066800000000000L    # 180.0

    .line 59
    const-wide/high16 v0, 0x4035000000000000L    # 21.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    sput-wide v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    .line 62
    const/4 v0, 0x6

    new-array v0, v0, [D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v12

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    aput-wide v2, v0, v13

    const-wide v2, 0x3fe5555555555555L    # 0.6666666666666666

    aput-wide v2, v0, v14

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    sget-wide v4, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    sub-double/2addr v2, v4

    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v15

    const/4 v1, 0x4

    const-wide/high16 v2, 0x401c000000000000L    # 7.0

    sget-wide v4, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x402c000000000000L    # 14.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v1

    const/4 v1, 0x5

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_C:[D

    .line 67
    const/4 v0, 0x6

    new-array v0, v0, [[D

    new-array v1, v13, [D

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    aput-wide v2, v1, v12

    aput-object v1, v0, v12

    new-array v1, v14, [D

    fill-array-data v1, :array_0

    aput-object v1, v0, v13

    new-array v1, v15, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v14

    const/4 v1, 0x4

    new-array v1, v1, [D

    const-wide/high16 v2, -0x3fcb000000000000L    # -21.0

    const-wide/high16 v4, 0x4022000000000000L    # 9.0

    sget-wide v6, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x4078800000000000L    # 392.0

    div-double/2addr v2, v4

    aput-wide v2, v1, v12

    const-wide/high16 v2, -0x3fb4000000000000L    # -56.0

    const-wide/high16 v4, 0x4020000000000000L    # 8.0

    sget-wide v6, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x4078800000000000L    # 392.0

    div-double/2addr v2, v4

    aput-wide v2, v1, v13

    const-wide/high16 v2, 0x4075000000000000L    # 336.0

    const-wide/high16 v4, 0x4048000000000000L    # 48.0

    sget-wide v6, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v4, v6

    sub-double/2addr v2, v4

    const-wide v4, 0x4078800000000000L    # 392.0

    div-double/2addr v2, v4

    aput-wide v2, v1, v14

    const-wide v2, -0x3fb0800000000000L    # -63.0

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    sget-wide v6, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide v4, 0x4078800000000000L    # 392.0

    div-double/2addr v2, v4

    aput-wide v2, v1, v15

    aput-object v1, v0, v15

    const/4 v1, 0x4

    const/4 v2, 0x5

    new-array v2, v2, [D

    const-wide v4, -0x3f6df40000000000L    # -1155.0

    const-wide v6, 0x406fe00000000000L    # 255.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x409ea00000000000L    # 1960.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v12

    const-wide v4, -0x3f8e800000000000L    # -280.0

    const-wide/high16 v6, 0x4044000000000000L    # 40.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x409ea00000000000L    # 1960.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v13

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x4074000000000000L    # 320.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    const-wide v6, 0x409ea00000000000L    # 1960.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v14

    const-wide v4, 0x404f800000000000L    # 63.0

    const-wide v6, 0x4076b00000000000L    # 363.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x409ea00000000000L    # 1960.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v15

    const/4 v3, 0x4

    const-wide v4, 0x40a2600000000000L    # 2352.0

    const-wide v6, 0x4078800000000000L    # 392.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    const-wide v6, 0x409ea00000000000L    # 1960.0

    div-double/2addr v4, v6

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [D

    const-wide v4, 0x4074a00000000000L    # 330.0

    const-wide v6, 0x405a400000000000L    # 105.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    div-double/2addr v4, v10

    aput-wide v4, v2, v12

    const-wide/high16 v4, 0x405e000000000000L    # 120.0

    const-wide/16 v6, 0x0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    div-double/2addr v4, v10

    aput-wide v4, v2, v13

    const-wide/high16 v4, -0x3f97000000000000L    # -200.0

    const-wide v6, 0x4071800000000000L    # 280.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    div-double/2addr v4, v10

    aput-wide v4, v2, v14

    const-wide v4, 0x405f800000000000L    # 126.0

    const-wide v6, 0x4067a00000000000L    # 189.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    div-double/2addr v4, v10

    aput-wide v4, v2, v15

    const/4 v3, 0x4

    const-wide v4, -0x3f7a900000000000L    # -686.0

    const-wide v6, 0x405f800000000000L    # 126.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    div-double/2addr v4, v10

    aput-wide v4, v2, v3

    const/4 v3, 0x5

    const-wide v4, 0x407ea00000000000L    # 490.0

    const-wide v6, 0x4051800000000000L    # 70.0

    sget-wide v8, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->Q:D

    mul-double/2addr v6, v8

    sub-double/2addr v4, v6

    div-double/2addr v4, v10

    aput-wide v4, v2, v3

    aput-object v2, v0, v1

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_A:[[D

    .line 77
    const/4 v0, 0x7

    new-array v0, v0, [D

    fill-array-data v0, :array_2

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_B:[D

    return-void

    .line 67
    :array_0
    .array-data 8
        0x3fd8000000000000L    # 0.375
        0x3fc0000000000000L    # 0.125
    .end array-data

    :array_1
    .array-data 8
        0x3fd2f684bda12f68L    # 0.2962962962962963
        0x3fb2f684bda12f68L    # 0.07407407407407407
        0x3fd2f684bda12f68L    # 0.2962962962962963
    .end array-data

    .line 77
    :array_2
    .array-data 8
        0x3fa999999999999aL    # 0.05
        0x0
        0x3fd6c16c16c16c17L    # 0.35555555555555557
        0x0
        0x3fd16c16c16c16c1L    # 0.2722222222222222
        0x3fd16c16c16c16c1L    # 0.2722222222222222
        0x3fa999999999999aL    # 0.05
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 9
    .param p1, "step"    # D

    .prologue
    .line 86
    const-string v1, "Luther"

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_C:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_A:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/LutherIntegrator;->STATIC_B:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/LutherStepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    .line 87
    return-void
.end method
