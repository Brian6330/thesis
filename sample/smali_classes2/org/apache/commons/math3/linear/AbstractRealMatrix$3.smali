.class Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;
.super Lorg/apache/commons/math3/linear/DefaultRealMatrixChangingVisitor;
.source "AbstractRealMatrix.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getSubMatrix([I[I)Lorg/apache/commons/math3/linear/RealMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

.field final synthetic val$selectedColumns:[I

.field final synthetic val$selectedRows:[I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;[I[I)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;->this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;->val$selectedRows:[I

    iput-object p3, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;->val$selectedColumns:[I

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/DefaultRealMatrixChangingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(IID)D
    .locals 3
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D

    .prologue
    .line 333
    iget-object v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;->this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;->val$selectedRows:[I

    aget v1, v1, p1

    iget-object v2, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$3;->val$selectedColumns:[I

    aget v2, v2, p2

    invoke-virtual {v0, v1, v2}, Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getEntry(II)D

    move-result-wide v0

    return-wide v0
.end method
