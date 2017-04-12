.class public Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;
.super Ljava/lang/Object;
.source "DummyStepHandler.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/sampling/StepHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$1;,
        Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$LazyHolder;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$1;

    .prologue
    .line 36
    invoke-direct {p0}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;
    .locals 1

    .prologue
    .line 49
    # getter for: Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;
    invoke-static {}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$LazyHolder;->access$000()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 86
    # getter for: Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;
    invoke-static {}, Lorg/apache/commons/math3/ode/sampling/DummyStepHandler$LazyHolder;->access$000()Lorg/apache/commons/math3/ode/sampling/DummyStepHandler;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public handleStep(Lorg/apache/commons/math3/ode/sampling/StepInterpolator;Z)V
    .locals 0
    .param p1, "interpolator"    # Lorg/apache/commons/math3/ode/sampling/StepInterpolator;
    .param p2, "isLast"    # Z

    .prologue
    .line 69
    return-void
.end method

.method public init(D[DD)V
    .locals 0
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .prologue
    .line 54
    return-void
.end method
