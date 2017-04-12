.class public Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D$NoSubSpaceException;
.super Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
.source "Euclidean1D.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/euclidean/oned/Euclidean1D;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoSubSpaceException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x13350c1L


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 95
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->NOT_SUPPORTED_IN_DIMENSION_N:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 96
    return-void
.end method
