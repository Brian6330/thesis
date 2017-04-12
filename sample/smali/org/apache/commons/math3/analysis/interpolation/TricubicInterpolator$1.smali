.class Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;
.super Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
.source "TricubicInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;->interpolate([D[D[D[[[D)Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;

.field final synthetic val$xval:[D

.field final synthetic val$yval:[D

.field final synthetic val$zval:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;[D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[D[D[D)V
    .locals 13
    .param p2, "x0"    # [D
    .param p3, "x1"    # [D
    .param p4, "x2"    # [D
    .param p5, "x3"    # [[[D
    .param p6, "x4"    # [[[D
    .param p7, "x5"    # [[[D
    .param p8, "x6"    # [[[D
    .param p9, "x7"    # [[[D
    .param p10, "x8"    # [[[D
    .param p11, "x9"    # [[[D
    .param p12, "x10"    # [[[D

    .prologue
    .line 126
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator;

    move-object/from16 v0, p13

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$xval:[D

    move-object/from16 v0, p14

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$yval:[D

    move-object/from16 v0, p15

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$zval:[D

    move-object v1, p0

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    invoke-direct/range {v1 .. v12}, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolatingFunction;-><init>([D[D[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D[[[D)V

    return-void
.end method


# virtual methods
.method public isValidPoint(DDD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D
    .param p5, "z"    # D

    .prologue
    const/4 v0, 0x1

    .line 129
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$xval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$xval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v1, v2

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$yval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p3, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$yval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v1, v2

    cmpl-double v1, p3, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$zval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p5, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$zval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/TricubicInterpolator$1;->val$zval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v1, v2

    cmpl-double v1, p5, v2

    if-lez v1, :cond_1

    .line 135
    :cond_0
    const/4 v0, 0x0

    .line 137
    :cond_1
    return v0
.end method
