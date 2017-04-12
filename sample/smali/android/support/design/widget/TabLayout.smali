.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "TabLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/design/widget/TabLayout$PagerAdapterObserver;,
        Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;,
        Landroid/support/design/widget/TabLayout$SlidingTabStrip;,
        Landroid/support/design/widget/TabLayout$TabView;,
        Landroid/support/design/widget/TabLayout$Tab;,
        Landroid/support/design/widget/TabLayout$OnTabSelectedListener;,
        Landroid/support/design/widget/TabLayout$TabGravity;,
        Landroid/support/design/widget/TabLayout$Mode;
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x12c

.field private static final DEFAULT_GAP_TEXT_ICON:I = 0x8

.field private static final DEFAULT_HEIGHT:I = 0x30

.field private static final DEFAULT_HEIGHT_WITH_TEXT_ICON:I = 0x48

.field private static final FIXED_WRAP_GUTTER_MIN:I = 0x10

.field public static final GRAVITY_CENTER:I = 0x1

.field public static final GRAVITY_FILL:I = 0x0

.field private static final INVALID_WIDTH:I = -0x1

.field public static final MODE_FIXED:I = 0x1

.field public static final MODE_SCROLLABLE:I = 0x0

.field private static final MOTION_NON_ADJACENT_OFFSET:I = 0x18

.field private static final TAB_MIN_WIDTH_MARGIN:I = 0x38

.field private static final sTabPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mContentInsetStart:I

.field private mMode:I

.field private mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

.field private mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

.field private mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

.field private mPagerAdapterObserver:Landroid/database/DataSetObserver;

.field private final mRequestedTabMaxWidth:I

.field private final mRequestedTabMinWidth:I

.field private mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

.field private final mScrollableTabMinWidth:I

.field private mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

.field private final mTabBackgroundResId:I

.field private mTabGravity:I

.field private mTabMaxWidth:I

.field private mTabPaddingBottom:I

.field private mTabPaddingEnd:I

.field private mTabPaddingStart:I

.field private mTabPaddingTop:I

.field private final mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

.field private mTabTextAppearance:I

.field private mTabTextColors:Landroid/content/res/ColorStateList;

.field private mTabTextMultiLineSize:F

.field private mTabTextSize:F

.field private final mTabViewPool:Landroid/support/v4/util/Pools$Pool;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/Pools$Pool",
            "<",
            "Landroid/support/design/widget/TabLayout$TabView;",
            ">;"
        }
    .end annotation
.end field

.field private final mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/support/design/widget/TabLayout$Tab;",
            ">;"
        }
    .end annotation
.end field

