.class public Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;
.super Ljava/lang/Object;
.source "CMAESOptimizer.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/OptimizationData;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Sigma"
.end annotation


# instance fields
.field private final sigma:[D


# direct methods
.method public constructor <init>([D)V
    .locals 6
    .param p1, "s"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NotPositiveException;
        }
    .end annotation

    .prologue
    .line 415
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 416
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 417
    aget-wide v2, p1, v0

    const-wide/16 v4, 0x0

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 418
    new-instance v1, Lorg/apache/commons/math3/exception/NotPositiveException;

    aget-wide v2, p1, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/apache/commons/math3/exception/NotPositiveException;-><init>(Ljava/lang/Number;)V

    throw v1

    .line 416
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 422
    :cond_1
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [D

    iput-object v1, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;->sigma:[D

    .line 423
    return-void
.end method


# virtual methods
.method public getSigma()[D
    .locals 1

    .prologue
    .line 429
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/direct/CMAESOptimizer$Sigma;->sigma:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method
