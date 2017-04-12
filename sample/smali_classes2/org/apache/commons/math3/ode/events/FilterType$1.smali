.class final enum Lorg/apache/commons/math3/ode/events/FilterType$1;
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
    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/math3/ode/events/FilterType;-><init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/FilterType$1;)V

    return-void
.end method


# virtual methods
.method protected getTriggeredIncreasing()Z
    .locals 1

    .prologue
    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method protected selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 4
    .param p1, "previous"    # Lorg/apache/commons/math3/ode/events/Transformer;
    .param p2, "g"    # D
    .param p4, "forward"    # Z

    .prologue
    const-wide/16 v2, 0x0

    .line 92
    if-eqz p4, :cond_3

    .line 93
    sget-object v0, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 145
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 96
    :pswitch_0
    cmpl-double v0, p2, v2

    if-lez v0, :cond_1

    .line 98
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    .line 196
    .end local p1    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    :cond_0
    :goto_0
    return-object p1

    .line 99
    .restart local p1    # "previous":Lorg/apache/commons/math3/ode/events/Transformer;
    :cond_1
    cmpg-double v0, p2, v2

    if-gez v0, :cond_2

    .line 101
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 105
    :cond_2
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 108
    :pswitch_1
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 111
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 117
    :pswitch_2
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 120
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 126
    :pswitch_3
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 129
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 135
    :pswitch_4
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 138
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 148
    :cond_3
    sget-object v0, Lorg/apache/commons/math3/ode/events/FilterType$3;->$SwitchMap$org$apache$commons$math3$ode$events$Transformer:[I

    invoke-virtual {p1}, Lorg/apache/commons/math3/ode/events/Transformer;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 200
    new-instance v0, Lorg/apache/commons/math3/exception/MathInternalError;

    invoke-direct {v0}, Lorg/apache/commons/math3/exception/MathInternalError;-><init>()V

    throw v0

    .line 151
    :pswitch_5
    cmpl-double v0, p2, v2

    if-lez v0, :cond_4

    .line 153
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 154
    :cond_4
    cmpg-double v0, p2, v2

    if-gez v0, :cond_5

    .line 156
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 160
    :cond_5
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 163
    :pswitch_6
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 166
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 172
    :pswitch_7
    cmpg-double v0, p2, v2

    if-gtz v0, :cond_0

    .line 175
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 181
    :pswitch_8
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 184
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 190
    :pswitch_9
    cmpl-double v0, p2, v2

    if-ltz v0, :cond_0

    .line 193
    sget-object p1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 148
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method
