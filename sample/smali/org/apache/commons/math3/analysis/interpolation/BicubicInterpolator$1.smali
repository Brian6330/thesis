.class Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;
.super Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.source "BicubicInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;->interpolate([D[D[[D)Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;

.field final synthetic val$xval:[D

.field final synthetic val$yval:[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;[D[D[[D[[D[[D[[D[D[D)V
    .locals 8
    .param p2, "x0"    # [D
    .param p3, "x1"    # [D
    .param p4, "x2"    # [[D
    .param p5, "x3"    # [[D
    .param p6, "x4"    # [[D
    .param p7, "x5"    # [[D

    .prologue
    .line 98
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator;

    move-object/from16 v0, p8

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    move-object/from16 v0, p9

    iput-object v0, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    move-object v1, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    move-object v7, p7

    invoke-direct/range {v1 .. v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolatingFunction;-><init>([D[D[[D[[D[[D[[D)V

    return-void
.end method


# virtual methods
.method public isValidPoint(DD)Z
    .locals 5
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    const/4 v0, 0x1

    .line 101
    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p1, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$xval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v1, v2

    cmpl-double v1, p1, v2

    if-gtz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    aget-wide v2, v1, v0

    cmpg-double v1, p3, v2

    if-ltz v1, :cond_0

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicInterpolator$1;->val$yval:[D

    array-length v2, v2

    add-int/lit8 v2, v2, -0x2

    aget-wide v2, v1, v2

    cmpl-double v1, p3, v2

    if-lez v1, :cond_1

    .line 105
    :cond_0
    const/4 v0, 0x0

    .line 107
    :cond_1
    return v0
.end method
