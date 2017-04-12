.class public Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;
.super Lorg/apache/commons/math3/exception/MathIllegalArgumentException;
.source "MultiDimensionMismatchException.java"


# static fields
.field private static final serialVersionUID:J = -0x74c97ec363c1017fL


# instance fields
.field private final expected:[Ljava/lang/Integer;

.field private final wrong:[Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V
    .locals 2
    .param p1, "specific"    # Lorg/apache/commons/math3/exception/util/Localizable;
    .param p2, "wrong"    # [Ljava/lang/Integer;
    .param p3, "expected"    # [Ljava/lang/Integer;

    .prologue
    .line 58
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const/4 v1, 0x1

    aput-object p3, v0, v1

    invoke-direct {p0, p1, v0}, Lorg/apache/commons/math3/exception/MathIllegalArgumentException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p2}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    .line 60
    invoke-virtual {p3}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    iput-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    .line 61
    return-void
.end method

.method public constructor <init>([Ljava/lang/Integer;[Ljava/lang/Integer;)V
    .locals 1
    .param p1, "wrong"    # [Ljava/lang/Integer;
    .param p2, "expected"    # [Ljava/lang/Integer;

    .prologue
    .line 44
    sget-object v0, Lorg/apache/commons/math3/exception/util/LocalizedFormats;->DIMENSIONS_MISMATCH:Lorg/apache/commons/math3/exception/util/LocalizedFormats;

    invoke-direct {p0, v0, p1, p2}, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;-><init>(Lorg/apache/commons/math3/exception/util/Localizable;[Ljava/lang/Integer;[Ljava/lang/Integer;)V

    .line 45
    return-void
.end method


# virtual methods
.method public getExpectedDimension(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getExpectedDimensions()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->expected:[Ljava/lang/Integer;

    invoke-virtual {v0}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method

.method public getWrongDimension(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 81
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getWrongDimensions()[Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lorg/apache/commons/math3/exception/MultiDimensionMismatchException;->wrong:[Ljava/lang/Integer;

    invoke-virtual {v0}, [Ljava/lang/Integer;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    return-object v0
.end method
