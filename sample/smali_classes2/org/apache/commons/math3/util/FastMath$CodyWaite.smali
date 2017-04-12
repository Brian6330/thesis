.class Lorg/apache/commons/math3/util/FastMath$CodyWaite;
.super Ljava/lang/Object;
.source "FastMath.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/FastMath;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CodyWaite"
.end annotation


# instance fields
.field private final finalK:I

.field private final finalRemA:D

.field private final finalRemB:D


# direct methods
.method constructor <init>(D)V
    .locals 15
    .param p1, "xa"    # D

    .prologue
    .line 4161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4164
    const-wide v10, 0x3fe45f306dc9c883L    # 0.6366197723675814

    mul-double v10, v10, p1

    double-to-int v4, v10

    .line 4170
    .local v4, "k":I
    :goto_0
    neg-int v5, v4

    int-to-double v10, v5

    const-wide v12, 0x3ff921fb40000000L    # 1.570796251296997

    mul-double v0, v10, v12

    .line 4171
    .local v0, "a":D
    add-double v6, p1, v0

    .line 4172
    .local v6, "remA":D
    sub-double v10, v6, p1

    sub-double/2addr v10, v0

    neg-double v8, v10

    .line 4174
    .local v8, "remB":D
    neg-int v5, v4

    int-to-double v10, v5

    const-wide v12, 0x3e74442d18000000L    # 7.549789948768648E-8

    mul-double v0, v10, v12

    .line 4175
    move-wide v2, v6

    .line 4176
    .local v2, "b":D
    add-double v6, v0, v2

    .line 4177
    sub-double v10, v6, v2

    sub-double/2addr v10, v0

    neg-double v10, v10

    add-double/2addr v8, v10

    .line 4179
    neg-int v5, v4

    int-to-double v10, v5

    const-wide v12, 0x3c91a62633145c07L    # 6.123233995736766E-17

    mul-double v0, v10, v12

    .line 4180
    move-wide v2, v6

    .line 4181
    add-double v6, v0, v2

    .line 4182
    sub-double v10, v6, v2

    sub-double/2addr v10, v0

    neg-double v10, v10

    add-double/2addr v8, v10

    .line 4184
    const-wide/16 v10, 0x0

    cmpl-double v5, v6, v10

    if-lez v5, :cond_0

    .line 4194
    iput v4, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalK:I

    .line 4195
    iput-wide v6, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalRemA:D

    .line 4196
    iput-wide v8, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalRemB:D

    .line 4197
    return-void

    .line 4191
    :cond_0
    add-int/lit8 v4, v4, -0x1

    .line 4192
    goto :goto_0
.end method


# virtual methods
.method getK()I
    .locals 1

    .prologue
    .line 4203
    iget v0, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalK:I

    return v0
.end method

.method getRemA()D
    .locals 2

    .prologue
    .line 4209
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalRemA:D

    return-wide v0
.end method

.method getRemB()D
    .locals 2

    .prologue
    .line 4215
    iget-wide v0, p0, Lorg/apache/commons/math3/util/FastMath$CodyWaite;->finalRemB:D

    return-wide v0
.end method
