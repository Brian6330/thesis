.class public Lorg/apache/commons/math3/linear/IllConditionedOperatorException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "IllConditionedOperatorException.java"


# static fields
.field private static final serialVersionUID:J = -0x6d66faca4c627317L


# direct methods
.method public constructor <init>(D)V
    .locals 5
    .param p1, "cond"    # D

    .prologue
    .line 40
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->ILL_CONDITIONED_OPERATOR:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 41
    return-void
.end method
