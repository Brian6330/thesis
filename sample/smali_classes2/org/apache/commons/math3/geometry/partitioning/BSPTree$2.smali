.class synthetic Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;
.super Ljava/lang/Object;
.source "BSPTree.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/geometry/partitioning/BSPTree;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

.field static final synthetic $SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 577
    invoke-static {}, Lorg/apache/commons/math3/geometry/partitioning/Side;->values()[Lorg/apache/commons/math3/geometry/partitioning/Side;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    :try_start_0
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->PLUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_8

    :goto_0
    :try_start_1
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->MINUS:Lorg/apache/commons/math3/geometry/partitioning/Side;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_7

    :goto_1
    :try_start_2
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$Side:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/Side;->BOTH:Lorg/apache/commons/math3/geometry/partitioning/Side;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/Side;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_6

    .line 250
    :goto_2
    invoke-static {}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->values()[Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    :try_start_3
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_MINUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_5

    :goto_3
    :try_start_4
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->PLUS_SUB_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_PLUS_SUB:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_3

    :goto_5
    :try_start_6
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->MINUS_SUB_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_2

    :goto_6
    :try_start_7
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_PLUS_MINUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_1

    :goto_7
    :try_start_8
    sget-object v0, Lorg/apache/commons/math3/geometry/partitioning/BSPTree$2;->$SwitchMap$org$apache$commons$math3$geometry$partitioning$BSPTreeVisitor$Order:[I

    sget-object v1, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->SUB_MINUS_PLUS:Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;

    invoke-virtual {v1}, Lorg/apache/commons/math3/geometry/partitioning/BSPTreeVisitor$Order;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_0

    :goto_8
    return-void

    :catch_0
    move-exception v0

    goto :goto_8

    :catch_1
    move-exception v0

    goto :goto_7

    :catch_2
    move-exception v0

    goto :goto_6

    :catch_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v0

    goto :goto_4

    :catch_5
    move-exception v0

    goto :goto_3

    .line 577
    :catch_6
    move-exception v0

    goto :goto_2

    :catch_7
    move-exception v0

    goto :goto_1

    :catch_8
    move-exception v0

    goto :goto_0
.end method
