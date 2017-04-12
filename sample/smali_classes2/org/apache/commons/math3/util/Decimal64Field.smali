.class public Lorg/apache/commons/math3/util/Decimal64Field;
.super Ljava/lang/Object;
.source "Decimal64Field.java"

# interfaces
.implements Lorg/apache/commons/math3/Field;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/commons/math3/Field",
        "<",
        "Lorg/apache/commons/math3/util/Decimal64;",
        ">;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lorg/apache/commons/math3/util/Decimal64Field;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lorg/apache/commons/math3/util/Decimal64Field;

    invoke-direct {v0}, Lorg/apache/commons/math3/util/Decimal64Field;-><init>()V

    sput-object v0, Lorg/apache/commons/math3/util/Decimal64Field;->INSTANCE:Lorg/apache/commons/math3/util/Decimal64Field;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    return-void
.end method

.method public static final getInstance()Lorg/apache/commons/math3/util/Decimal64Field;
    .locals 1

    .prologue
    .line 44
    sget-object v0, Lorg/apache/commons/math3/util/Decimal64Field;->INSTANCE:Lorg/apache/commons/math3/util/Decimal64Field;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getOne()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64Field;->getOne()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public getOne()Lorg/apache/commons/math3/util/Decimal64;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lorg/apache/commons/math3/util/Decimal64;->ONE:Lorg/apache/commons/math3/util/Decimal64;

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
            "Lorg/apache/commons/math3/util/Decimal64;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 59
    const-class v0, Lorg/apache/commons/math3/util/Decimal64;

    return-object v0
.end method

.method public bridge synthetic getZero()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-virtual {p0}, Lorg/apache/commons/math3/util/Decimal64Field;->getZero()Lorg/apache/commons/math3/util/Decimal64;

    move-result-object v0

    return-object v0
.end method

.method public getZero()Lorg/apache/commons/math3/util/Decimal64;
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lorg/apache/commons/math3/util/Decimal64;->ZERO:Lorg/apache/commons/math3/util/Decimal64;

    return-object v0
.end method
