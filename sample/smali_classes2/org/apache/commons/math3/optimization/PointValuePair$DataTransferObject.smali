.class Lorg/apache/commons/math3/optimization/PointValuePair$DataTransferObject;
.super Ljava/lang/Object;
.source "PointValuePair.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/optimization/PointValuePair;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DataTransferObject"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13303c1L


# instance fields
.field private final point:[D

.field private final value:D


# direct methods
.method public constructor <init>([DD)V
    .locals 2
    .param p1, "point"    # [D
    .param p2, "value"    # D

    .prologue
    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    invoke-virtual {p1}, [D->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    iput-object v0, p0, Lorg/apache/commons/math3/optimization/PointValuePair$DataTransferObject;->point:[D

    .line 116
    iput-wide p2, p0, Lorg/apache/commons/math3/optimization/PointValuePair$DataTransferObject;->value:D

    .line 117
    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 5

    .prologue
    .line 123
    new-instance v0, Lorg/apache/commons/math3/optimization/PointValuePair;

    iget-object v1, p0, Lorg/apache/commons/math3/optimization/PointValuePair$DataTransferObject;->point:[D

    iget-wide v2, p0, Lorg/apache/commons/math3/optimization/PointValuePair$DataTransferObject;->value:D

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lorg/apache/commons/math3/optimization/PointValuePair;-><init>([DDZ)V

    return-object v0
.end method
