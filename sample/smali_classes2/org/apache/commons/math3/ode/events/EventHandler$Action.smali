.class public final enum Lorg/apache/commons/math3/ode/events/EventHandler$Action;
.super Ljava/lang/Enum;
.source "EventHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/ode/events/EventHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/apache/commons/math3/ode/events/EventHandler$Action;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public static final enum CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public static final enum RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public static final enum RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

.field public static final enum STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 60
    new-instance v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    const-string v1, "STOP"

    invoke-direct {v0, v1, v2}, Lorg/apache/commons/math3/ode/events/EventHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    .line 69
    new-instance v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    const-string v1, "RESET_STATE"

    invoke-direct {v0, v1, v3}, Lorg/apache/commons/math3/ode/events/EventHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    .line 79
    new-instance v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    const-string v1, "RESET_DERIVATIVES"

    invoke-direct {v0, v1, v4}, Lorg/apache/commons/math3/ode/events/EventHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    .line 86
    new-instance v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    const-string v1, "CONTINUE"

    invoke-direct {v0, v1, v5}, Lorg/apache/commons/math3/ode/events/EventHandler$Action;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    .line 53
    const/4 v0, 0x4

    new-array v0, v0, [Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->STOP:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    aput-object v1, v0, v2

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_STATE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    aput-object v1, v0, v3

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->RESET_DERIVATIVES:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    aput-object v1, v0, v4

    sget-object v1, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->CONTINUE:Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    aput-object v1, v0, v5

    sput-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->$VALUES:[Lorg/apache/commons/math3/ode/events/EventHandler$Action;

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
    .line 53
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 53
    const-class v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-object v0
.end method

.method public static values()[Lorg/apache/commons/math3/ode/events/EventHandler$Action;
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lorg/apache/commons/math3/ode/events/EventHandler$Action;->$VALUES:[Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    invoke-virtual {v0}, [Lorg/apache/commons/math3/ode/events/EventHandler$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/commons/math3/ode/events/EventHandler$Action;

    return-object v0
.end method