.field private mViewPager:Landroid/support/v4/view/ViewPager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 136
    new-instance v0, Landroid/support/v4/util/Pools$SynchronizedPool;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/Pools$SynchronizedPool;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 257
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 258
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 261
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 262
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 265
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 217
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    .line 234
    const v4, 0x7fffffff

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 254
    new-instance v4, Landroid/support/v4/util/Pools$SimplePool;

    const/16 v5, 0xc

    invoke-direct {v4, v5}, Landroid/support/v4/util/Pools$SimplePool;-><init>(I)V

    iput-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    .line 267
    invoke-static {p1}, Landroid/support/design/widget/ThemeUtils;->checkAppCompatTheme(Landroid/content/Context;)V

    .line 270
    invoke-virtual {p0, v7}, Landroid/support/design/widget/TabLayout;->setHorizontalScrollBarEnabled(Z)V

    .line 273
    new-instance v4, Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {v4, p0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    .line 274
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    new-instance v5, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v6, -0x2

    invoke-direct {v5, v6, v8}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v4, v7, v5}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 277
    sget-object v4, Landroid/support/design/R$styleable;->TabLayout:[I

    sget v5, Landroid/support/design/R$style;->Widget_Design_TabLayout:I

    invoke-virtual {p1, p2, v4, p3, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 280
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v5, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorHeight:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 282
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    sget v5, Landroid/support/design/R$styleable;->TabLayout_tabIndicatorColor:I

    invoke-virtual {v0, v5, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 284
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabPadding:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 286
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabPaddingStart:I

    iget v5, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    .line 288
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabPaddingTop:I

    iget v5, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    .line 290
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabPaddingEnd:I

    iget v5, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    .line 292
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabPaddingBottom:I

    iget v5, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    .line 295
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabTextAppearance:I

    sget v5, Landroid/support/design/R$style;->TextAppearance_Design_Tab:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    .line 299
    iget v4, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    sget-object v5, Landroid/support/design/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 302
    .local v3, "ta":Landroid/content/res/TypedArray;
    :try_start_0
    sget v4, Landroid/support/design/R$styleable;->TextAppearance_android_textSize:I

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    .line 303
    sget v4, Landroid/support/design/R$styleable;->TextAppearance_android_textColor:I

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 305
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 308
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 310
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabTextColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 313
    :cond_0
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabSelectedTextColor:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    .line 318
    .local v2, "selected":I
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    invoke-virtual {v4}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v4

    invoke-static {v4, v2}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v4

    iput-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 321
    .end local v2    # "selected":I
    :cond_1
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabMinWidth:I

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 323
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabMaxWidth:I

    invoke-virtual {v0, v4, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    .line 325
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabBackground:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    .line 326
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabContentStart:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    .line 327
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabMode:I

    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 328
    sget v4, Landroid/support/design/R$styleable;->TabLayout_tabGravity:I

    invoke-virtual {v0, v4, v7}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 329
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 332
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 333
    .local v1, "res":Landroid/content/res/Resources;
    sget v4, Landroid/support/design/R$dimen;->design_tab_text_size_2line:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    int-to-float v4, v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    .line 334
    sget v4, Landroid/support/design/R$dimen;->design_tab_scrollable_min_width:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    .line 337
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 338
    return-void

    .line 305
    .end local v1    # "res":Landroid/content/res/Resources;
    :catchall_0
    move-exception v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw v4
.end method

.method static synthetic access$1000(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingTop:I

    return v0
.end method

.method static synthetic access$1100(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingEnd:I

    return v0
.end method

.method static synthetic access$1200(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingBottom:I

    return v0
.end method

.method static synthetic access$1300(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMaxWidth()I

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method static synthetic access$1500(Landroid/support/design/widget/TabLayout;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextSize:F

    return v0
.end method

.method static synthetic access$1600(Landroid/support/design/widget/TabLayout;)F
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextMultiLineSize:F

    return v0
.end method

.method static synthetic access$1700(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method static synthetic access$1800(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextAppearance:I

    return v0
.end method

.method static synthetic access$1900(Landroid/support/design/widget/TabLayout;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/support/design/widget/TabLayout;I)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$2100(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method static synthetic access$2102(Landroid/support/design/widget/TabLayout;I)I
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p1, "x1"    # I

    .prologue
    .line 124
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return p1
.end method

.method static synthetic access$2200(Landroid/support/design/widget/TabLayout;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p1, "x1"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    return-void
.end method

.method static synthetic access$2600(Landroid/support/design/widget/TabLayout;IFZZ)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;
    .param p1, "x1"    # I
    .param p2, "x2"    # F
    .param p3, "x3"    # Z
    .param p4, "x4"    # Z

    .prologue
    .line 124
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    return-void
.end method

.method static synthetic access$2700(Landroid/support/design/widget/TabLayout;)V
    .locals 0
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    return-void
.end method

.method static synthetic access$800(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabBackgroundResId:I

    return v0
.end method

.method static synthetic access$900(Landroid/support/design/widget/TabLayout;)I
    .locals 1
    .param p0, "x0"    # Landroid/support/design/widget/TabLayout;

    .prologue
    .line 124
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    return v0
.end method

.method private addTabFromItemView(Landroid/support/design/widget/TabItem;)V
    .locals 2
    .param p1, "item"    # Landroid/support/design/widget/TabItem;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 463
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v0

    .line 464
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 465
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    .line 467
    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/support/design/widget/TabLayout$Tab;

    .line 470
    :cond_1
    iget v1, p1, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    if-eqz v1, :cond_2

    .line 471
    iget v1, p1, Landroid/support/design/widget/TabItem;->mCustomLayout:I

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(I)Landroid/support/design/widget/TabLayout$Tab;

    .line 473
    :cond_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 474
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 823
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v0

    .line 824
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, p2, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 825
    if-eqz p3, :cond_0

    .line 826
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 828
    :cond_0
    return-void
.end method

.method private addTabView(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 815
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$100(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v0

    .line 816
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 817
    if-eqz p2, :cond_0

    .line 818
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setSelected(Z)V

    .line 820
    :cond_0
    return-void
.end method

.method private addViewInternal(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 851
    instance-of v0, p1, Landroid/support/design/widget/TabItem;

    if-eqz v0, :cond_0

    .line 852
    check-cast p1, Landroid/support/design/widget/TabItem;

    .end local p1    # "child":Landroid/view/View;
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addTabFromItemView(Landroid/support/design/widget/TabItem;)V

    .line 856
    return-void

    .line 854
    .restart local p1    # "child":Landroid/view/View;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only TabItem instances can be added to TabLayout"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private animateToTab(I)V
    .locals 5
    .param p1, "newPosition"    # I

    .prologue
    const/16 v4, 0x12c

    const/4 v3, 0x0

    .line 947
    const/4 v2, -0x1

    if-ne p1, v2, :cond_0

    .line 981
    :goto_0
    return-void

    .line 951
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->isLaidOut(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->childrenNeedLayout()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 955
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, p1, v3, v2}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    goto :goto_0

    .line 959
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getScrollX()I

    move-result v0

    .line 960
    .local v0, "startScrollX":I
    invoke-direct {p0, p1, v3}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    .line 962
    .local v1, "targetScrollX":I
    if-eq v0, v1, :cond_4

    .line 963
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-nez v2, :cond_3

    .line 964
    invoke-static {}, Landroid/support/design/widget/ViewUtils;->createAnimator()Landroid/support/design/widget/ValueAnimatorCompat;

    move-result-object v2

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    .line 965
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    sget-object v3, Landroid/support/design/widget/AnimationUtils;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 966
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v4}, Landroid/support/design/widget/ValueAnimatorCompat;->setDuration(I)V

    .line 967
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    new-instance v3, Landroid/support/design/widget/TabLayout$1;

    invoke-direct {v3, p0}, Landroid/support/design/widget/TabLayout$1;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v2, v3}, Landroid/support/design/widget/ValueAnimatorCompat;->setUpdateListener(Landroid/support/design/widget/ValueAnimatorCompat$AnimatorUpdateListener;)V

    .line 975
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2, v0, v1}, Landroid/support/design/widget/ValueAnimatorCompat;->setIntValues(II)V

    .line 976
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v2}, Landroid/support/design/widget/ValueAnimatorCompat;->start()V

    .line 980
    :cond_4
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2, p1, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->animateIndicatorToPosition(II)V

    goto :goto_0
.end method

.method private applyModeAndGravity()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1047
    const/4 v0, 0x0

    .line 1048
    .local v0, "paddingStart":I
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v1, :cond_0

    .line 1050
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mContentInsetStart:I

    iget v2, p0, Landroid/support/design/widget/TabLayout;->mTabPaddingStart:I

    sub-int/2addr v1, v2

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1052
    :cond_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-static {v1, v0, v3, v3, v3}, Landroid/support/v4/view/ViewCompat;->setPaddingRelative(Landroid/view/View;IIII)V

    .line 1054
    iget v1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v1, :pswitch_data_0

    .line 1063
    :goto_0
    invoke-direct {p0, v4}, Landroid/support/design/widget/TabLayout;->updateTabViews(Z)V

    .line 1064
    return-void

    .line 1056
    :pswitch_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, v4}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 1059
    :pswitch_1
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    const v2, 0x800003

    invoke-virtual {v1, v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setGravity(I)V

    goto :goto_0

    .line 1054
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private calculateScrollXForTab(IF)I
    .locals 7
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F

    .prologue
    const/4 v1, 0x0

    .line 1030
    iget v4, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v4, :cond_1

    .line 1031
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v4, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 1032
    .local v2, "selectedChild":Landroid/view/View;
    add-int/lit8 v4, p1, 0x1

    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v5

    if-ge v4, v5, :cond_2

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    add-int/lit8 v5, p1, 0x1

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1035
    .local v0, "nextChild":Landroid/view/View;
    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 1036
    .local v3, "selectedWidth":I
    :goto_1
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 1038
    .local v1, "nextWidth":I
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getLeft()I

    move-result v4

    add-int v5, v3, v1

    int-to-float v5, v5

    mul-float/2addr v5, p2

    const/high16 v6, 0x3f000000    # 0.5f

    mul-float/2addr v5, v6

    float-to-int v5, v5

    add-int/2addr v4, v5

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    sub-int v1, v4, v5

    .line 1043
    .end local v0    # "nextChild":Landroid/view/View;
    .end local v1    # "nextWidth":I
    .end local v2    # "selectedChild":Landroid/view/View;
    .end local v3    # "selectedWidth":I
    :cond_1
    return v1

    .line 1032
    .restart local v2    # "selectedChild":Landroid/view/View;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .restart local v0    # "nextChild":Landroid/view/View;
    :cond_3
    move v3, v1

    .line 1035
    goto :goto_1
.end method

.method private configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "position"    # I

    .prologue
    .line 805
    invoke-virtual {p1, p2}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 806
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 808
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 809
    .local v0, "count":I
    add-int/lit8 v1, p2, 0x1

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 810
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 809
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 812
    :cond_0
    return-void
.end method

.method private static createColorStateList(II)Landroid/content/res/ColorStateList;
    .locals 4
    .param p0, "defaultColor"    # I
    .param p1, "selectedColor"    # I

    .prologue
    const/4 v3, 0x2

    .line 1867
    new-array v2, v3, [[I

    .line 1868
    .local v2, "states":[[I
    new-array v0, v3, [I

    .line 1869
    .local v0, "colors":[I
    const/4 v1, 0x0

    .line 1871
    .local v1, "i":I
    sget-object v3, Landroid/support/design/widget/TabLayout;->SELECTED_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1872
    aput p1, v0, v1

    .line 1873
    add-int/lit8 v1, v1, 0x1

    .line 1876
    sget-object v3, Landroid/support/design/widget/TabLayout;->EMPTY_STATE_SET:[I

    aput-object v3, v2, v1

    .line 1877
    aput p0, v0, v1

    .line 1878
    add-int/lit8 v1, v1, 0x1

    .line 1880
    new-instance v3, Landroid/content/res/ColorStateList;

    invoke-direct {v3, v2, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private createLayoutParamsForTabs()Landroid/widget/LinearLayout$LayoutParams;
    .locals 3

    .prologue
    .line 859
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    const/4 v2, -0x1

    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 861
    .local v0, "lp":Landroid/widget/LinearLayout$LayoutParams;
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 862
    return-object v0
.end method

.method private createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 794
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/design/widget/TabLayout$TabView;

    move-object v0, v1

    .line 795
    .local v0, "tabView":Landroid/support/design/widget/TabLayout$TabView;
    :goto_0
    if-nez v0, :cond_0

    .line 796
    new-instance v0, Landroid/support/design/widget/TabLayout$TabView;

    .end local v0    # "tabView":Landroid/support/design/widget/TabLayout$TabView;
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$TabView;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 798
    .restart local v0    # "tabView":Landroid/support/design/widget/TabLayout$TabView;
    :cond_0
    # invokes: Landroid/support/design/widget/TabLayout$TabView;->setTab(Landroid/support/design/widget/TabLayout$Tab;)V
    invoke-static {v0, p1}, Landroid/support/design/widget/TabLayout$TabView;->access$600(Landroid/support/design/widget/TabLayout$TabView;Landroid/support/design/widget/TabLayout$Tab;)V

    .line 799
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setFocusable(Z)V

    .line 800
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout$TabView;->setMinimumWidth(I)V

    .line 801
    return-object v0

    .line 794
    .end local v0    # "tabView":Landroid/support/design/widget/TabLayout$TabView;
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private dpToPx(I)I
    .locals 2
    .param p1, "dps"    # I

    .prologue
    .line 876
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p1

    mul-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method private getDefaultHeight()I
    .locals 5

    .prologue
    .line 1884
    const/4 v1, 0x0

    .line 1885
    .local v1, "hasIconAndText":Z
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .local v0, "count":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1886
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/design/widget/TabLayout$Tab;

    .line 1887
    .local v3, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$Tab;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1888
    const/4 v1, 0x1

    .line 1892
    .end local v3    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_0
    if-eqz v1, :cond_2

    const/16 v4, 0x48

    :goto_1
    return v4

    .line 1885
    .restart local v3    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1892
    .end local v3    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_2
    const/16 v4, 0x30

    goto :goto_1
.end method

.method private getScrollPosition()F
    .locals 1

    .prologue
    .line 401
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getIndicatorPosition()F

    move-result v0

    return v0
.end method

.method private getTabMaxWidth()I
    .locals 1

    .prologue
    .line 1914
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    return v0
.end method

.method private getTabMinWidth()I
    .locals 2

    .prologue
    .line 1896
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 1898
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMinWidth:I

    .line 1901
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-nez v0, :cond_1

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mScrollableTabMinWidth:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getTabScrollRange()I
    .locals 3

    .prologue
    .line 742
    const/4 v0, 0x0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private populateFromPagerAdapter()V
    .locals 5

    .prologue
    .line 767
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    .line 769
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v3, :cond_2

    .line 770
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v3}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 771
    .local v0, "adapterCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 772
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->newTab()Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    invoke-virtual {v4, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/design/widget/TabLayout$Tab;->setText(Ljava/lang/CharSequence;)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 771
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 776
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v3, :cond_1

    if-lez v0, :cond_1

    .line 777
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v3}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v1

    .line 778
    .local v1, "curItem":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getSelectedTabPosition()I

    move-result v3

    if-eq v1, v3, :cond_1

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 779
    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 785
    .end local v0    # "adapterCount":I
    .end local v1    # "curItem":I
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-void

    .line 783
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->removeAllTabs()V

    goto :goto_1
.end method

.method private removeTabViewAt(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 937
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$TabView;

    .line 938
    .local v0, "view":Landroid/support/design/widget/TabLayout$TabView;
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->removeViewAt(I)V

    .line 939
    if-eqz v0, :cond_0

    .line 940
    # invokes: Landroid/support/design/widget/TabLayout$TabView;->reset()V
    invoke-static {v0}, Landroid/support/design/widget/TabLayout$TabView;->access$700(Landroid/support/design/widget/TabLayout$TabView;)V

    .line 941
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabViewPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1, v0}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 943
    :cond_0
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->requestLayout()V

    .line 944
    return-void
.end method

.method private setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V
    .locals 2
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "addObserver"    # Z

    .prologue
    .line 747
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-eqz v0, :cond_0

    .line 749
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 752
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapter:Landroid/support/v4/view/PagerAdapter;

    .line 754
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 756
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    if-nez v0, :cond_1

    .line 757
    new-instance v0, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Landroid/support/design/widget/TabLayout$PagerAdapterObserver;-><init>(Landroid/support/design/widget/TabLayout;Landroid/support/design/widget/TabLayout$1;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    .line 759
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mPagerAdapterObserver:Landroid/database/DataSetObserver;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 763
    :cond_2
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->populateFromPagerAdapter()V

    .line 764
    return-void
.end method

.method private setScrollPosition(IFZZ)V
    .locals 3
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z
    .param p4, "updateIndicatorPosition"    # Z

    .prologue
    .line 378
    int-to-float v1, p1

    add-float/2addr v1, p2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 379
    .local v0, "roundedPosition":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 398
    :cond_0
    :goto_0
    return-void

    .line 384
    :cond_1
    if-eqz p4, :cond_2

    .line 385
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v1, p1, p2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setIndicatorPositionFromTabPosition(IF)V

    .line 389
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    if-eqz v1, :cond_3

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 390
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mScrollAnimator:Landroid/support/design/widget/ValueAnimatorCompat;

    invoke-virtual {v1}, Landroid/support/design/widget/ValueAnimatorCompat;->cancel()V

    .line 392
    :cond_3
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->calculateScrollXForTab(IF)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/support/design/widget/TabLayout;->scrollTo(II)V

    .line 395
    if-eqz p3, :cond_0

    .line 396
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    goto :goto_0
.end method

.method private setSelectedTabView(I)V
    .locals 4
    .param p1, "position"    # I

    .prologue
    .line 984
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    .line 985
    .local v2, "tabCount":I
    if-ge p1, v2, :cond_1

    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->isSelected()Z

    move-result v3

    if-nez v3, :cond_1

    .line 986
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 987
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 988
    .local v0, "child":Landroid/view/View;
    if-ne v1, p1, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setSelected(Z)V

    .line 986
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 988
    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 991
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method private updateAllTabs()V
    .locals 3

    .prologue
    .line 788
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "z":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 789
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    # invokes: Landroid/support/design/widget/TabLayout$Tab;->updateView()V
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$500(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 788
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 791
    :cond_0
    return-void
.end method

.method private updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2
    .param p1, "lp"    # Landroid/widget/LinearLayout$LayoutParams;

    .prologue
    .line 866
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-nez v0, :cond_0

    .line 867
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 868
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 873
    :goto_0
    return-void

    .line 870
    :cond_0
    const/4 v0, -0x2

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 871
    const/4 v0, 0x0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0
.end method

.method private updateTabViews(Z)V
    .locals 3
    .param p1, "requestLayout"    # Z

    .prologue
    .line 1067
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 1068
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v2, v1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 1069
    .local v0, "child":Landroid/view/View;
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabMinWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setMinimumWidth(I)V

    .line 1070
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {p0, v2}, Landroid/support/design/widget/TabLayout;->updateTabViewLayoutParams(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 1071
    if-eqz p1, :cond_0

    .line 1072
    invoke-virtual {v0}, Landroid/view/View;->requestLayout()V

    .line 1067
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1075
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    return-void
.end method


# virtual methods
.method public addTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 411
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 412
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I

    .prologue
    .line 422
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Landroid/support/design/widget/TabLayout;->addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 423
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;IZ)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 451
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 452
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 455
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;IZ)V

    .line 456
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 457
    if-eqz p3, :cond_1

    .line 458
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 460
    :cond_1
    return-void
.end method

.method public addTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "setSelected"    # Z

    .prologue
    .line 432
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 433
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab belongs to a different TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 436
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->addTabView(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 437
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->configureTab(Landroid/support/design/widget/TabLayout$Tab;I)V

    .line 438
    if-eqz p2, :cond_1

    .line 439
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->select()V

    .line 441
    :cond_1
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;

    .prologue
    .line 832
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 833
    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I

    .prologue
    .line 837
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 838
    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 847
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 848
    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 842
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->addViewInternal(Landroid/view/View;)V

    .line 843
    return-void
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 1910
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedTabPosition()I
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v0}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;
    .locals 1
    .param p1, "index"    # I
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 517
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 509
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getTabGravity()I
    .locals 1

    .prologue
    .line 641
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    return v0
.end method

.method public getTabMode()I
    .locals 1

    .prologue
    .line 617
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    return v0
.end method

.method public getTabTextColors()Landroid/content/res/ColorStateList;
    .locals 1
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public newTab()Landroid/support/design/widget/TabLayout$Tab;
    .locals 2
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 495
    sget-object v1, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v1}, Landroid/support/v4/util/Pools$Pool;->acquire()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout$Tab;

    .line 496
    .local v0, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-nez v0, :cond_0

    .line 497
    new-instance v0, Landroid/support/design/widget/TabLayout$Tab;

    .end local v0    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-direct {v0, p0}, Landroid/support/design/widget/TabLayout$Tab;-><init>(Landroid/support/design/widget/TabLayout;)V

    .line 499
    .restart local v0    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_0
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->createTabView(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout$TabView;

    move-result-object v1

    # setter for: Landroid/support/design/widget/TabLayout$Tab;->mView:Landroid/support/design/widget/TabLayout$TabView;
    invoke-static {v0, v1}, Landroid/support/design/widget/TabLayout$Tab;->access$102(Landroid/support/design/widget/TabLayout$Tab;Landroid/support/design/widget/TabLayout$TabView;)Landroid/support/design/widget/TabLayout$TabView;

    .line 500
    return-object v0
.end method

.method protected onMeasure(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v10, 0x40000000    # 2.0f

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 883
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getDefaultHeight()I

    move-result v6

    invoke-direct {p0, v6}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v9

    add-int/2addr v6, v9

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v9

    add-int v3, v6, v9

    .line 884
    .local v3, "idealHeight":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    sparse-switch v6, :sswitch_data_0

    .line 895
    :goto_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 896
    .local v5, "specWidth":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v6

    if-eqz v6, :cond_0

    .line 899
    iget v6, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    if-lez v6, :cond_2

    iget v6, p0, Landroid/support/design/widget/TabLayout;->mRequestedTabMaxWidth:I

    :goto_1
    iput v6, p0, Landroid/support/design/widget/TabLayout;->mTabMaxWidth:I

    .line 905
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 907
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getChildCount()I

    move-result v6

    if-ne v6, v7, :cond_1

    .line 910
    invoke-virtual {p0, v8}, Landroid/support/design/widget/TabLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 911
    .local v0, "child":Landroid/view/View;
    const/4 v4, 0x0

    .line 913
    .local v4, "remeasure":Z
    iget v6, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    packed-switch v6, :pswitch_data_0

    .line 925
    :goto_2
    if-eqz v4, :cond_1

    .line 927
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingTop()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getPaddingBottom()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    iget v7, v7, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v6, v7}, Landroid/support/design/widget/TabLayout;->getChildMeasureSpec(III)I

    move-result v1

    .line 929
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v6

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 931
    .local v2, "childWidthMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 934
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v4    # "remeasure":Z
    :cond_1
    return-void

    .line 886
    .end local v5    # "specWidth":I
    :sswitch_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    invoke-static {v3, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v6, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 889
    goto :goto_0

    .line 891
    :sswitch_1
    invoke-static {v3, v10}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_0

    .line 899
    .restart local v5    # "specWidth":I
    :cond_2
    const/16 v6, 0x38

    invoke-direct {p0, v6}, Landroid/support/design/widget/TabLayout;->dpToPx(I)I

    move-result v6

    sub-int v6, v5, v6

    goto :goto_1

    .line 917
    .restart local v0    # "child":Landroid/view/View;
    .restart local v4    # "remeasure":Z
    :pswitch_0
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v9

    if-ge v6, v9, :cond_3

    move v4, v7

    .line 918
    :goto_3
    goto :goto_2

    :cond_3
    move v4, v8

    .line 917
    goto :goto_3

    .line 921
    :pswitch_1
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->getMeasuredWidth()I

    move-result v9

    if-eq v6, v9, :cond_4

    move v4, v7

    :goto_4
    goto :goto_2

    :cond_4
    move v4, v8

    goto :goto_4

    .line 884
    nop

    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_1
    .end sparse-switch

    .line 913
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public removeAllTabs()V
    .locals 4

    .prologue
    .line 574
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v3}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 575
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 574
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 578
    :cond_0
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/support/design/widget/TabLayout$Tab;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 579
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    .line 580
    .local v2, "tab":Landroid/support/design/widget/TabLayout$Tab;
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 581
    # invokes: Landroid/support/design/widget/TabLayout$Tab;->reset()V
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$200(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 582
    sget-object v3, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v3, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    goto :goto_1

    .line 585
    .end local v2    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_1
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 586
    return-void
.end method

.method public removeTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 536
    # getter for: Landroid/support/design/widget/TabLayout$Tab;->mParent:Landroid/support/design/widget/TabLayout;
    invoke-static {p1}, Landroid/support/design/widget/TabLayout$Tab;->access$000(Landroid/support/design/widget/TabLayout$Tab;)Landroid/support/design/widget/TabLayout;

    move-result-object v0

    if-eq v0, p0, :cond_0

    .line 537
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Tab does not belong to this TabLayout."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 540
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->removeTabAt(I)V

    .line 541
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    const/4 v5, 0x0

    .line 550
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v3

    .line 551
    .local v3, "selectedTabPosition":I
    :goto_0
    invoke-direct {p0, p1}, Landroid/support/design/widget/TabLayout;->removeTabViewAt(I)V

    .line 553
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/design/widget/TabLayout$Tab;

    .line 554
    .local v2, "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v2, :cond_0

    .line 555
    # invokes: Landroid/support/design/widget/TabLayout$Tab;->reset()V
    invoke-static {v2}, Landroid/support/design/widget/TabLayout$Tab;->access$200(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 556
    sget-object v4, Landroid/support/design/widget/TabLayout;->sTabPool:Landroid/support/v4/util/Pools$Pool;

    invoke-interface {v4, v2}, Landroid/support/v4/util/Pools$Pool;->release(Ljava/lang/Object;)Z

    .line 559
    :cond_0
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 560
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 561
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout$Tab;->setPosition(I)V

    .line 560
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    .end local v3    # "selectedTabPosition":I
    :cond_1
    move v3, v5

    .line 550
    goto :goto_0

    .line 564
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Landroid/support/design/widget/TabLayout$Tab;
    .restart local v3    # "selectedTabPosition":I
    :cond_2
    if-ne v3, p1, :cond_3

    .line 565
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v4, 0x0

    :goto_2
    invoke-virtual {p0, v4}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 567
    :cond_3
    return-void

    .line 565
    :cond_4
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->mTabs:Ljava/util/ArrayList;

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/design/widget/TabLayout$Tab;

    goto :goto_2
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;

    .prologue
    .line 994
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V

    .line 995
    return-void
.end method

.method selectTab(Landroid/support/design/widget/TabLayout$Tab;Z)V
    .locals 3
    .param p1, "tab"    # Landroid/support/design/widget/TabLayout$Tab;
    .param p2, "updateIndicator"    # Z

    .prologue
    const/4 v1, -0x1

    .line 998
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-ne v2, p1, :cond_2

    .line 999
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1

    .line 1000
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_0

    .line 1001
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabReselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1003
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v1

    invoke-direct {p0, v1}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    .line 1027
    :cond_1
    :goto_0
    return-void

    .line 1006
    :cond_2
    if-eqz p2, :cond_5

    .line 1007
    if-eqz p1, :cond_7

    invoke-virtual {p1}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v0

    .line 1008
    .local v0, "newPosition":I
    :goto_1
    if-eq v0, v1, :cond_3

    .line 1009
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->setSelectedTabView(I)V

    .line 1011
    :cond_3
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v2, :cond_4

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-virtual {v2}, Landroid/support/design/widget/TabLayout$Tab;->getPosition()I

    move-result v2

    if-ne v2, v1, :cond_8

    :cond_4
    if-eq v0, v1, :cond_8

    .line 1014
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZ)V

    .line 1019
    .end local v0    # "newPosition":I
    :cond_5
    :goto_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_6

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_6

    .line 1020
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabUnselected(Landroid/support/design/widget/TabLayout$Tab;)V

    .line 1022
    :cond_6
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    .line 1023
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    if-eqz v1, :cond_1

    .line 1024
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mSelectedTab:Landroid/support/design/widget/TabLayout$Tab;

    invoke-interface {v1, v2}, Landroid/support/design/widget/TabLayout$OnTabSelectedListener;->onTabSelected(Landroid/support/design/widget/TabLayout$Tab;)V

    goto :goto_0

    :cond_7
    move v0, v1

    .line 1007
    goto :goto_1

    .line 1016
    .restart local v0    # "newPosition":I
    :cond_8
    invoke-direct {p0, v0}, Landroid/support/design/widget/TabLayout;->animateToTab(I)V

    goto :goto_2
.end method

.method public setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V
    .locals 0
    .param p1, "onTabSelectedListener"    # Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .prologue
    .line 483
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mOnTabSelectedListener:Landroid/support/design/widget/TabLayout$OnTabSelectedListener;

    .line 484
    return-void
.end method

.method public setScrollPosition(IFZ)V
    .locals 1
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "updateSelectedText"    # Z

    .prologue
    .line 373
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/widget/TabLayout;->setScrollPosition(IFZZ)V

    .line 374
    return-void
.end method

.method public setSelectedTabIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 348
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorColor(I)V

    .line 349
    return-void
.end method

.method public setSelectedTabIndicatorHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 359
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabStrip:Landroid/support/design/widget/TabLayout$SlidingTabStrip;

    invoke-virtual {v0, p1}, Landroid/support/design/widget/TabLayout$SlidingTabStrip;->setSelectedIndicatorHeight(I)V

    .line 360
    return-void
.end method

.method public setTabGravity(I)V
    .locals 1
    .param p1, "gravity"    # I

    .prologue
    .line 628
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    if-eq v0, p1, :cond_0

    .line 629
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mTabGravity:I

    .line 630
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 632
    :cond_0
    return-void
.end method

.method public setTabMode(I)V
    .locals 1
    .param p1, "mode"    # I

    .prologue
    .line 604
    iget v0, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    if-eq p1, v0, :cond_0

    .line 605
    iput p1, p0, Landroid/support/design/widget/TabLayout;->mMode:I

    .line 606
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->applyModeAndGravity()V

    .line 608
    :cond_0
    return-void
.end method

.method public setTabTextColors(II)V
    .locals 1
    .param p1, "normalColor"    # I
    .param p2, "selectedColor"    # I

    .prologue
    .line 671
    invoke-static {p1, p2}, Landroid/support/design/widget/TabLayout;->createColorStateList(II)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->setTabTextColors(Landroid/content/res/ColorStateList;)V

    .line 672
    return-void
.end method

.method public setTabTextColors(Landroid/content/res/ColorStateList;)V
    .locals 1
    .param p1, "textColor"    # Landroid/content/res/ColorStateList;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 650
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    if-eq v0, p1, :cond_0

    .line 651
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mTabTextColors:Landroid/content/res/ColorStateList;

    .line 652
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->updateAllTabs()V

    .line 654
    :cond_0
    return-void
.end method

.method public setTabsFromPagerAdapter(Landroid/support/v4/view/PagerAdapter;)V
    .locals 1
    .param p1, "adapter"    # Landroid/support/v4/view/PagerAdapter;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 732
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 733
    return-void
.end method

.method public setupWithViewPager(Landroid/support/v4/view/ViewPager;)V
    .locals 5
    .param p1, "viewPager"    # Landroid/support/v4/view/ViewPager;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 691
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-eqz v1, :cond_0

    .line 693
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPager;->removeOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 696
    :cond_0
    if-eqz p1, :cond_3

    .line 697
    invoke-virtual {p1}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    .line 698
    .local v0, "adapter":Landroid/support/v4/view/PagerAdapter;
    if-nez v0, :cond_1

    .line 699
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "ViewPager does not have a PagerAdapter set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 702
    :cond_1
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 705
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    if-nez v1, :cond_2

    .line 706
    new-instance v1, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-direct {v1, p0}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    .line 708
    :cond_2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    # invokes: Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->reset()V
    invoke-static {v1}, Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;->access$300(Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;)V

    .line 709
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->mPageChangeListener:Landroid/support/design/widget/TabLayout$TabLayoutOnPageChangeListener;

    invoke-virtual {p1, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 712
    new-instance v1, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;

    invoke-direct {v1, p1}, Landroid/support/design/widget/TabLayout$ViewPagerOnTabSelectedListener;-><init>(Landroid/support/v4/view/ViewPager;)V

    invoke-virtual {p0, v1}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 715
    invoke-direct {p0, v0, v4}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    .line 723
    .end local v0    # "adapter":Landroid/support/v4/view/PagerAdapter;
    :goto_0
    return-void

    .line 719
    :cond_3
    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->mViewPager:Landroid/support/v4/view/ViewPager;

    .line 720
    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->setOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 721
    invoke-direct {p0, v3, v4}, Landroid/support/design/widget/TabLayout;->setPagerAdapter(Landroid/support/v4/view/PagerAdapter;Z)V

    goto :goto_0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 738
    invoke-direct {p0}, Landroid/support/design/widget/TabLayout;->getTabScrollRange()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
