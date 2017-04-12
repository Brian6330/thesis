.class public Lorg/apache/commons/math3/fraction/BigFractionField;
.super Ljava/lang/Object;
.source "BigFractionField.java"

# interfaces
.implements Lorg/apache/commons/math3/Field;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/math3/fraction/BigFractionField$1;,
        Lorg/apache/commons/math3/fraction/BigFractionField$LazyHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field",
        "<",
        "Lorg/apache/commons/math3/fraction/BigFraction;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x17951b65820c9c87L


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/fraction/BigFractionField$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/fraction/BigFractionField$1;

    .prologue
    .line 33
    invoke-direct {p0}, Lorg/apache/commons/math3/fraction/BigFractionField;-><init>()V

    return-void
.end method

.method public static getInstance()Lorg/apache/commons/math3/fraction/BigFractionField;
    .locals 1

    .prologue
    .line 47
    # getter for: Lorg/apache/commons/math3/fraction/BigFractionField$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/fraction/BigFractionField;
    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField$LazyHolder;->access$000()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 79
    # getter for: Lorg/apache/commons/math3/fraction/BigFractionField$LazyHolder;->INSTANCE:Lorg/apache/commons/math3/fraction/BigFractionField;
    invoke-static {}, Lorg/apache/commons/math3/fraction/BigFractionField$LazyHolder;->access$000()Lorg/apache/commons/math3/fraction/BigFractionField;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFractionField;->getOne()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ONE:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0
.end method

.method public getRuntimeClass()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<+",
            "Lorg/apache/commons/math3/FieldElement",
            "<",
            "Lorg/apache/commons/math3/fraction/BigFraction;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 62
    const-class v0, Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 33
    invoke-virtual {p0}, Lorg/apache/commons/math3/fraction/BigFractionField;->getZero()Lorg/apache/commons/math3/fraction/BigFraction;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/fraction/BigFraction;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lorg/apache/commons/math3/fraction/BigFraction;->ZERO:Lorg/apache/commons/math3/fraction/BigFraction;

    return-object v0
.end method
