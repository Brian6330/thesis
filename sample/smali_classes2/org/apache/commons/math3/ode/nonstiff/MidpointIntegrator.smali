.class public Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;
.super Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;
.source "MidpointIntegrator.java"


# static fields
.field private static final STATIC_A:[[D

.field private static final STATIC_B:[D

.field private static final STATIC_C:[D


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 47
    new-array v0, v1, [D

    aput-wide v4, v0, v2

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->STATIC_C:[D

    .line 52
    new-array v0, v1, [[D

    new-array v1, v1, [D

    aput-wide v4, v1, v2

    aput-object v1, v0, v2

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->STATIC_A:[[D

    .line 57
    const/4 v0, 0x2

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->STATIC_B:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x3ff0000000000000L    # 1.0
    .end array-data
.end method

.method public constructor <init>(D)V
    .locals 9
    .param p1, "step"    # D

    .prologue
    .line 66
    const-string v1, "midpoint"

    sget-object v2, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->STATIC_C:[D

    sget-object v3, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->STATIC_A:[[D

    sget-object v4, Lorg/apache/commons/math3/ode/nonstiff/MidpointIntegrator;->STATIC_B:[D

    new-instance v5, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;

    invoke-direct {v5}, Lorg/apache/commons/math3/ode/nonstiff/MidpointStepInterpolator;-><init>()V

    move-object v0, p0

    move-wide v6, p1

    invoke-direct/range {v0 .. v7}, Lorg/apache/commons/math3/ode/nonstiff/RungeKuttaIntegrator;-><init>(Ljava/lang/String;[D[[D[DLorg/apache/commons/math3/ode/nonstiff/RungeKuttaStepInterpolator;D)V

    .line 67
    return-void
.end method
