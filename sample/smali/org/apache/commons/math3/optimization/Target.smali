.class public Lorg/apache/commons/math3/optimization/Target;
.super Ljava/lang/Object;
.source "Target.java"

# interfaces
.implements Lorg/apache/commons/math3/optimization/OptimizationData;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private final target:[D


# direct methods
.method public constructor <init>([D)V
    .locals 1
    .param p1, "observations"    # [D

    .prologue
    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/Target;->target:[D

    .line 40
    return-void
.end method


# virtual methods
.method public getTarget()[D
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lorg/apache/commons/math3/optimization/Target;->target:[D

    invoke-virtual {v0}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method