.class public Lorg/apache/commons/math3/ml/distance/EuclideanDistance;
.super Ljava/lang/Object;
.source "EuclideanDistance.java"

# interfaces
.implements Lorg/apache/commons/math3/ml/distance/DistanceMeasure;


# static fields
.field private static final serialVersionUID:J = 0x17d5fc5f72747668L


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compute([D[D)D
    .locals 2
    .param p1, "a"    # [D
    .param p2, "b"    # [D

    .prologue
    .line 33
    invoke-static {p1, p2}, Lorg/apache/commons/math3/util/MathArrays;->distance([D[D)D

    move-result-wide v0

    return-wide v0
.end method
