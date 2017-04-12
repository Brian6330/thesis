.class public Lorg/apache/commons/math3/ode/events/EventFilter;
.super Ljava/lang/Object;
.source "EventFilter.java"

# interfaces
.implements Lorg/apache/commons/math3/ode/events/EventHandler;


# static fields
.field private static final HISTORY_SIZE:I = 0x64


# instance fields
.field private extremeT:D

.field private final filter:Lorg/apache/commons/math3/ode/events/FilterType;

.field private forward:Z

.field private final rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

.field private final transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

.field private final updates:[D


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/ode/events/EventHandler;Lorg/apache/commons/math3/ode/events/FilterType;)V
    .locals 2
    .param p1, "rawHandler"    # Lorg/apache/commons/math3/ode/events/EventHandler;
    .param p2, "filter"    # Lorg/apache/commons/math3/ode/events/FilterType;

    .prologue
    const/16 v1, 0x64

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 83
    iput-object p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    .line 84
    iput-object p2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    .line 85
    new-array v0, v1, [Lorg/apache/commons/math3/ode/events/Transformer;

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    .line 86
    new-array v0, v1, [D

    iput-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    .line 87
    return-void
.end method


# virtual methods
.method public eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    .locals 3
    .param p1, "t"    # D
    .param p3, "y"    # [D
    .param p4, "increasing"    # Z

    .prologue
    .line 195
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    iget-object v1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {v1}, Lorg/apache/commons/math3/ode/events/FilterType;->getTriggeredIncreasing()Z

    move-result v1

    invoke-interface {v0, p1, p2, p3, v1}, Lorg/apache/commons/math3/ode/events/EventHandler;->eventOccurred(D[DZ)Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    move-result-object v0

    return-object v0
.end method

.method public g(D[D)D
    .locals 11
    .param p1, "t"    # D
    .param p3, "y"    # [D

    .prologue
    const/4 v9, 0x1

    const/4 v10, 0x0

    .line 106
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v6, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->g(D[D)D

    move-result-wide v4

    .line 109
    .local v4, "rawG":D
    iget-boolean v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    if-eqz v6, :cond_4

    .line 110
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length v6, v6

    add-int/lit8 v1, v6, -0x1

    .line 111
    .local v1, "last":I
    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    cmpg-double v6, v6, p1

    if-gez v6, :cond_1

    .line 115
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v3, v6, v1

    .line 116
    .local v3, "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    iget-boolean v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    invoke-virtual {v6, v3, v4, v5, v7}, Lorg/apache/commons/math3/ode/events/FilterType;->selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;

    move-result-object v2

    .line 117
    .local v2, "next":Lorg/apache/commons/math3/ode/events/Transformer;
    if-eq v2, v3, :cond_0

    .line 124
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    invoke-static {v6, v9, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 125
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {v6, v9, v7, v10, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 126
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    aput-wide v8, v6, v1

    .line 127
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v2, v6, v1

    .line 130
    :cond_0
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 133
    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v6

    .line 185
    .end local v1    # "last":I
    .end local v2    # "next":Lorg/apache/commons/math3/ode/events/Transformer;
    .end local v3    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    :goto_0
    return-wide v6

    .line 139
    .restart local v1    # "last":I
    :cond_1
    move v0, v1

    .local v0, "i":I
    :goto_1
    if-lez v0, :cond_3

    .line 140
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    aget-wide v6, v6, v0

    cmpg-double v6, v6, p1

    if-gtz v6, :cond_2

    .line 142
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v6, v6, v0

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v6

    goto :goto_0

    .line 139
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 146
    :cond_3
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v6, v6, v10

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v6

    goto :goto_0

    .line 150
    .end local v0    # "i":I
    .end local v1    # "last":I
    :cond_4
    iget-wide v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    cmpg-double v6, p1, v6

    if-gez v6, :cond_6

    .line 154
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v3, v6, v10

    .line 155
    .restart local v3    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->filter:Lorg/apache/commons/math3/ode/events/FilterType;

    iget-boolean v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    invoke-virtual {v6, v3, v4, v5, v7}, Lorg/apache/commons/math3/ode/events/FilterType;->selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;

    move-result-object v2

    .line 156
    .restart local v2    # "next":Lorg/apache/commons/math3/ode/events/Transformer;
    if-eq v2, v3, :cond_5

    .line 163
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-object v8, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v10, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 164
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    iget-object v8, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    invoke-static {v6, v10, v7, v9, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 165
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide v8, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    aput-wide v8, v6, v10

    .line 166
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v2, v6, v10

    .line 169
    :cond_5
    iput-wide p1, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 172
    invoke-virtual {v2, v4, v5}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v6

    goto :goto_0

    .line 178
    .end local v2    # "next":Lorg/apache/commons/math3/ode/events/Transformer;
    .end local v3    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    :cond_6
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_2
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    array-length v6, v6

    add-int/lit8 v6, v6, -0x1

    if-ge v0, v6, :cond_8

    .line 179
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    aget-wide v6, v6, v0

    cmpg-double v6, p1, v6

    if-gtz v6, :cond_7

    .line 181
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    aget-object v6, v6, v0

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v6

    goto :goto_0

    .line 178
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 185
    :cond_8
    iget-object v6, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    iget-object v7, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    array-length v7, v7

    add-int/lit8 v7, v7, -0x1

    aget-object v6, v6, v7

    invoke-virtual {v6, v4, v5}, Lorg/apache/commons/math3/ode/events/Transformer;->transformed(D)D

    move-result-wide v6

    goto/16 :goto_0
.end method

.method public init(D[DD)V
    .locals 6
    .param p1, "t0"    # D
    .param p3, "y0"    # [D
    .param p4, "t"    # D

    .prologue
    .line 93
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    move-wide v1, p1

    move-object v3, p3

    move-wide v4, p4

    invoke-interface/range {v0 .. v5}, Lorg/apache/commons/math3/ode/events/EventHandler;->init(D[DD)V

    .line 96
    cmpl-double v0, p4, p1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    .line 97
    iget-boolean v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->forward:Z

    if-eqz v0, :cond_1

    const-wide/high16 v0, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    :goto_1
    iput-wide v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    .line 98
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->transformers:[Lorg/apache/commons/math3/ode/events/Transformer;

    sget-object v1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->updates:[D

    iget-wide v2, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->extremeT:D

    invoke-static {v0, v2, v3}, Ljava/util/Arrays;->fill([DD)V

    .line 101
    return-void

    .line 96
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 97
    :cond_1
    const-wide/high16 v0, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    goto :goto_1
.end method

.method public resetState(D[D)V
    .locals 1
    .param p1, "t"    # D
    .param p3, "y"    # [D

    .prologue
    .line 201
    iget-object v0, p0, Lorg/apache/commons/math3/ode/events/EventFilter;->rawHandler:Lorg/apache/commons/math3/ode/events/EventHandler;

    invoke-interface {v0, p1, p2, p3}, Lorg/apache/commons/math3/ode/events/EventHandler;->resetState(D[D)V

    .line 202
    return-void
.end method
