.class public Lorg/apache/commons/math3/exception/util/ExceptionContext;
.super Ljava/lang/Object;
.source "ExceptionContext.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x539cc8a80344c4feL


# instance fields
.field private context:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private msgArguments:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<[",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private msgPatterns:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/apache/commons/math3/exception/util/Localizable;",
            ">;"
        }
    .end annotation
.end field

.field private throwable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "throwable"    # Ljava/lang/Throwable;

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 64
    iput-object p1, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->throwable:Ljava/lang/Throwable;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgPatterns:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgArguments:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    .line 68
    return-void
.end method

.method private buildMessage(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 170
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    .local v6, "sb":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    .line 172
    .local v1, "count":I
    iget-object v7, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgPatterns:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v4

    .line 173
    .local v4, "len":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v4, :cond_1

    .line 174
    iget-object v7, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgPatterns:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/exception/util/Localizable;

    .line 175
    .local v5, "pat":Lorg/apache/commons/math3/exception/util/Localizable;
    iget-object v7, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgArguments:Ljava/util/List;

    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    .line 176
    .local v0, "args":[Ljava/lang/Object;
    new-instance v2, Ljava/text/MessageFormat;

    invoke-interface {v5, p1}, Lorg/apache/commons/math3/exception/util/Localizable;->getLocalizedString(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v7, p1}, Ljava/text/MessageFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 178
    .local v2, "fmt":Ljava/text/MessageFormat;
    invoke-virtual {v2, v0}, Ljava/text/MessageFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 179
    add-int/lit8 v1, v1, 0x1

    if-ge v1, v4, :cond_0

    .line 181
    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "args":[Ljava/lang/Object;
    .end local v2    # "fmt":Ljava/text/MessageFormat;
    .end local v5    # "pat":Lorg/apache/commons/math3/exception/util/Localizable;
    :cond_1
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method

.method private deSerializeContext(Ljava/io/ObjectInputStream;)V
    .locals 5
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 313
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v2

    .line 314
    .local v2, "len":I
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    .line 315
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 317
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 319
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    .line 320
    .local v3, "value":Ljava/lang/Object;
    iget-object v4, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    invoke-interface {v4, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 315
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 322
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method private deSerializeMessages(Ljava/io/ObjectInputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 258
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v4

    .line 259
    .local v4, "len":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgPatterns:Ljava/util/List;

    .line 260
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v6, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgArguments:Ljava/util/List;

    .line 262
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_1

    .line 264
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/exception/util/Localizable;

    .line 265
    .local v5, "pat":Lorg/apache/commons/math3/exception/util/Localizable;
    iget-object v6, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgPatterns:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 267
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 268
    .local v0, "aLen":I
    new-array v1, v0, [Ljava/lang/Object;

    .line 269
    .local v1, "args":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_0

    .line 271
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v6

    aput-object v6, v1, v3

    .line 269
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 273
    :cond_0
    iget-object v6, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgArguments:Ljava/util/List;

    invoke-interface {v6, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 275
    .end local v0    # "aLen":I
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v3    # "j":I
    .end local v5    # "pat":Lorg/apache/commons/math3/exception/util/Localizable;
    :cond_1
    return-void
.end method

.method private nonSerializableReplacement(Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    .line 332
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[Object could not be serialized: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 210
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    iput-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->throwable:Ljava/lang/Throwable;

    .line 211
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->deSerializeMessages(Ljava/io/ObjectInputStream;)V

    .line 212
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->deSerializeContext(Ljava/io/ObjectInputStream;)V

    .line 213
    return-void
.end method

.method private serializeContext(Ljava/io/ObjectOutputStream;)V
    .locals 5
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 286
    iget-object v4, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->size()I

    move-result v2

    .line 287
    .local v2, "len":I
    invoke-virtual {p1, v2}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 288
    iget-object v4, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 290
    .local v1, "key":Ljava/lang/String;
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 291
    iget-object v4, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 292
    .local v3, "value":Ljava/lang/Object;
    instance-of v4, v3, Ljava/io/Serializable;

    if-eqz v4, :cond_0

    .line 294
    invoke-virtual {p1, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 297
    :cond_0
    invoke-direct {p0, v3}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->nonSerializableReplacement(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_0

    .line 300
    .end local v1    # "key":Ljava/lang/String;
    .end local v3    # "value":Ljava/lang/Object;
    :cond_1
    return-void
.end method

.method private serializeMessages(Ljava/io/ObjectOutputStream;)V
    .locals 7
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 224
    iget-object v6, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgPatterns:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    .line 225
    .local v4, "len":I
    invoke-virtual {p1, v4}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 227
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v4, :cond_2

    .line 228
    iget-object v6, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgPatterns:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/commons/math3/exception/util/Localizable;

    .line 230
    .local v5, "pat":Lorg/apache/commons/math3/exception/util/Localizable;
    invoke-virtual {p1, v5}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 231
    iget-object v6, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgArguments:Ljava/util/List;

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 232
    .local v1, "args":[Ljava/lang/Object;
    array-length v0, v1

    .line 234
    .local v0, "aLen":I
    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 235
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_1
    if-ge v3, v0, :cond_1

    .line 236
    aget-object v6, v1, v3

    instance-of v6, v6, Ljava/io/Serializable;

    if-eqz v6, :cond_0

    .line 238
    aget-object v6, v1, v3

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 235
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 241
    :cond_0
    aget-object v6, v1, v3

    invoke-direct {p0, v6}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->nonSerializableReplacement(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    goto :goto_2

    .line 227
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 245
    .end local v0    # "aLen":I
    .end local v1    # "args":[Ljava/lang/Object;
    .end local v3    # "j":I
    .end local v5    # "pat":Lorg/apache/commons/math3/exception/util/Localizable;
    :cond_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 1
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 196
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->throwable:Ljava/lang/Throwable;

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 197
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->serializeMessages(Ljava/io/ObjectOutputStream;)V

    .line 198
    invoke-direct {p0, p1}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->serializeContext(Ljava/io/ObjectOutputStream;)V

    .line 199
    return-void
.end method


# virtual methods
.method public varargs addMessage(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V
    .locals 2
    .param p1, "pattern"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "arguments"    # [Ljava/lang/Object;

    .prologue
    .line 86
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgPatterns:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->msgArguments:Ljava/util/List;

    invoke-static {p2}, Lorg/apache/commons/math3/exception/util/ArgUtils;->flatten([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public getKeys()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 118
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getLocalizedMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 136
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 127
    sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {p0, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->getMessage(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/util/Locale;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 146
    const-string v0, ": "

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->buildMessage(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMessage(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;
    .param p2, "separator"    # Ljava/lang/String;

    .prologue
    .line 158
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/exception/util/ExceptionContext;->buildMessage(Ljava/util/Locale;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->throwable:Ljava/lang/Throwable;

    return-object v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 109
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 99
    iget-object v0, p0, Lorg/apache/commons/math3/exception/util/ExceptionContext;->context:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    return-void
.end method
