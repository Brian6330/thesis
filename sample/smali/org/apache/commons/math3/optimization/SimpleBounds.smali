.class public Lorg/apache/commons/math3/optimization/SimpleBounds;
.super Ljava/lang/Object;
.source "SimpleBounds.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/OptimizationData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final lower:[D

.field private final upper:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 1
    .param p1, "lB"    # [D
    .param p2, "uB"    # [D

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/SimpleBounds;->lower:[D

    .line 44
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/SimpleBounds;->upper:[D

    .line 45
    return-void
.end method


# virtual methods
.method public getLower()[D
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/SimpleBounds;->lower:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getUpper()[D
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/SimpleBounds;->upper:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
