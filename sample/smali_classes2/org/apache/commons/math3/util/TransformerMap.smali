.class public Lorg/apache/commons/math3/util/TransformerMap;
.super Ljava/lang/Object;
.source "TransformerMap.java"

# interfaces
.implements Lorg/apache/commons/math3/util/NumberTransformer;
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x3fe9605bd703368aL


# instance fields
.field private defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

.field private map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/math3/util/NumberTransformer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    .line 46
    iput-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    .line 52
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    .line 53
    new-instance v0, Lorg/apache/commons/math3/util/DefaultTransformer;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/DefaultTransformer;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    .line 54
    return-void
.end method


# virtual methods
.method public classes()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public clear()V
    .locals 1

    .prologue
    .line 110
    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 111
    return-void
.end method

.method public containsClass(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .line 62
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsTransformer(Lorg/apache/commons/math3/util/NumberTransformer;)Z
    .locals 1
    .param p1, "value"    # Lorg/apache/commons/math3/util/NumberTransformer;

    .prologue
    .line 71
    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 158
    if-ne p0, p1, :cond_0

    move v3, v4

    .line 176
    :goto_0
    return v3

    .line 161
    :cond_0
    instance-of v3, p1, Lorg/apache/commons/math3/util/TransformerMap;

    if-eqz v3, :cond_5

    move-object v2, p1

    .line 162
    check-cast v2, Lorg/apache/commons/math3/util/TransformerMap;

    .line 163
    .local v2, "rhs":Lorg/apache/commons/math3/util/TransformerMap;
    iget-object v3, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    iget-object v6, v2, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    move v3, v5

    .line 164
    goto :goto_0

    .line 166
    :cond_1
    iget-object v3, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    iget-object v6, v2, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->size()I

    move-result v6

    if-eq v3, v6, :cond_2

    move v3, v5

    .line 167
    goto :goto_0

    .line 169
    :cond_2
    iget-object v3, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 170
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/apache/commons/math3/util/NumberTransformer;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/commons/math3/util/NumberTransformer;

    iget-object v6, v2, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    move v3, v5

    .line 171
    goto :goto_0

    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/Class<*>;Lorg/apache/commons/math3/util/NumberTransformer;>;"
    :cond_4
    move v3, v4

    .line 174
    goto :goto_0

    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "rhs":Lorg/apache/commons/math3/util/TransformerMap;
    :cond_5
    move v3, v5

    .line 176
    goto :goto_0
.end method

.method public getTransformer(Ljava/lang/Class;)Lorg/apache/commons/math3/util/NumberTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/commons/math3/util/NumberTransformer;"
        }
    .end annotation

    .prologue
    .line 81
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/NumberTransformer;

    return-object v0
.end method

.method public hashCode()I
    .locals 5

    .prologue
    .line 182
    iget-object v3, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 183
    .local v0, "hash":I
    iget-object v3, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/commons/math3/util/NumberTransformer;

    .line 184
    .local v2, "t":Lorg/apache/commons/math3/util/NumberTransformer;
    mul-int/lit8 v3, v0, 0x1f

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    add-int v0, v3, v4

    goto :goto_0

    .line 186
    .end local v2    # "t":Lorg/apache/commons/math3/util/NumberTransformer;
    :cond_0
    return v0
.end method

.method public putTransformer(Ljava/lang/Class;Lorg/apache/commons/math3/util/NumberTransformer;)Lorg/apache/commons/math3/util/NumberTransformer;
    .locals 1
    .param p2, "transformer"    # Lorg/apache/commons/math3/util/NumberTransformer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lorg/apache/commons/math3/util/NumberTransformer;",
            ")",
            "Lorg/apache/commons/math3/util/NumberTransformer;"
        }
    .end annotation

    .prologue
    .line 93
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/NumberTransformer;

    return-object v0
.end method

.method public removeTransformer(Ljava/lang/Class;)Lorg/apache/commons/math3/util/NumberTransformer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Lorg/apache/commons/math3/util/NumberTransformer;"
        }
    .end annotation

    .prologue
    .line 103
    .local p1, "key":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/util/NumberTransformer;

    return-object v0
.end method

.method public transform(Ljava/lang/Object;)D
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 141
    const-wide/high16 v2, 0x7ff8000000000000L    # NaN

    .line 143
    .local v2, "value":D
    instance-of v1, p1, Ljava/lang/Number;

    if-nez v1, :cond_0

    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 144
    :cond_0
    iget-object v1, p0, Lorg/apache/commons/math3/util/TransformerMap;->defaultTransformer:Lorg/apache/commons/math3/util/NumberTransformer;

    invoke-interface {v1, p1}, Lorg/apache/commons/math3/util/NumberTransformer;->transform(Ljava/lang/Object;)D

    move-result-wide v2

    .line 152
    :cond_1
    :goto_0
    return-wide v2

    .line 146
    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/apache/commons/math3/util/TransformerMap;->getTransformer(Ljava/lang/Class;)Lorg/apache/commons/math3/util/NumberTransformer;

    move-result-object v0

    .line 147
    .local v0, "trans":Lorg/apache/commons/math3/util/NumberTransformer;
    if-eqz v0, :cond_1

    .line 148
    invoke-interface {v0, p1}, Lorg/apache/commons/math3/util/NumberTransformer;->transform(Ljava/lang/Object;)D

    move-result-wide v2

    goto :goto_0
.end method

.method public transformers()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection",
            "<",
            "Lorg/apache/commons/math3/util/NumberTransformer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 127
    iget-object v0, p0, Lorg/apache/commons/math3/util/TransformerMap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
