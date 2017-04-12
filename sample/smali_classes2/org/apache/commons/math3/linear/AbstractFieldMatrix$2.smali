.class Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;
.super Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;
.source "AbstractFieldMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractFieldMatrix;->copySubMatrix(IIII[[Lorg/apache/commons/math3/FieldElement;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private startColumn:I

.field private startRow:I

.field final synthetic this$0:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

.field final synthetic val$destination:[[Lorg/apache/commons/math3/FieldElement;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/AbstractFieldMatrix;Lorg/apache/commons/math3/FieldElement;[[Lorg/apache/commons/math3/FieldElement;)V
    .locals 0

    .prologue
    .line 402
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix.2;"
    .local p2, "x0":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->this$0:Lorg/apache/commons/math3/linear/AbstractFieldMatrix;

    iput-object p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->val$destination:[[Lorg/apache/commons/math3/FieldElement;

    invoke-direct {p0, p2}, Lorg/apache/commons/math3/linear/DefaultFieldMatrixPreservingVisitor;-><init>(Lorg/apache/commons/math3/FieldElement;)V

    return-void
.end method


# virtual methods
.method public start(IIIIII)V
    .locals 0
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p3, "startRow"    # I
    .param p4, "endRow"    # I
    .param p5, "startColumn"    # I
    .param p6, "endColumn"    # I

    .prologue
    .line 415
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix.2;"
    iput p3, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->startRow:I

    .line 416
    iput p5, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->startColumn:I

    .line 417
    return-void
.end method

.method public visit(IILorg/apache/commons/math3/FieldElement;)V
    .locals 2
    .param p1, "row"    # I
    .param p2, "column"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IITT;)V"
        }
    .end annotation

    .prologue
    .line 422
    .local p0, "this":Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;, "Lorg/apache/commons/math3/linear/AbstractFieldMatrix.2;"
    .local p3, "value":Lorg/apache/commons/math3/FieldElement;, "TT;"
    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->val$destination:[[Lorg/apache/commons/math3/FieldElement;

    iget v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->startRow:I

    sub-int v1, p1, v1

    aget-object v0, v0, v1

    iget v1, p0, Lorg/apache/commons/math3/linear/AbstractFieldMatrix$2;->startColumn:I

    sub-int v1, p2, v1

    aput-object p3, v0, v1

    .line 423
    return-void
.end method
