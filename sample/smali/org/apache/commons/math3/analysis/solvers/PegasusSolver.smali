.class public Lorg/apache/commons/math3/analysis/solvers/PegasusSolver;
.super Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;
.source "PegasusSolver.java"


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 49
    const-wide v0, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    sget-object v2, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-direct {p0, v0, v1, v2}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    .line 50
    return-void
.end method

.method public constructor <init>(D)V
    .locals 1
    .param p1, "absoluteAccuracy"    # D

    .prologue
    .line 58
    sget-object v0, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    .line 59
    return-void
.end method

.method public constructor <init>(DD)V
    .locals 7
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D

    .prologue
    .line 69
    sget-object v6, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-direct/range {v1 .. v6}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    .line 70
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 9
    .param p1, "relativeAccuracy"    # D
    .param p3, "absoluteAccuracy"    # D
    .param p5, "functionValueAccuracy"    # D

    .prologue
    .line 82
    sget-object v8, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;->PEGASUS:Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    invoke-direct/range {v1 .. v8}, Lorg/apache/commons/math3/analysis/solvers/BaseSecantSolver;-><init>(DDDLorg/apache/commons/math3/analysis/solvers/BaseSecantSolver$Method;)V

    .line 83
    return-void
.end method
