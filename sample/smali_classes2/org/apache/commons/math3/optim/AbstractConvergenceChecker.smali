.class public abstract Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;
.super Ljava/lang/Object;
.source "AbstractConvergenceChecker.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/ConvergenceChecker;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<PAIR:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/optim/ConvergenceChecker",
        "<TPAIR;>;"
    }
.end annotation


# instance fields
.field private final absoluteThreshold:D

.field private final relativeThreshold:D


# direct methods
.method public constructor <init>(DD)V
    .locals 1
    .param p1, "relativeThreshold"    # D
    .param p3, "absoluteThreshold"    # D

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;, "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker<TPAIR;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->relativeThreshold:D

    .line 46
    iput-wide p3, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->absoluteThreshold:D

    .line 47
    return-void
.end method


# virtual methods
.method public abstract converged(ILjava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITPAIR;TPAIR;)Z"
        }
    .end annotation
.end method

.method public getAbsoluteThreshold()D
    .locals 2

    .prologue
    .line 60
    .local p0, "this":Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;, "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker<TPAIR;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->absoluteThreshold:D

    return-wide v0
.end method

.method public getRelativeThreshold()D
    .locals 2

    .prologue
    .line 53
    .local p0, "this":Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;, "Lorg/apache/commons/math3/optim/AbstractConvergenceChecker<TPAIR;>;"
    iget-wide v0, p0, Lorg/apache/commons/math3/optim/AbstractConvergenceChecker;->relativeThreshold:D

    return-wide v0
.end method
