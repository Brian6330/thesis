.class Lorg/apache/commons/math3/util/Combinations$SingletonIterator;
.super Ljava/lang/Object;
.source "Combinations.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SingletonIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator",
        "<[I>;"
    }
.end annotation


# instance fields
.field private more:Z

.field private final singleton:[I


# direct methods
.method public constructor <init>([I)V
    .locals 1
    .param p1, "singleton"    # [I

    .prologue
    .line 300
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 295
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->more:Z

    .line 301
    iput-object p1, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->singleton:[I

    .line 302
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .prologue
    .line 305
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->more:Z

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 291
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->next()[I

    move-result-object v0

    return-object v0
.end method

.method public next()[I
    .locals 1

    .prologue
    .line 309
    iget-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->more:Z

    if-eqz v0, :cond_0

    .line 310
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->more:Z

    .line 311
    iget-object v0, p0, Lorg/apache/commons/math3/util/Combinations$SingletonIterator;->singleton:[I

    return-object v0

    .line 313
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .prologue
    .line 318
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
