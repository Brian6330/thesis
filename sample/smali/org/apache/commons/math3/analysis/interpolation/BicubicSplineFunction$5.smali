.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;
.super Ljava/lang/Object;
.source "BicubicSplineInterpolatingFunction.java"

# interfaces
.implements Lorg/apache/commons/math3/analysis/BivariateFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;-><init>([DZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

.field final synthetic val$aXY:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V
    .locals 0

    .prologue
    .line 546
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->val$aXY:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 11
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 548
    mul-double v2, p1, p1

    .line 549
    .local v2, "x2":D
    const/4 v6, 0x4

    new-array v0, v6, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v0, v6

    const/4 v6, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v0, v6

    const/4 v6, 0x2

    aput-wide p1, v0, v6

    const/4 v6, 0x3

    aput-wide v2, v0, v6

    .line 551
    .local v0, "pX":[D
    mul-double v4, p3, p3

    .line 552
    .local v4, "y2":D
    const/4 v6, 0x4

    new-array v1, v6, [D

    const/4 v6, 0x0

    const-wide/16 v8, 0x0

    aput-wide v8, v1, v6

    const/4 v6, 0x1

    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    aput-wide v8, v1, v6

    const/4 v6, 0x2

    aput-wide p3, v1, v6

    const/4 v6, 0x3

    aput-wide v4, v1, v6

    .line 554
    .local v1, "pY":[D
    iget-object v6, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iget-object v7, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$5;->val$aXY:[[D

    # invokes: Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D
    invoke-static {v6, v0, v1, v7}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide v6

    return-wide v6
.end method