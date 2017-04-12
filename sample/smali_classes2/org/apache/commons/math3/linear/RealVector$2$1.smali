.class Lorg/apache/commons/math3/linear/RealVector$2$1;
.super Ljava/lang/Object;
.source "RealVector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/commons/math3/linear/RealVector$2;->iterator()Ljava/util/Iterator;
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
.field private final e:Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;

.field final synthetic this$0:Lorg/apache/commons/math3/linear/RealVector$2;

.field final synthetic val$i:Ljava/util/Iterator;


# direct methods
.method constructor <init>(Lorg/apache/commons/math3/linear/RealVector$2;Ljava/util/Iterator;)V
    .locals 2

    .prologue
    .line 1237
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$2$1;->this$0:Lorg/apache/commons/math3/linear/RealVector$2;

    iput-object p2, p0, Lorg/apache/commons/math3/linear/RealVector$2$1;->val$i:Ljava/util/Iterator;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1239
    new-instance v0, Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;

    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$2$1;->this$0:Lorg/apache/commons/math3/linear/RealVector$2;

    invoke-direct {v0, v1}, Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;-><init>(Lorg/apache/commons/math3/linear/RealVector$2;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2$1;->e:Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1237
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$2$1;->next()Lorg/apache/commons/math3/linear/RealVector$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/math3/linear/RealVector$Entry;
    .locals 2

    .prologue
    .line 1248
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$2$1;->e:Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;

    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2$1;->val$i:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v0

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;->setIndex(I)V

    .line 1249
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$2$1;->e:Lorg/apache/commons/math3/linear/RealVector$2$UnmodifiableEntry;

    return-object v0
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1259
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method
