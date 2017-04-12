.class Lorg/apache/commons/math3/ode/MultistepIntegrator$InitializationCompletedMarkerException;
.super Ljava/lang/RuntimeException;
.source "MultistepIntegrator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/MultistepIntegrator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationCompletedMarkerException"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x1a9032983af580d2L


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 442
    const/4 v0, 0x0

    check-cast v0, Ljava/lang/Throwable;

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 443
    return-void
.end method
