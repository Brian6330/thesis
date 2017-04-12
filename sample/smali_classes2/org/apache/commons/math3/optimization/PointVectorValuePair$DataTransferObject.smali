.class Lorg/apache/commons/math3/optimization/PointVectorValuePair$DataTransferObject;
.super Ljava/lang/Object;
.source "PointVectorValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/PointVectorValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataTransferObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13303c1L


# instance fields
.field private final point:[D

.field private final value:[D


# direct methods
.method public constructor <init>([D[D)V
    .locals 1
    .param p1, "point"    # [D
    .param p2, "value"    # [D

    .prologue
    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/PointVectorValuePair$DataTransferObject;->point:[D

    .line 141
    invoke-virtual {p2}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/PointVectorValuePair$DataTransferObject;->value:[D

    .line 142
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 148
    new-instance v0, Lorg/apache/commons/math3/optimization/PointVectorValuePair;

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/PointVectorValuePair$DataTransferObject;->point:[D

    iget-object v2, p0, Lorg/apache/commons/math3/optimization/PointVectorValuePair$DataTransferObject;->value:[D

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/commons/math3/optimization/PointVectorValuePair;-><init>([D[DZ)V

    return-object v0
.end method
