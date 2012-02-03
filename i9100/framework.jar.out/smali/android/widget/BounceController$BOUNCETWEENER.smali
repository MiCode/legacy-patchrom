.class public final enum Landroid/widget/BounceController$BOUNCETWEENER;
.super Ljava/lang/Enum;
.source "BounceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/BounceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "BOUNCETWEENER"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/widget/BounceController$BOUNCETWEENER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/widget/BounceController$BOUNCETWEENER;

.field public static final enum BOUNCE_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

.field public static final enum BOUNCE_EASE_IN_OUT2:Landroid/widget/BounceController$BOUNCETWEENER;

.field public static final enum EXPO_DEFAULT:Landroid/widget/BounceController$BOUNCETWEENER;

.field public static final enum QUINT_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

.field public static final enum SIN_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

.field public static final enum SIN_EASE_IN_OUT_1BOUNCE:Landroid/widget/BounceController$BOUNCETWEENER;


# instance fields
.field public mMaxDragDur:I

.field public mMaxFlingDur:I

.field public mMaxGlowScale:F

.field public mMinDragDur:I

.field public mMinFlingDur:I

.field private mName:Ljava/lang/String;

.field private mTweener:Landroid/widget/BounceController$Tweener;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .prologue
    .line 424
    new-instance v0, Landroid/widget/BounceController$BOUNCETWEENER;

    const-string v1, "EXPO_DEFAULT"

    const/4 v2, 0x0

    const-string v3, "Exponential Default"

    new-instance v4, Landroid/widget/BounceController$BOUNCETWEENER$1;

    invoke-direct {v4}, Landroid/widget/BounceController$BOUNCETWEENER$1;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/BounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/widget/BounceController$Tweener;)V

    sput-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->EXPO_DEFAULT:Landroid/widget/BounceController$BOUNCETWEENER;

    .line 447
    new-instance v0, Landroid/widget/BounceController$BOUNCETWEENER;

    const-string v1, "BOUNCE_EASE_IN_OUT"

    const/4 v2, 0x1

    const-string v3, "Bounce Ease In Out"

    new-instance v4, Landroid/widget/BounceController$BOUNCETWEENER$2;

    invoke-direct {v4}, Landroid/widget/BounceController$BOUNCETWEENER$2;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/BounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/widget/BounceController$Tweener;)V

    sput-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->BOUNCE_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    .line 484
    new-instance v0, Landroid/widget/BounceController$BOUNCETWEENER;

    const-string v1, "BOUNCE_EASE_IN_OUT2"

    const/4 v2, 0x2

    const-string v3, "Bounce Ease In Out 2"

    new-instance v4, Landroid/widget/BounceController$BOUNCETWEENER$3;

    invoke-direct {v4}, Landroid/widget/BounceController$BOUNCETWEENER$3;-><init>()V

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/widget/BounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/widget/BounceController$Tweener;)V

    sput-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->BOUNCE_EASE_IN_OUT2:Landroid/widget/BounceController$BOUNCETWEENER;

    .line 510
    new-instance v0, Landroid/widget/BounceController$BOUNCETWEENER;

    const-string v1, "SIN_EASE_IN_OUT"

    const/4 v2, 0x3

    const-string v3, "Sin Ease In Out"

    new-instance v4, Landroid/widget/BounceController$BOUNCETWEENER$4;

    invoke-direct {v4}, Landroid/widget/BounceController$BOUNCETWEENER$4;-><init>()V

    const/high16 v5, 0x4080

    const/16 v6, 0x190

    const/16 v7, 0x190

    const/16 v8, 0x320

    const/16 v9, 0x320

    invoke-direct/range {v0 .. v9}, Landroid/widget/BounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/widget/BounceController$Tweener;FIIII)V

    sput-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->SIN_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    .line 528
    new-instance v0, Landroid/widget/BounceController$BOUNCETWEENER;

    const-string v1, "QUINT_EASE_IN_OUT"

    const/4 v2, 0x4

    const-string v3, "Quint Ease In Out"

    new-instance v4, Landroid/widget/BounceController$BOUNCETWEENER$5;

    invoke-direct {v4}, Landroid/widget/BounceController$BOUNCETWEENER$5;-><init>()V

    const/high16 v5, 0x4080

    const/16 v6, 0x190

    const/16 v7, 0x190

    const/16 v8, 0x258

    const/16 v9, 0x258

    invoke-direct/range {v0 .. v9}, Landroid/widget/BounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/widget/BounceController$Tweener;FIIII)V

    sput-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->QUINT_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    .line 549
    new-instance v0, Landroid/widget/BounceController$BOUNCETWEENER;

    const-string v1, "SIN_EASE_IN_OUT_1BOUNCE"

    const/4 v2, 0x5

    const-string v3, "Sin Ease In Out 1Bounce"

    new-instance v4, Landroid/widget/BounceController$BOUNCETWEENER$6;

    invoke-direct {v4}, Landroid/widget/BounceController$BOUNCETWEENER$6;-><init>()V

    const/high16 v5, 0x4080

    const/16 v6, 0x2bc

    const/16 v7, 0x2bc

    const/16 v8, 0x320

    const/16 v9, 0x320

    invoke-direct/range {v0 .. v9}, Landroid/widget/BounceController$BOUNCETWEENER;-><init>(Ljava/lang/String;ILjava/lang/String;Landroid/widget/BounceController$Tweener;FIIII)V

    sput-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->SIN_EASE_IN_OUT_1BOUNCE:Landroid/widget/BounceController$BOUNCETWEENER;

    .line 423
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/widget/BounceController$BOUNCETWEENER;

    const/4 v1, 0x0

    sget-object v2, Landroid/widget/BounceController$BOUNCETWEENER;->EXPO_DEFAULT:Landroid/widget/BounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Landroid/widget/BounceController$BOUNCETWEENER;->BOUNCE_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Landroid/widget/BounceController$BOUNCETWEENER;->BOUNCE_EASE_IN_OUT2:Landroid/widget/BounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Landroid/widget/BounceController$BOUNCETWEENER;->SIN_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Landroid/widget/BounceController$BOUNCETWEENER;->QUINT_EASE_IN_OUT:Landroid/widget/BounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Landroid/widget/BounceController$BOUNCETWEENER;->SIN_EASE_IN_OUT_1BOUNCE:Landroid/widget/BounceController$BOUNCETWEENER;

    aput-object v2, v0, v1

    sput-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->$VALUES:[Landroid/widget/BounceController$BOUNCETWEENER;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/widget/BounceController$Tweener;)V
    .locals 3
    .parameter
    .parameter
    .parameter "name"
    .parameter "tweener"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/BounceController$Tweener;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x258

    const/16 v1, 0x190

    .line 603
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 604
    iput-object p3, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mName:Ljava/lang/String;

    .line 605
    iput-object p4, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mTweener:Landroid/widget/BounceController$Tweener;

    .line 607
    const/high16 v0, 0x4040

    iput v0, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMaxGlowScale:F

    .line 608
    iput v1, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMinDragDur:I

    .line 609
    iput v1, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMaxDragDur:I

    .line 610
    iput v2, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMinFlingDur:I

    .line 611
    iput v2, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMaxFlingDur:I

    .line 612
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Landroid/widget/BounceController$Tweener;FIIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "name"
    .parameter "tweener"
    .parameter "mgs"
    .parameter "mindd"
    .parameter "maxdd"
    .parameter "minfd"
    .parameter "maxfd"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/widget/BounceController$Tweener;",
            "FIIII)V"
        }
    .end annotation

    .prologue
    .line 615
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 616
    iput-object p3, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mName:Ljava/lang/String;

    .line 617
    iput-object p4, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mTweener:Landroid/widget/BounceController$Tweener;

    .line 619
    iput p5, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMaxGlowScale:F

    .line 620
    iput p6, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMinDragDur:I

    .line 621
    iput p7, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMaxDragDur:I

    .line 622
    iput p8, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMinFlingDur:I

    .line 623
    iput p9, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mMaxFlingDur:I

    .line 624
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/widget/BounceController$BOUNCETWEENER;
    .locals 1
    .parameter "name"

    .prologue
    .line 423
    const-class v0, Landroid/widget/BounceController$BOUNCETWEENER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/BounceController$BOUNCETWEENER;

    return-object p0
.end method

.method public static values()[Landroid/widget/BounceController$BOUNCETWEENER;
    .locals 1

    .prologue
    .line 423
    sget-object v0, Landroid/widget/BounceController$BOUNCETWEENER;->$VALUES:[Landroid/widget/BounceController$BOUNCETWEENER;

    invoke-virtual {v0}, [Landroid/widget/BounceController$BOUNCETWEENER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/widget/BounceController$BOUNCETWEENER;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 627
    iget-object v0, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getTweener()Landroid/widget/BounceController$Tweener;
    .locals 1

    .prologue
    .line 631
    iget-object v0, p0, Landroid/widget/BounceController$BOUNCETWEENER;->mTweener:Landroid/widget/BounceController$Tweener;

    return-object v0
.end method
