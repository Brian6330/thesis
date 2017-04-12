.class public Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;
.super Ljava/lang/Object;
.source "NonNegativeConstraint.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final isRestricted:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0
    .param p1, "restricted"    # Z

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-boolean p1, p0, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;->isRestricted:Z

    .line 36
    return-void
.end method


# virtual methods
.method public isRestrictedToNonNegative()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lorg/apache/commons/math3/optim/linear/NonNegativeConstraint;->isRestricted:Z

    return v0
.end method
