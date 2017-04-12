.class Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;
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

.field final synthetic val$aX:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[[D)V
    .locals 0

    .prologue
    .line 500
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iput-object p2, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;->val$aX:[[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public value(DD)D
    .locals 13
    .param p1, "x"    # D
    .param p3, "y"    # D

    .prologue
    .line 502
    mul-double v2, p1, p1

    .line 503
    .local v2, "x2":D
    const/4 v8, 0x4

    new-array v0, v8, [D

    const/4 v8, 0x0

    const-wide/16 v10, 0x0

    aput-wide v10, v0, v8

    const/4 v8, 0x1

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v0, v8

    const/4 v8, 0x2

    aput-wide p1, v0, v8

    const/4 v8, 0x3

    aput-wide v2, v0, v8

    .line 505
    .local v0, "pX":[D
    mul-double v4, p3, p3

    .line 506
    .local v4, "y2":D
    mul-double v6, v4, p3

    .line 507
    .local v6, "y3":D
    const/4 v8, 0x4

    new-array v1, v8, [D

    const/4 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    aput-wide v10, v1, v8

    const/4 v8, 0x1

    aput-wide p3, v1, v8

    const/4 v8, 0x2

    aput-wide v4, v1, v8

    const/4 v8, 0x3

    aput-wide v6, v1, v8

    .line 509
    .local v1, "pY":[D
    iget-object v8, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;->this$0:Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;

    iget-object v9, p0, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction$1;->val$aX:[[D

    # invokes: Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->apply([D[D[[D)D
    invoke-static {v8, v0, v1, v9}, Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;->access$000(Lorg/apache/commons/math3/analysis/interpolation/BicubicSplineFunction;[D[D[[D)D

    move-result-wide v8

    return-wide v8
.end method
