.class Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;
.super Lorg/apache/commons/math3/linear/DefaultRealMatrixPreservingVisitor;
.source "SingularValueDecomposition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/SingularValueDecomposition;->getCovariance(D)Lorg/apache/commons/math3/linear/RealMatrix;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/apache/commons/math3/linear/SingularValueDecomposition;

.field final synthetic val$data:[[D


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/SingularValueDecomposition;[[D)V
    .locals 0

    .prologue
    .line 587
    iput-object p1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;->this$0:Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;->val$data:[[D

    invoke-direct {p0}, Lorg/apache/commons/math3/linear/DefaultRealMatrixPreservingVisitor;-><init>()V

    return-void
.end method


# virtual methods
.method public visit(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D

    .prologue
    .line 592
    iget-object v0, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;->val$data:[[D

    aget-object v0, v0, p1

    iget-object v1, p0, Lorg/apache/commons/math3/linear/SingularValueDecomposition$1;->this$0:Lorg/apache/commons/math3/linear/SingularValueDecomposition;

    # getter for: Lorg/apache/commons/math3/linear/SingularValueDecomposition;->singularValues:[D
    invoke-static {v1}, Lorg/apache/commons/math3/linear/SingularValueDecomposition;->access$000(Lorg/apache/commons/math3/linear/SingularValueDecomposition;)[D

    move-result-object v1

    aget-wide v2, v1, p1

    div-double v2, p3, v2

    aput-wide v2, v0, p2

    .line 593
    return-void
.end method
