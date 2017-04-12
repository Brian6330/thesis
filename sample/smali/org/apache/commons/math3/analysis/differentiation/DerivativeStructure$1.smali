.class Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;
.super Ljava/lang/Object;
.source "DerivativeStructure.java"

# interfaces
.implements Lorg/apache/commons/math3/Field;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->getField()Lorg/apache/commons/math3/Field;
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
        "Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)V
    .locals 0

    .prologue
    .line 627
    iput-object p1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;->getOne()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6

    .prologue
    .line 636
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    invoke-static {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

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
            "Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 641
    const-class v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 627
    invoke-virtual {p0}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;->getZero()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;
    .locals 6

    .prologue
    .line 631
    new-instance v0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    iget-object v1, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    invoke-static {v1}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object v1

    invoke-virtual {v1}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getFreeParameters()I

    move-result v1

    iget-object v2, p0, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure$1;->this$0:Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;

    # getter for: Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->compiler:Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;
    invoke-static {v2}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;->access$000(Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;)Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;

    move-result-object v2

    invoke-virtual {v2}, Lorg/apache/commons/math3/analysis/differentiation/DSCompiler;->getOrder()I

    move-result v2

    const-wide/16 v4, 0x0

    invoke-direct {v0, v1, v2, v4, v5}, Lorg/apache/commons/math3/analysis/differentiation/DerivativeStructure;-><init>(IID)V

    return-object v0
.end method
