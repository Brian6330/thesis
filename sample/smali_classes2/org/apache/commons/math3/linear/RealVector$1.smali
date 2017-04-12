.class Lorg/apache/commons/math3/linear/RealVector$1;
.super Ljava/lang/Object;
.source "RealVector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/RealVector;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<",
        "Lorg/apache/commons/math3/linear/RealVector$Entry;",
        ">;"
    }
.end annotation


# instance fields
.field private e:Lorg/apache/commons/math3/linear/RealVector$Entry;

.field private i:I

.field final synthetic this$0:Lorg/apache/commons/math3/linear/RealVector;

.field final synthetic val$dim:I


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealVector;I)V
    .locals 2

    .prologue
    .line 753
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->this$0:Lorg/apache/commons/math3/linear/RealVector;

    iput p2, p0, Lorg/apache/commons/math3/linear/RealVector$1;->val$dim:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 756
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    .line 759
    new-instance v0, Lorg/apache/commons/math3/linear/RealVector$Entry;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->this$0:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->e:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    .prologue
    .line 763
    iget v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    iget v1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->val$dim:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 753
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$1;->next()Lorg/apache/commons/math3/linear/RealVector$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/math3/linear/RealVector$Entry;
    .locals 3

    .prologue
    .line 768
    iget v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    iget v1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->val$dim:I

    if-ge v0, v1, :cond_0

    .line 769
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->e:Lorg/apache/commons/math3/linear/RealVector$Entry;

    iget v1, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/math3/linear/RealVector$1;->i:I

    invoke-virtual {v0, v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    .line 770
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$1;->e:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-object v0

    .line 772
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 782
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method
