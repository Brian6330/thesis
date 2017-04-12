.class final Lorg/apache/commons/math3/special/Beta$1;
.super Lorg/apache/commons/math3/util/ContinuedFraction;
.source "Beta.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/special/Beta;->regularizedBeta(DDDDI)D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$a:D

.field final synthetic val$b:D


# direct methods
.method constructor <init>(DD)V
    .locals 1

    .prologue
    .line 198
    iput-wide p1, p0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    iput-wide p3, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    invoke-direct {p0}, Lorg/apache/commons/math3/util/ContinuedFraction;-><init>()V

    return-void
.end method


# virtual methods
.method protected getA(ID)D
    .locals 2
    .param p1, "n"    # I
    .param p2, "x"    # D

    .prologue
    .line 218
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    return-wide v0
.end method

.method protected getB(ID)D
    .locals 12
    .param p1, "n"    # I
    .param p2, "x"    # D

    .prologue
    .line 204
    rem-int/lit8 v4, p1, 0x2

    if-nez v4, :cond_0

    .line 205
    int-to-double v4, p1

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v0, v4, v6

    .line 206
    .local v0, "m":D
    iget-wide v4, p0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    sub-double/2addr v4, v0

    mul-double/2addr v4, v0

    mul-double/2addr v4, p2

    iget-wide v6, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    div-double v2, v4, v6

    .line 213
    .local v2, "ret":D
    :goto_0
    return-wide v2

    .line 209
    .end local v0    # "m":D
    .end local v2    # "ret":D
    :cond_0
    int-to-double v4, p1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double v0, v4, v6

    .line 210
    .restart local v0    # "m":D
    iget-wide v4, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    add-double/2addr v4, v0

    iget-wide v6, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    iget-wide v8, p0, Lorg/apache/commons/math3/special/Beta$1;->val$b:D

    add-double/2addr v6, v8

    add-double/2addr v6, v0

    mul-double/2addr v4, v6

    mul-double/2addr v4, p2

    neg-double v4, v4

    iget-wide v6, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v0

    add-double/2addr v6, v8

    iget-wide v8, p0, Lorg/apache/commons/math3/special/Beta$1;->val$a:D

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v10, v0

    add-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    mul-double/2addr v6, v8

    div-double v2, v4, v6

    .restart local v2    # "ret":D
    goto :goto_0
.end method
