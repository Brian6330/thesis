.class Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;
.super Ljava/lang/Object;
.source "AbstractRealMatrix.java"

# interfaces
.implements Lorg/apache/commons/math3/linear/RealMatrixPreservingVisitor;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/AbstractRealMatrix;->getFrobeniusNorm()D
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private sum:D

.field final synthetic this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/AbstractRealMatrix;)V
    .locals 0

    .prologue
    .line 279
    iput-object p1, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->this$0:Lorg/apache/commons/math3/linear/AbstractRealMatrix;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public end()D
    .locals 2

    .prologue
    .line 298
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->sum:D

    invoke-static {v0, v1}, Lorg/apache/commons/math3/util/FastMath;->sqrt(D)D

    move-result-wide v0

    return-wide v0
.end method

.method public start(IIIIII)V
    .locals 2
    .param p1, "rows"    # I
    .param p2, "columns"    # I
    .param p3, "startRow"    # I
    .param p4, "endRow"    # I
    .param p5, "startColumn"    # I
    .param p6, "endColumn"    # I

    .prologue
    .line 288
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->sum:D

    .line 289
    return-void
.end method

.method public visit(IID)V
    .locals 5
    .param p1, "row"    # I
    .param p2, "column"    # I
    .param p3, "value"    # D

    .prologue
    .line 293
    iget-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->sum:D

    mul-double v2, p3, p3

    add-double/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/commons/math3/linear/AbstractRealMatrix$2;->sum:D

    .line 294
    return-void
.end method
