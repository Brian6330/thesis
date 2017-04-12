.class public Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;
.super Ljava/lang/Object;
.source "DefaultFieldMatrixChangingVisitor.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/apache/commons/math3/FieldElement",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/linear/FieldMatrixChangingVisitor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private final zero:Lorg/apache/commons/math3/FieldElement;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/FieldElement;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 40
    .local p0, "this":Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor<TT;>;"
    .local p1, "zero":Lorg/apache/commons/math3/FieldElement;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;->zero:Lorg/apache/commons/math3/FieldElement;

    .line 42
    return-void
.end method


# virtual methods
.method public end()Lorg/apache/commons/math3/FieldElement;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 56
    .local p0, "this":Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor<TT;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;->zero:Lorg/apache/commons/math3/FieldElement;

    return-object v0
.end method

.method public start(IIIIII)V
    .locals 0
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p3, "startRow"    # I
    .param p4, "endRow"    # I
    .param p5, "startColumn"    # I
    .param p6, "endColumn"    # I

    .prologue
    .line 47
    .local p0, "this":Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor<TT;>;"
    return-void
.end method

.method public visit(IILorg/apache/commons/math3/FieldElement;)Lorg/apache/commons/math3/FieldElement;
    .locals 0
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)TT;"
        }
    .end annotation

    .prologue
    .line 51
    .local p0, "this":Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor;, "Lorg/apache/commons/math3/linear/DefaultFieldMatrixChangingVisitor<TT;>;"
    .local p3, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    return-object p3
.end method
