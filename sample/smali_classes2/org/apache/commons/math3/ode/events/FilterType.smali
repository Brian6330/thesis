.class public abstract enum Lorg/apache/commons/math3/ode/events/FilterType;
.super Ljava/lang/Enum;
.source "FilterType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/ode/events/FilterType$3;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/ode/events/FilterType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ode/events/FilterType;

.field public static final enum TRIGGER_ONLY_DECREASING_EVENTS:Lorg/apache/commons/math3/ode/events/FilterType;

.field public static final enum TRIGGER_ONLY_INCREASING_EVENTS:Lorg/apache/commons/math3/ode/events/FilterType;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 35
    new-instance v0, Lorg/apache/commons/math3/ode/events/FilterType$1;

    const-string v1, "TRIGGER_ONLY_DECREASING_EVENTS"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/events/FilterType$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/FilterType;->TRIGGER_ONLY_DECREASING_EVENTS:Lorg/apache/commons/math3/ode/events/FilterType;

    .line 213
    new-instance v0, Lorg/apache/commons/math3/ode/events/FilterType$2;

    const-string v1, "TRIGGER_ONLY_INCREASING_EVENTS"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/ode/events/FilterType$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/FilterType;->TRIGGER_ONLY_INCREASING_EVENTS:Lorg/apache/commons/math3/ode/events/FilterType;

    .line 27
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/commons/math3/ode/events/FilterType;

    sget-object v1, Lorg/apache/commons/math3/ode/events/FilterType;->TRIGGER_ONLY_DECREASING_EVENTS:Lorg/apache/commons/math3/ode/events/FilterType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/ode/events/FilterType;->TRIGGER_ONLY_INCREASING_EVENTS:Lorg/apache/commons/math3/ode/events/FilterType;

    aput-object v1, v0, v3

    sput-object v0, Lorg/apache/commons/math3/ode/events/FilterType;->$VALUES:[Lorg/apache/commons/math3/ode/events/FilterType;

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
    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 145
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILorg/apache/commons/math3/ode/events/FilterType$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lorg/apache/commons/math3/ode/events/FilterType$1;

    .prologue
    .line 27
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/math3/ode/events/FilterType;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ode/events/FilterType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 27
    const-class v0, Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/events/FilterType;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/ode/events/FilterType;
    .locals 1

    .prologue
    .line 27
    sget-object v0, Lorg/apache/commons/math3/ode/events/FilterType;->$VALUES:[Lorg/apache/commons/math3/ode/events/FilterType;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ode/events/FilterType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/events/FilterType;

    return-object v0
.end method


# virtual methods
.method protected abstract getTriggeredIncreasing()Z
.end method

.method protected abstract selectTransformer(Lorg/apache/commons/math3/ode/events/Transformer;DZ)Lorg/apache/commons/math3/ode/events/Transformer;
.end method
