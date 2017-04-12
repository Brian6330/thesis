.class public Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "GillIntegrator.java"


# static fields
.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    .line 50
    new-array v0, v11, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_C:[D

    .line 55
    new-array v0, v11, [[D

    new-array v1, v9, [D

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    aput-wide v2, v1, v8

    aput-object v1, v0, v8

    new-array v1, v10, [D

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v2, v4

    div-double/2addr v2, v6

    aput-wide v2, v1, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    sub-double v2, v6, v2

    div-double/2addr v2, v6

    aput-wide v2, v1, v9

    aput-object v1, v0, v9

    new-array v1, v11, [D

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    neg-double v2, v2

    div-double/2addr v2, v6

    aput-wide v2, v1, v9

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, v6

    div-double/2addr v2, v6

    aput-wide v2, v1, v10

    aput-object v1, v0, v10

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_A:[[D

    .line 62
    const/4 v0, 0x4

    new-array v0, v0, [D

    const-wide v2, 0x3fc5555555555555L    # 0.16666666666666666

    aput-wide v2, v0, v8

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    sub-double v2, v6, v2

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v9

    invoke-static {v6, v7}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v2

    add-double/2addr v2, v6

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    div-double/2addr v2, v4

    aput-wide v2, v0, v10

    const-wide v2, 0x3fc5555555555555L    # 0.16666666666666666

    aput-wide v2, v0, v11

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_B:[D

    return-void

    .line 50
    nop

    :array_0
    .array-data 8
        0x3fe0000000000000L    # 0.5
        0x3fe0000000000000L    # 0.5
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 9
    .param p1, "step"    # D

    .prologue
    .line 71
    const-string v1, "Gill"

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_C:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_A:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/GillIntegrator;->STATIC_B:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/GillStepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    .line 72
    return-void
.end method
