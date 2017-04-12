.class Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;
.super Ljava/lang/Object;
.source "JacobianMatrices.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/MainStateJacobianProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "MainStateJacobianWrapper"
.end annotation


# instance fields
.field private final hY:[D

.field private final ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;[D)V
    .locals 3
    .param p1, "ode"    # Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .param p2, "hY"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 436
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 437
    iput-object p1, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    .line 438
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    .line 439
    array-length v0, p2

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 440
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    invoke-interface {p1}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v1

    array-length v2, p2

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 442
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;)Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;

    .prologue
    .line 420
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    return-object v0
.end method


# virtual methods
.method public computeDerivatives(D[D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 452
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 453
    return-void
.end method

.method public computeMainStateJacobian(D[D[D[[D)V
    .locals 17
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "yDot"    # [D
    .param p5, "dFdY"    # [[D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MaxCountExceededException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 459
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v10}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v6

    .line 460
    .local v6, "n":I
    new-array v7, v6, [D

    .line 462
    .local v7, "tmpDot":[D
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_0
    if-ge v5, v6, :cond_1

    .line 463
    aget-wide v8, p3, v5

    .line 464
    .local v8, "savedYj":D
    aget-wide v10, p3, v5

    move-object/from16 v0, p0

    iget-object v12, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    aget-wide v12, v12, v5

    add-double/2addr v10, v12

    aput-wide v10, p3, v5

    .line 465
    move-object/from16 v0, p0

    iget-object v10, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    move-wide/from16 v0, p1

    move-object/from16 v2, p3

    invoke-interface {v10, v0, v1, v2, v7}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->computeDerivatives(D[D[D)V

    .line 466
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_1
    if-ge v4, v6, :cond_0

    .line 467
    aget-object v10, p5, v4

    aget-wide v12, v7, v4

    aget-wide v14, p4, v4

    sub-double/2addr v12, v14

    move-object/from16 v0, p0

    iget-object v11, v0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->hY:[D

    aget-wide v14, v11, v5

    div-double/2addr v12, v14

    aput-wide v12, v10, v5

    .line 466
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 469
    :cond_0
    aput-wide v8, p3, v5

    .line 462
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 471
    .end local v4    # "i":I
    .end local v8    # "savedYj":D
    :cond_1
    return-void
.end method

.method public getDimension()I
    .locals 1

    .prologue
    .line 446
    iget-object v0, p0, Lorg/apache/commons/math3/ode/JacobianMatrices$MainStateJacobianWrapper;->ode:Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;

    invoke-interface {v0}, Lorg/apache/commons/math3/ode/FirstOrderDifferentialEquations;->getDimension()I

    move-result v0

    return v0
.end method
