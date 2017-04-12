.class public Lorg/apache/commons/math3/util/Pair;
.super Ljava/lang/Object;
.source "Pair.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final key:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field private final value:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .prologue
    .line 44
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    .line 46
    iput-object p2, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    .line 47
    return-void
.end method

.method public constructor <init>(Lorg/apache/commons/math3/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/math3/util/Pair",
            "<+TK;+TV;>;)V"
        }
    .end annotation

    .prologue
    .line 55
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    .local p1, "entry":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<+TK;+TV;>;"
    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    return-void
.end method

.method public static create(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/commons/math3/util/Pair;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(TK;TV;)",
            "Lorg/apache/commons/math3/util/Pair",
            "<TK;TV;>;"
        }
    .end annotation

    .prologue
    .line 153
    .local p0, "k":Ljava/lang/Object;, "TK;"
    .local p1, "v":Ljava/lang/Object;, "TV;"
    new-instance v0, Lorg/apache/commons/math3/util/Pair;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/math3/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 105
    if-ne p0, p1, :cond_1

    .line 112
    :cond_0
    :goto_0
    return v1

    .line 108
    :cond_1
    instance-of v3, p1, Lorg/apache/commons/math3/util/Pair;

    if-nez v3, :cond_2

    move v1, v2

    .line 109
    goto :goto_0

    :cond_2
    move-object v0, p1

    .line 111
    check-cast v0, Lorg/apache/commons/math3/util/Pair;

    .line 112
    .local v0, "oP":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<**>;"
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    if-nez v3, :cond_4

    iget-object v3, v0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    if-nez v3, :cond_3

    :goto_1
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    if-nez v3, :cond_5

    iget-object v3, v0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    if-eqz v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    :cond_4
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    :cond_5
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    iget-object v4, v0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0
.end method

.method public getFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 83
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TK;"
        }
    .end annotation

    .prologue
    .line 64
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public getSecond()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 93
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TV;"
        }
    .end annotation

    .prologue
    .line 73
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    const/4 v2, 0x0

    .line 128
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    if-nez v3, :cond_0

    move v1, v2

    .line 130
    .local v1, "result":I
    :goto_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    if-nez v3, :cond_1

    move v0, v2

    .line 131
    .local v0, "h":I
    :goto_1
    mul-int/lit8 v2, v1, 0x25

    add-int/2addr v2, v0

    ushr-int/lit8 v3, v0, 0x10

    xor-int v1, v2, v3

    .line 133
    return v1

    .line 128
    .end local v0    # "h":I
    .end local v1    # "result":I
    :cond_0
    iget-object v3, p0, Lorg/apache/commons/math3/util/Pair;->key:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    .line 130
    .restart local v1    # "result":I
    :cond_1
    iget-object v2, p0, Lorg/apache/commons/math3/util/Pair;->value:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 138
    .local p0, "this":Lorg/apache/commons/math3/util/Pair;, "Lorg/apache/commons/math3/util/Pair<TK;TV;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Pair;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
