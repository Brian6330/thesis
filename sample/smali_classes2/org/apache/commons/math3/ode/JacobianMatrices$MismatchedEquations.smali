.class public Lorg/apache/commons/math3/ode/JacobianMatrices$MismatchedEquations;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "JacobianMatrices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/JacobianMatrices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MismatchedEquations"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1330546L


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 486
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->UNMATCHED_ODE_IN_EXPANDED_SET:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 487
    return-void
.end method
