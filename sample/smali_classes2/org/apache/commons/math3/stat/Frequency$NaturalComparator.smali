.class Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;
.super Ljava/lang/Object;
.source "Frequency.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/math3/stat/Frequency;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NaturalComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ljava/lang/Comparable",
        "<TT;>;>",
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Comparable",
        "<TT;>;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x3575bdc5b6fa5bccL


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 630
    .local p0, "this":Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;, "Lorg/apache/commons/math3/stat/Frequency$NaturalComparator<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/apache/commons/math3/stat/Frequency$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/apache/commons/math3/stat/Frequency$1;

    .prologue
    .line 630
    .local p0, "this":Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;, "Lorg/apache/commons/math3/stat/Frequency$NaturalComparator<TT;>;"
    invoke-direct {p0}, Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable",
            "<TT;>;",
            "Ljava/lang/Comparable",
            "<TT;>;)I"
        }
    .end annotation

    .prologue
    .line 650
    .local p0, "this":Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;, "Lorg/apache/commons/math3/stat/Frequency$NaturalComparator<TT;>;"
    .local p1, "o1":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    .local p2, "o2":Ljava/lang/Comparable;, "Ljava/lang/Comparable<TT;>;"
    invoke-interface {p1, p2}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "x0"    # Ljava/lang/Object;
    .param p2, "x1"    # Ljava/lang/Object;

    .prologue
    .line 630
    .local p0, "this":Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;, "Lorg/apache/commons/math3/stat/Frequency$NaturalComparator<TT;>;"
    check-cast p1, Ljava/lang/Comparable;

    .end local p1    # "x0":Ljava/lang/Object;
    check-cast p2, Ljava/lang/Comparable;

    .end local p2    # "x1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lorg/apache/commons/math3/stat/Frequency$NaturalComparator;->compare(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    return v0
.end method
