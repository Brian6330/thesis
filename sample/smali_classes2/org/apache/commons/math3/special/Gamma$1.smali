.class final Lorg/apache/commons/math3/special/Gamma$1;
.super Lorg/apache/commons/math3/util/ContinuedFraction;
.source "Gamma.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/special/Gamma;->regularizedGammaQ(DDDI)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:D


# direct methods
.method constructor <init>(D)V
    .locals 1

    .prologue
    .line 403
    iput-wide p1, p0, Lorg/apache/commons/math3/special/Gamma$1;->val$a:D

    invoke-direct {p0}, Lorg/apache/commons/math3/util/ContinuedFraction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getA(ID)D
    .locals 4
    .param p1, "n"    # I
    .param p2, "x"    # D

    .prologue
    .line 407
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    int-to-double v2, p1

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    add-double/2addr v0, v2

    iget-wide v2, p0, Lorg/apache/commons/math3/special/Gamma$1;->val$a:D

    sub-double/2addr v0, v2

    add-double/2addr v0, p2

    return-wide v0
.end method

.method protected getB(ID)D
    .locals 6
    .param p1, "n"    # I
    .param p2, "x"    # D

    .prologue
    .line 412
    int-to-double v0, p1

    iget-wide v2, p0, Lorg/apache/commons/math3/special/Gamma$1;->val$a:D

    int-to-double v4, p1

    sub-double/2addr v2, v4

    mul-double/2addr v0, v2

    return-wide v0
.end method
