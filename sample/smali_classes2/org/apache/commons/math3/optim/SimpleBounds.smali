.class public Lorg/apache/commons/math3/optim/SimpleBounds;
.super Ljava/lang/Object;
.source "SimpleBounds.java"

# interfaces
.implements Lorg/apache/commons/math3/optim/OptimizationData;


# instance fields
.field private final lower:[D

.field private final upper:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 1
    .param p1, "lB"    # [D
    .param p2, "uB"    # [D

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/SimpleBounds;->lower:[D

    .line 43
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optim/SimpleBounds;->upper:[D

    .line 44
    return-void
.end method

.method public static unbounded(I)Lorg/apache/commons/math3/optim/SimpleBounds;
    .locals 4
    .param p0, "dim"    # I

    .prologue
    .line 72
    new-array v0, p0, [D

    .line 73
    .local v0, "lB":[D
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 74
    new-array v1, p0, [D

    .line 75
    .local v1, "uB":[D
    const-wide/high16 v2, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 77
    new-instance v2, Lorg/apache/commons/math3/optim/SimpleBounds;

    invoke-direct {v2, v0, v1}, Lorg/apache/commons/math3/optim/SimpleBounds;-><init>([D[D)V

    return-object v2
.end method


# virtual methods
.method public getLower()[D
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lorg/apache/commons/math3/optim/SimpleBounds;->lower:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public getUpper()[D
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lorg/apache/commons/math3/optim/SimpleBounds;->upper:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
