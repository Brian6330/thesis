.class public Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;
.super Ljava/lang/Object;
.source "RealVector.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/linear/RealVector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "SparseEntryIterator"
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
.field private current:Lorg/apache/commons/math3/linear/RealVector$Entry;

.field private final dim:I

.field private next:Lorg/apache/commons/math3/linear/RealVector$Entry;

.field final synthetic this$0:Lorg/apache/commons/math3/linear/RealVector;


# direct methods
.method protected constructor <init>(Lorg/apache/commons/math3/linear/RealVector;)V
    .locals 4

    .prologue
    .line 1135
    iput-object p1, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->this$0:Lorg/apache/commons/math3/linear/RealVector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1136
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector;->getDimension()I

    move-result v0

    iput v0, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->dim:I

    .line 1137
    new-instance v0, Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->current:Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 1138
    new-instance v0, Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-direct {v0, p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;-><init>(Lorg/apache/commons/math3/linear/RealVector;)V

    iput-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->next:Lorg/apache/commons/math3/linear/RealVector$Entry;

    .line 1139
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->next:Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 1140
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->next:Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->advance(Lorg/apache/commons/math3/linear/RealVector$Entry;)V

    .line 1142
    :cond_0
    return-void
.end method


# virtual methods
.method protected advance(Lorg/apache/commons/math3/linear/RealVector$Entry;)V
    .locals 4
    .param p1, "e"    # Lorg/apache/commons/math3/linear/RealVector$Entry;

    .prologue
    .line 1150
    if-nez p1, :cond_1

    .line 1159
    :cond_0
    :goto_0
    return-void

    .line 1154
    :cond_1
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    .line 1155
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->dim:I

    if-ge v0, v1, :cond_2

    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getValue()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-eqz v0, :cond_1

    .line 1156
    :cond_2
    invoke-virtual {p1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->dim:I

    if-lt v0, v1, :cond_0

    .line 1157
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    goto :goto_0
.end method

.method public hasNext()Z
    .locals 1

    .prologue
    .line 1163
    iget-object v0, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->next:Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-virtual {v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v0

    if-ltz v0, :cond_0

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
    .line 1126
    invoke-virtual {p0}, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->next()Lorg/apache/commons/math3/linear/RealVector$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/apache/commons/math3/linear/RealVector$Entry;
    .locals 2

    .prologue
    .line 1168
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->next:Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-virtual {v1}, Lorg/apache/commons/math3/linear/RealVector$Entry;->getIndex()I

    move-result v0

    .line 1169
    .local v0, "index":I
    if-gez v0, :cond_0

    .line 1170
    new-instance v1, Ljava/util/NoSuchElementException;

    invoke-direct {v1}, Ljava/util/NoSuchElementException;-><init>()V

    throw v1

    .line 1172
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->current:Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-virtual {v1, v0}, Lorg/apache/commons/math3/linear/RealVector$Entry;->setIndex(I)V

    .line 1173
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->next:Lorg/apache/commons/math3/linear/RealVector$Entry;

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->advance(Lorg/apache/commons/math3/linear/RealVector$Entry;)V

    .line 1174
    iget-object v1, p0, Lorg/apache/commons/math3/linear/RealVector$SparseEntryIterator;->current:Lorg/apache/commons/math3/linear/RealVector$Entry;

    return-object v1
.end method

.method public remove()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1183
    new-instance v0, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathUnsupportedOperationException;-><init>()V

    throw v0
.end method
