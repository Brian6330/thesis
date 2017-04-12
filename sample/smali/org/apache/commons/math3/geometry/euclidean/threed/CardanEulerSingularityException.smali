.class public Lorg/apache/commons/math3/geometry/euclidean/threed/CardanEulerSingularityException;
.super Lorg/apache/commons/math3/exception/MathIllegalStateException;
.source "CardanEulerSingularityException.java"


# static fields
.field private static final serialVersionUID:J = -0x12e3136704fc0732L


# direct methods
.method public constructor <init>(Z)V
    .locals 2
    .param p1, "isCardan"    # Z

    .prologue
    .line 41
    if-eqz p1, :cond_0

    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->CARDAN_ANGLES_SINGULARITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    :goto_0
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalStateException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 42
    return-void

    .line 41
    :cond_0
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->EULER_ANGLES_SINGULARITY:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    goto :goto_0
.end method
