.class abstract enum Lorg/apache/commons/math3/ode/events/Transformer;
.super Ljava/lang/Enum;
.source "Transformer.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/ode/events/Transformer;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum MAX:Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum MIN:Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

.field public static final enum UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 37
    new-instance v0, Lorg/apache/commons/math3/ode/events/Transformer$1;

    const-string v1, "UNINITIALIZED"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/events/Transformer$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    .line 51
    new-instance v0, Lorg/apache/commons/math3/ode/events/Transformer$2;

    const-string v1, "PLUS"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/ode/events/Transformer$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    .line 65
    new-instance v0, Lorg/apache/commons/math3/ode/events/Transformer$3;

    const-string v1, "MINUS"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/ode/events/Transformer$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    .line 79
    new-instance v0, Lorg/apache/commons/math3/ode/events/Transformer$4;

    const-string v1, "MIN"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/ode/events/Transformer$4;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    .line 93
    new-instance v0, Lorg/apache/commons/math3/ode/events/Transformer$5;

    const-string v1, "MAX"

    invoke-direct {v0, v1, v6}, Lorg/apache/commons/math3/ode/events/Transformer$5;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    .line 29
    const/4 v0, 0x5

    new-array v0, v0, [Lorg/apache/commons/math3/ode/events/Transformer;

    sget-object v1, Lorg/apache/commons/math3/ode/events/Transformer;->UNINITIALIZED:Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/ode/events/Transformer;->PLUS:Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/ode/events/Transformer;->MINUS:Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/ode/events/Transformer;->MIN:Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v1, v0, v5

    sget-object v1, Lorg/apache/commons/math3/ode/events/Transformer;->MAX:Lorg/apache/commons/math3/ode/events/Transformer;

    aput-object v1, v0, v6

    sput-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->$VALUES:[Lorg/apache/commons/math3/ode/events/Transformer;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/Transformer$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/commons/math3/ode/events/Transformer$1;

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/events/Transformer;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 29
    const-class v0, Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/ode/events/Transformer;
    .locals 1

    .prologue
    .line 29
    sget-object v0, Lorg/apache/commons/math3/ode/events/Transformer;->$VALUES:[Lorg/apache/commons/math3/ode/events/Transformer;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ode/events/Transformer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/events/Transformer;

    return-object v0
.end method


# virtual methods
.method protected abstract transformed(D)D
.end method
