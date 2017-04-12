.class Lorg/apache/commons/math3/fitting/GaussianFitter$1;
.super Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;
.source "GaussianFitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/fitting/GaussianFitter;->fit([D)[D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/fitting/GaussianFitter;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/fitting/GaussianFitter;)V
    .locals 0

    .prologue
    .line 83
    iput-object p1, p0, Lorg/apache/commons/math3/fitting/GaussianFitter$1;->this$0:Lorg/apache/commons/math3/fitting/GaussianFitter;

    invoke-direct {p0}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs gradient(D[D)[D
    .locals 3
    .param p1, "x"    # D
    .param p3, "p"    # [D

    .prologue
    .line 97
    const/4 v1, 0x3

    new-array v0, v1, [D

    fill-array-data v0, :array_0

    .line 101
    .local v0, "v":[D
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->gradient(D[D)[D
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/NotStrictlyPositiveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 105
    :goto_0
    return-object v0

    .line 102
    :catch_0
    move-exception v1

    goto :goto_0

    .line 97
    nop

    :array_0
    .array-data 8
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
        0x7ff0000000000000L    # Double.POSITIVE_INFINITY
    .end array-data
.end method

.method public varargs value(D[D)D
    .locals 3
    .param p1, "x"    # D
    .param p3, "p"    # [D

    .prologue
    .line 86
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    .line 88
    .local v0, "v":D
    :try_start_0
    invoke-super {p0, p1, p2, p3}, Lorg/apache/commons/math3/analysis/function/Gaussian$Parametric;->value(D[D)D
    :try_end_0
    .catch Lorg/apache/commons/math3/exception/NotStrictlyPositiveException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 92
    :goto_0
    return-wide v0

    .line 89
    :catch_0
    move-exception v2

    goto :goto_0
.end method
