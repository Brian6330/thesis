.class final enum Lorg/apache/commons/math3/ode/events/FilterType$2;
.super Lorg/apache/commons/math3/ode/events/FilterType;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/FilterType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/FilterType;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/FilterType$1;)V

    return-void
.end method


# virtual methods
.method protected getTriggeredIncreasing()Z
    .locals 1

    .prologue
    .line 218
    const/4 v0, 0x1

    return v0
.end method

.method protected selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 4
    .param p1, "previous"    # Lorg/apache/commons/math3/ode/events/Transformer;
    .param p2, "g"    # D
    .param p4, "forward"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 270
    if-eqz p4, :cond_3

    .line 271
    sget-object v0, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 323
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 274
    :pswitch_0
    cmpl-double v0, p2, v2

    if-lez v0, :cond_1

    .line 276
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    .line 374
    .end local p1    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    :cond_0
    :goto_0
    return-object p1

    .line 277
    .restart local p1    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    :cond_1
    cmpg-double v0, p2, v2

    if-gez v0, :cond_2

    .line 279
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 283
    :cond_2
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 286
    :pswitch_1
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 289
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 295
    :pswitch_2
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 298
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 304
    :pswitch_3
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 307
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 313
    :pswitch_4
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 316
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 326
    :cond_3
    sget-object v0, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 378
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 329
    :pswitch_5
    cmpl-double v0, p2, v2

    if-lez v0, :cond_4

    .line 331
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 332
    :cond_4
    cmpg-double v0, p2, v2

    if-gez v0, :cond_5

    .line 334
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 338
    :cond_5
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 341
    :pswitch_6
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 344
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 350
    :pswitch_7
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 353
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 359
    :pswitch_8
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 362
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 368
    :pswitch_9
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 371
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 326
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
