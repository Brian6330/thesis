.class public Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "ThreeEighthesIntegrator.java"


# static fields
.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x3

    .line 48
    new-array v0, v4, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->STATIC_C:[D

    .line 53
    new-array v0, v4, [[D

    new-array v1, v6, [D

    const-wide v2, 0x3fd5555555555555L    # 0.3333333333333333

    aput-wide v2, v1, v5

    aput-object v1, v0, v5

    new-array v1, v7, [D

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v4, [D

    fill-array-data v1, :array_2

    aput-object v1, v0, v7

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->STATIC_A:[[D

    .line 60
    const/4 v0, 0x4

    new-array v0, v0, [D

    fill-array-data v0, :array_3

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->STATIC_B:[D

    return-void

    .line 48
    nop

    :array_0
    .array-data 8
        0x3fd5555555555555L    # 0.3333333333333333
        0x3fe5555555555555L    # 0.6666666666666666
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 53
    :array_1
    .array-data 8
        -0x402aaaaaaaaaaaabL    # -0.3333333333333333
        0x3ff0000000000000L    # 1.0
    .end array-data

    :array_2
    .array-data 8
        0x3ff0000000000000L    # 1.0
        -0x4010000000000000L    # -1.0
        0x3ff0000000000000L    # 1.0
    .end array-data

    .line 60
    :array_3
    .array-data 8
        0x3fc0000000000000L    # 0.125
        0x3fd8000000000000L    # 0.375
        0x3fd8000000000000L    # 0.375
        0x3fc0000000000000L    # 0.125
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 9
    .param p1, "step"    # D

    .prologue
    .line 69
    const-string v1, "3/8"

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->STATIC_C:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->STATIC_A:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesIntegrator;->STATIC_B:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/ThreeEighthesStepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    .line 70
    return-void
.end method
