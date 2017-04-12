.class public Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet$InconsistentStateAt2PiWrapping;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "ArcsSet.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/spherical/oned/ArcsSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InconsistentStateAt2PiWrapping"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x133504bL


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 957
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->INCONSISTENT_STATE_AT_2_PI_WRAPPING:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 958
    return-void
.end method
