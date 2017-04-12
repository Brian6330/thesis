.class public Lorg/apache/commons/math3/fitting/WeightedObservedPoint;
.super Ljava/lang/Object;
.source "WeightedObservedPoint.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x49a5cea5cb791ffdL


# instance fields
.field private final weight:D

.field private final x:D

.field private final y:D


# direct methods
.method public constructor <init>(DDD)V
    .locals 1
    .param p1, "weight"    # D
    .param p3, "x"    # D
    .param p5, "y"    # D

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-wide p1, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->weight:D

    .line 46
    iput-wide p3, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->x:D

    .line 47
    iput-wide p5, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->y:D

    .line 48
    return-void
.end method


# virtual methods
.method public getWeight()D
    .locals 2

    .prologue
    .line 56
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->weight:D

    return-wide v0
.end method

.method public getX()D
    .locals 2

    .prologue
    .line 65
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->x:D

    return-wide v0
.end method

.method public getY()D
    .locals 2

    .prologue
    .line 74
    iget-wide v0, p0, Lorg/apache/commons/math3/fitting/WeightedObservedPoint;->y:D

    return-wide v0
.end method
