.class public Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;
.super Ljava/lang/Object;
.source "HarmonicOscillator.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/ParametricUnivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parametric"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private validateParameters([D)V
    .locals 3
    .param p1, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x3

    .line 142
    if-nez p1, :cond_0

    .line 143
    new-instance v0, Lorg/apache/commons/math3/exception/NullArgumentException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/NullArgumentException;-><init>()V

    throw v0

    .line 145
    :cond_0
    array-length v0, p1

    if-eq v0, v2, :cond_1

    .line 146
    new-instance v0, Lorg/apache/commons/math3/exception/DimensionMismatchException;

    array-length v1, p1

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/exception/DimensionMismatchException;-><init>(II)V

    throw v0

    .line 148
    :cond_1
    return-void
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 21
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 115
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;->validateParameters([D)V

    .line 117
    const/16 v16, 0x0

    aget-wide v4, p3, v16

    .line 118
    .local v4, "amplitude":D
    const/16 v16, 0x1

    aget-wide v6, p3, v16

    .line 119
    .local v6, "omega":D
    const/16 v16, 0x2

    aget-wide v10, p3, v16

    .line 121
    .local v10, "phase":D
    mul-double v16, v6, p1

    add-double v14, v16, v10

    .line 122
    .local v14, "xTimesOmegaPlusPhase":D
    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    # invokes: Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->value(DD)D
    invoke-static/range {v14 .. v17}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->access$000(DD)D

    move-result-wide v2

    .line 123
    .local v2, "a":D
    neg-double v0, v4

    move-wide/from16 v16, v0

    invoke-static {v14, v15}, Lorg/apache/commons/math3/util/FastMath;->sin(D)D

    move-result-wide v18

    mul-double v8, v16, v18

    .line 124
    .local v8, "p":D
    mul-double v12, v8, p1

    .line 126
    .local v12, "w":D
    const/16 v16, 0x3

    move/from16 v0, v16

    new-array v0, v0, [D

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-wide v2, v16, v17

    const/16 v17, 0x1

    aput-wide v12, v16, v17

    const/16 v17, 0x2

    aput-wide v8, v16, v17

    return-object v16
.end method

.method public varargs value(D[D)D
    .locals 5
    .param p1, "x"    # D
    .param p3, "param"    # [D
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/NullArgumentException;,
            Lorg/apache/commons/math3/exception/DimensionMismatchException;
        }
    .end annotation

    .prologue
    .line 95
    invoke-direct {p0, p3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator$Parametric;->validateParameters([D)V

    .line 96
    const/4 v0, 0x1

    aget-wide v0, p3, v0

    mul-double/2addr v0, p1

    const/4 v2, 0x2

    aget-wide v2, p3, v2

    add-double/2addr v0, v2

    const/4 v2, 0x0

    aget-wide v2, p3, v2

    # invokes: Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->value(DD)D
    invoke-static {v0, v1, v2, v3}, Lorg/apache/commons/math3/analysis/function/HarmonicOscillator;->access$000(DD)D

    move-result-wide v0

    return-wide v0
.end method
