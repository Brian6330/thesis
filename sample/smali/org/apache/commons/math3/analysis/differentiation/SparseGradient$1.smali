.class Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$1;
.super Ljava/lang/Object;
.source "SparseGradient.java"

# interfaces
.implements Lorg/apache/commons/math3/Field;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->getField()Lorg/apache/commons/math3/Field;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field",
        "<",
        "Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;)V
    .locals 0

    .prologue
    .line 296
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$1;->getOne()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .prologue
    .line 305
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public getRuntimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/commons/math3/FieldElement",
            "<",
            "Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 310
    const-class v0, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 296
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient$1;->getZero()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;
    .locals 2

    .prologue
    .line 300
    const-wide/16 v0, 0x0

    invoke-static {v0, v1}, Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;->createConstant(D)Lorg/apache/commons/math3/analysis/differentiation/SparseGradient;

    move-result-object v0

    return-object v0
.end method
