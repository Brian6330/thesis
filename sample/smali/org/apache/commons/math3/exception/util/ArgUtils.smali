.class public Lorg/apache/commons/math3/exception/util/ArgUtils;
.super Ljava/lang/Object;
.source "ArgUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flatten([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 10
    .param p0, "array"    # [Ljava/lang/Object;

    .prologue
    .line 41
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 42
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    if-eqz p0, :cond_2

    .line 43
    move-object v0, p0

    .local v0, "arr$":[Ljava/lang/Object;
    array-length v4, v0

    .local v4, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    move v3, v2

    .end local v0    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v4    # "len$":I
    .local v3, "i$":I
    :goto_0
    if-ge v3, v4, :cond_2

    aget-object v7, v0, v3

    .line 44
    .local v7, "o":Ljava/lang/Object;
    instance-of v9, v7, [Ljava/lang/Object;

    if-eqz v9, :cond_0

    .line 45
    check-cast v7, [Ljava/lang/Object;

    .end local v7    # "o":Ljava/lang/Object;
    check-cast v7, [Ljava/lang/Object;

    invoke-static {v7}, Lorg/apache/commons/math3/exception/util/ArgUtils;->flatten([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    .local v1, "arr$":[Ljava/lang/Object;
    array-length v5, v1

    .local v5, "len$":I
    const/4 v2, 0x0

    .end local v3    # "i$":I
    .restart local v2    # "i$":I
    :goto_1
    if-ge v2, v5, :cond_1

    aget-object v8, v1, v2

    .line 46
    .local v8, "oR":Ljava/lang/Object;
    invoke-interface {v6, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 49
    .end local v1    # "arr$":[Ljava/lang/Object;
    .end local v2    # "i$":I
    .end local v5    # "len$":I
    .end local v8    # "oR":Ljava/lang/Object;
    .restart local v3    # "i$":I
    .restart local v7    # "o":Ljava/lang/Object;
    :cond_0
    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 43
    .end local v3    # "i$":I
    .end local v7    # "o":Ljava/lang/Object;
    :cond_1
    add-int/lit8 v2, v3, 0x1

    .restart local v2    # "i$":I
    move v3, v2

    .end local v2    # "i$":I
    .restart local v3    # "i$":I
    goto :goto_0

    .line 53
    .end local v3    # "i$":I
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v9

    return-object v9
.end method
