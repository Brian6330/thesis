.class synthetic Lorg/apache/commons/math3/util/Combinations$1;
.super Ljava/lang/Object;
.source "Combinations.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/util/Combinations;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$commons$math3$util$Combinations$IterationOrder:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 137
    invoke-static {}, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->values()[Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/math3/util/Combinations$1;->$SwitchMap$org$apache$commons$math3$util$Combinations$IterationOrder:[I

    :try_start_0
    sget-object v0, Lorg/apache/commons/math3/util/Combinations$1;->$SwitchMap$org$apache$commons$math3$util$Combinations$IterationOrder:[I

    sget-object v1, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->LEXICOGRAPHIC:Lorg/apache/commons/math3/util/Combinations$IterationOrder;

    invoke-virtual {v1}, Lorg/apache/commons/math3/util/Combinations$IterationOrder;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method
