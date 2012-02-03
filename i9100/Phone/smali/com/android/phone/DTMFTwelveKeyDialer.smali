.class public Lcom/android/phone/DTMFTwelveKeyDialer;
.super Ljava/lang/Object;
.source "DTMFTwelveKeyDialer.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/view/View$OnTouchListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerCloseListener;
.implements Landroid/widget/SlidingDrawer$OnDrawerOpenListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;
    }
.end annotation


# static fields
.field private static final mDisplayMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private static final mToneMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mDTMFBurstCnfPending:Z

.field private mDTMFQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Character;",
            ">;"
        }
    .end annotation
.end field

.field private mDTMFToneEnabled:Z

.field private mDTMFToneType:I

.field private mDialerDrawer:Landroid/widget/SlidingDrawer;

.field private mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDialpadDigits:Landroid/widget/EditText;

.field private mHandler:Landroid/os/Handler;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mPaddingTop:Landroid/view/View;

.field private mToneGenerator:Landroid/media/ToneGenerator;

.field private mToneGeneratorLock:Ljava/lang/Object;

.field private trans:Landroid/view/animation/TranslateAnimation;

.field private trans2:Landroid/view/animation/TranslateAnimation;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/16 v7, 0x32

    const/16 v6, 0x31

    const/16 v5, 0x30

    const/16 v4, 0x2a

    const/16 v3, 0x23

    .line 90
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    .line 93
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    .line 98
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x33

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x34

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x35

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x36

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x37

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x38

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    const/16 v1, 0x39

    invoke-static {v1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xb

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    const/16 v2, 0xa

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f08004b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f08004c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f08004d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x33

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 115
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f08004e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x34

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f08004f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x35

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f080050

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x36

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f080051

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x37

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f080052

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x38

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 120
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f080053

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x39

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 121
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f080055

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f080056

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    const v1, 0x7f080054

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    return-void
.end method

.method public constructor <init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V
    .locals 4
    .parameter "parent"
    .parameter "dialerView"
    .parameter "dialerDrawer"

    .prologue
    const/4 v3, 0x0

    .line 416
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    .line 80
    iput-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 83
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    .line 383
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer$1;

    invoke-direct {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialer$1;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    .line 417
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DTMFTwelveKeyDialer constructor... this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 419
    iput-object p1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 420
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 424
    if-nez p2, :cond_0

    .line 425
    const-string v0, "DTMFTwelveKeyDialer"

    const-string v1, "DTMFTwelveKeyDialer: null dialerView!"

    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 429
    :cond_0
    iput-object p2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got passed-in mDialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 432
    iput-object p3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 433
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got passed-in mDialerDrawer: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 435
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_2

    .line 436
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, p0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setDialer(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    .line 443
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v1, 0x7f080061

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    .line 445
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const v1, 0x7f0800c2

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mPaddingTop:Landroid/view/View;

    .line 447
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_1

    .line 448
    new-instance v0, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;Lcom/android/phone/DTMFTwelveKeyDialer$1;)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    .line 453
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 461
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {p0, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerView;)V

    .line 463
    :cond_2
    return-void
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/DTMFTwelveKeyDialer;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/DTMFTwelveKeyDialer;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/phone/DTMFTwelveKeyDialer;)Lcom/android/phone/DTMFTwelveKeyDialerView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    return-object v0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1043
    const-string v0, "DTMFTwelveKeyDialer"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    return-void
.end method

.method private onDialerClose()V
    .locals 3

    .prologue
    .line 585
    const-string v1, "onDialerClose()..."

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 588
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 589
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 591
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 594
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    if-eqz v1, :cond_0

    .line 595
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->onDialerClose()V

    .line 597
    :cond_0
    return-void
.end method

.method private onDialerOpen()V
    .locals 4

    .prologue
    .line 519
    const-string v0, "onDialerOpen()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 523
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x64

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 527
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 530
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->onDialerOpen()V

    .line 531
    return-void
.end method

.method private final processDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    const-string v2, "\'"

    .line 915
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 916
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updating display and sending dtmf tone for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 919
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 929
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/text/Editable;->append(C)Landroid/text/Editable;

    .line 933
    :cond_0
    sget-object v0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 935
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startTone(C)V

    .line 942
    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 943
    return-void

    .line 938
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ignoring dtmf request for \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reSetupKeypad(Landroid/view/View;)V
    .locals 4
    .parameter "dialerView"

    .prologue
    .line 650
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 652
    .local v2, viewId:I
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 654
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 655
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 656
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    .line 658
    .end local v0           #button:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_0
    return-void
.end method

.method private sendShortDtmfToNetwork(C)V
    .locals 7
    .parameter "dtmfDigit"

    .prologue
    const/4 v3, 0x1

    .line 1129
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v1

    .line 1130
    :try_start_0
    iget-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    if-ne v2, v3, :cond_0

    .line 1132
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 1140
    :goto_0
    monitor-exit v1

    .line 1141
    return-void

    .line 1134
    :cond_0
    invoke-static {p1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    .line 1135
    .local v0, dtmfStr:Ljava/lang/String;
    const-string v2, "DTMFTwelveKeyDialer"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dtmfsent = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1136
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v6, 0x65

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v2, v0, v3, v4, v5}, Lcom/android/internal/telephony/CallManager;->sendBurstDtmf(Ljava/lang/String;IILandroid/os/Message;)Z

    .line 1138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    goto :goto_0

    .line 1140
    .end local v0           #dtmfStr:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private setupKeypad(Lcom/android/phone/DTMFTwelveKeyDialerView;)V
    .locals 4
    .parameter "dialerView"

    .prologue
    .line 638
    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 640
    .local v2, viewId:I
    invoke-virtual {p1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 642
    .local v0, button:Landroid/view/View;
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 643
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/View;->setClickable(Z)V

    .line 644
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    goto :goto_0

    .line 646
    .end local v0           #button:Landroid/view/View;
    .end local v2           #viewId:I
    :cond_0
    return-void
.end method

.method private startTone(C)V
    .locals 2
    .parameter "c"

    .prologue
    .line 1051
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1052
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1053
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startToneCdma(C)V

    .line 1057
    :goto_0
    return-void

    .line 1055
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDtmfTone(C)V

    goto :goto_0
.end method

.method private stopTone()V
    .locals 3

    .prologue
    .line 1064
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 1065
    .local v0, phoneType:I
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1067
    iget v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 1068
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopToneCdma()V

    .line 1073
    :cond_0
    :goto_0
    return-void

    .line 1071
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDtmfTone()V

    goto :goto_0
.end method

.method private stopToneCdma()V
    .locals 1

    .prologue
    .line 1148
    const-string v0, "stopping remote tone."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1150
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 1151
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 1152
    return-void
.end method


# virtual methods
.method public clearDigits()V
    .locals 2

    .prologue
    .line 970
    const-string v0, "clearDigits()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 972
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 973
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 975
    :cond_0
    return-void
.end method

.method clearInCallScreenReference()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 497
    const-string v0, "clearInCallScreenReference()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 498
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 499
    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    .line 500
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    .line 501
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 502
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 504
    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 505
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 506
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v0

    .line 507
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 508
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    .line 509
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 511
    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 512
    return-void

    .line 509
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public closeDialer(Z)V
    .locals 9
    .parameter "animate"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 831
    const-string v0, "closeDialer()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 833
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 834
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_2

    .line 836
    if-eqz p1, :cond_1

    .line 837
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    .line 881
    :cond_0
    :goto_0
    return-void

    .line 839
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_0

    .line 845
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/16 v3, 0x8

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 847
    if-eqz p1, :cond_3

    .line 848
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v8, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v6, v2

    move v7, v1

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans2:Landroid/view/animation/TranslateAnimation;

    .line 849
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans2:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 850
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 851
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans2:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 852
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans2:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer$3;

    invoke-direct {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialer$3;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    .line 872
    :cond_3
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->clearAnimation()V

    .line 876
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    goto :goto_0
.end method

.method getDialnumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1189
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method handleBackButton()V
    .locals 3

    .prologue
    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1193
    .local v0, number:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialnumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1194
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 1195
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 1196
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 1197
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 1199
    :cond_0
    return-void
.end method

.method handleBurstDtmfConfirmation()V
    .locals 6

    .prologue
    .line 1176
    const/4 v1, 0x0

    .line 1177
    .local v1, dtmfChar:Ljava/lang/Character;
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    monitor-enter v3

    .line 1178
    const/4 v2, 0x0

    :try_start_0
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFBurstCnfPending:Z

    .line 1179
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1180
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFQueue:Ljava/util/Queue;

    invoke-interface {v2}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Ljava/lang/Character;

    move-object v1, v0

    .line 1181
    const-string v2, "DTMFTwelveKeyDialer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "The dtmf character removed from queue"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1183
    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1184
    if-eqz v1, :cond_1

    .line 1185
    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShortDtmfToNetwork(C)V

    .line 1187
    :cond_1
    return-void

    .line 1183
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method isKeyEventAcceptable(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 1036
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOpened()Z
    .locals 1

    .prologue
    .line 743
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    .line 746
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v0

    .line 749
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDialerKeyDown(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 620
    const-string v0, "Notifying dtmf key down."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 621
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onDialerKeyUp(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 628
    const-string v0, "Notifying dtmf key up."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 629
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerKeyListener:Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer$DTMFKeyListener;->onKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onDrawerClosed()V
    .locals 0

    .prologue
    .line 905
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerClose()V

    .line 906
    return-void
.end method

.method public onDrawerOpened()V
    .locals 0

    .prologue
    .line 898
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    .line 899
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 716
    const/16 v1, 0x17

    if-ne p2, v1, :cond_0

    .line 717
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 718
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 719
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 733
    .end local v0           #viewId:I
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return v1

    .line 721
    .restart local v0       #viewId:I
    :pswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v1

    if-nez v1, :cond_0

    .line 722
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    goto :goto_0

    .line 726
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0

    .line 719
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 665
    packed-switch p1, :pswitch_data_0

    .line 673
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 669
    :pswitch_0
    const-string v0, "exit requested"

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 670
    invoke-virtual {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    move v0, v1

    .line 671
    goto :goto_0

    .line 665
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 681
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/InCallScreen;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .parameter "v"
    .parameter "event"

    .prologue
    .line 688
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 691
    .local v0, viewId:I
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 692
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 707
    :cond_0
    :goto_0
    :pswitch_0
    const/4 v1, 0x0

    return v1

    .line 696
    :pswitch_1
    sget-object v1, Lcom/android/phone/DTMFTwelveKeyDialer;->mDisplayMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Character;

    invoke-virtual {v1}, Ljava/lang/Character;->charValue()C

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->processDtmf(C)V

    goto :goto_0

    .line 701
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    goto :goto_0

    .line 692
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public openDialer(Z)V
    .locals 11
    .parameter "animate"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 768
    const-string v0, "openDialer()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 770
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v3, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_2

    .line 773
    if-eqz p1, :cond_1

    .line 774
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->animateToggle()V

    .line 822
    :cond_0
    :goto_0
    return-void

    .line 776
    :cond_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_0

    .line 782
    :cond_2
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    .line 783
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mPaddingTop:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 784
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_5

    move v10, v1

    .line 785
    .local v10, isRinging:Z
    :goto_1
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v9

    .line 786
    .local v9, isDialing:Z
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mPaddingTop:Landroid/view/View;

    if-nez v10, :cond_3

    if-eqz v9, :cond_6

    :cond_3
    const/4 v3, 0x4

    :goto_2
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 789
    .end local v9           #isDialing:Z
    .end local v10           #isRinging:Z
    :cond_4
    if-eqz p1, :cond_7

    .line 790
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    const/high16 v6, 0x3f80

    move v3, v1

    move v4, v2

    move v5, v1

    move v7, v1

    move v8, v2

    invoke-direct/range {v0 .. v8}, Landroid/view/animation/TranslateAnimation;-><init>(IFIFIFIF)V

    iput-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans:Landroid/view/animation/TranslateAnimation;

    .line 791
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 792
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 794
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->trans:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialer$2;

    invoke-direct {v1, p0}, Lcom/android/phone/DTMFTwelveKeyDialer$2;-><init>(Lcom/android/phone/DTMFTwelveKeyDialer;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    goto :goto_0

    :cond_5
    move v10, v4

    .line 784
    goto :goto_1

    .line 786
    .restart local v9       #isDialing:Z
    .restart local v10       #isRinging:Z
    :cond_6
    const/16 v3, 0x8

    goto :goto_2

    .line 814
    .end local v9           #isDialing:Z
    .end local v10           #isRinging:Z
    :cond_7
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerView;->clearAnimation()V

    .line 818
    invoke-direct {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerOpen()V

    goto :goto_0
.end method

.method relinkControls(I)V
    .locals 3
    .parameter "orientation"

    .prologue
    .line 466
    const-string v1, "relinkContols"

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 467
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1, p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->resetDialer(Lcom/android/phone/DTMFTwelveKeyDialer;I)V

    .line 469
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 470
    .local v0, prevDigits:Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialnumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 471
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getDialerOrientationView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f080061

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    .line 472
    invoke-virtual {p0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 474
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 475
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/text/Editable;->append(Ljava/lang/CharSequence;)Landroid/text/Editable;

    .line 477
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialpadDigits:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setLongClickable(Z)V

    .line 480
    :cond_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->getDialerOrientationView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->reSetupKeypad(Landroid/view/View;)V

    .line 483
    .end local v0           #prevDigits:Ljava/lang/StringBuilder;
    :cond_1
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v1, :cond_2

    .line 484
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerOpenListener(Landroid/widget/SlidingDrawer$OnDrawerOpenListener;)V

    .line 485
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, p0}, Landroid/widget/SlidingDrawer;->setOnDrawerCloseListener(Landroid/widget/SlidingDrawer$OnDrawerCloseListener;)V

    .line 488
    :cond_2
    return-void
.end method

.method public setHandleVisible(Z)V
    .locals 2
    .parameter "visible"

    .prologue
    .line 889
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    .line 890
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SlidingDrawer;->setVisibility(I)V

    .line 892
    :cond_0
    return-void

    .line 890
    :cond_1
    const/16 v1, 0x8

    goto :goto_0
.end method

.method public startDialerSession()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 546
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startDialerSession()... this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 549
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a000b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 550
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v2}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "dtmf_tone"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_2

    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    .line 555
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- startDialerSession: mDTMFToneEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 560
    iget-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v2, :cond_1

    .line 561
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v2

    .line 562
    :try_start_0
    iget-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_0

    .line 564
    const/16 v1, 0x50

    .line 570
    .local v1, volume:I
    :try_start_1
    new-instance v3, Landroid/media/ToneGenerator;

    const/16 v4, 0x8

    invoke-direct {v3, v4, v1}, Landroid/media/ToneGenerator;-><init>(II)V

    iput-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 576
    .end local v1           #volume:I
    :cond_0
    :goto_2
    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 578
    :cond_1
    return-void

    :cond_2
    move v2, v5

    .line 550
    goto :goto_0

    .line 553
    :cond_3
    iput-boolean v5, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    goto :goto_1

    .line 571
    .restart local v1       #volume:I
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 572
    .local v0, e:Ljava/lang/RuntimeException;
    :try_start_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception caught while creating local tone generator: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 573
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    goto :goto_2

    .line 576
    .end local v0           #e:Ljava/lang/RuntimeException;
    .end local v1           #volume:I
    :catchall_0
    move-exception v3

    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v3
.end method

.method startDtmfTone(C)V
    .locals 4
    .parameter "tone"

    .prologue
    .line 987
    const-string v0, "startDtmfTone()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 988
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    .line 991
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 992
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 993
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmfTone: mToneGenerator == null, tone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 999
    .end local p0
    :goto_0
    monitor-exit v0

    .line 1001
    :cond_0
    return-void

    .line 996
    .restart local p0
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "starting local tone "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 997
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v2, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_0

    .line 999
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method startLocalToneCdma(C)V
    .locals 5
    .parameter "tone"

    .prologue
    .line 1101
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startLocalToneCdma(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mDTMFToneEnabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1105
    iget-boolean v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v1, :cond_0

    .line 1106
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1107
    :try_start_0
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v2, :cond_1

    .line 1108
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startToneCdma: mToneGenerator == null, tone: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1119
    .end local p0
    :goto_0
    monitor-exit v1

    .line 1121
    :cond_0
    return-void

    .line 1110
    .restart local p0
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "starting local tone "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1113
    const/4 v0, -0x1

    .line 1114
    .local v0, toneDuration:I
    iget v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneType:I

    if-nez v2, :cond_2

    .line 1115
    const/16 v0, 0x78

    .line 1117
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    sget-object v3, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v2, v3, v0}, Landroid/media/ToneGenerator;->startTone(II)Z

    goto :goto_0

    .line 1119
    .end local v0           #toneDuration:I
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method startToneCdma(C)V
    .locals 3
    .parameter "tone"

    .prologue
    .line 1079
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startToneCdma(\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\')..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1082
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "dtmf_tone_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneType:I

    .line 1086
    iget v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneType:I

    if-nez v0, :cond_0

    .line 1087
    invoke-direct {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->sendShortDtmfToNetwork(C)V

    .line 1094
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    .line 1095
    return-void

    .line 1090
    :cond_0
    const-string v0, "DTMFTwelveKeyDialer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "send long dtmf for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1091
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/CallManager;->startDtmf(C)Z

    goto :goto_0
.end method

.method public stopDialerSession()V
    .locals 2

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 609
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-eqz v1, :cond_0

    .line 610
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->release()V

    .line 611
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    .line 613
    :cond_0
    monitor-exit v0

    .line 614
    return-void

    .line 613
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopDtmfTone()V
    .locals 2

    .prologue
    .line 1015
    const-string v0, "stopDtmfTone()..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1016
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->stopDtmf()V

    .line 1019
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1020
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 1021
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1022
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 1023
    const-string v1, "stopDtmfTone: mToneGenerator == null"

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1028
    :goto_0
    monitor-exit v0

    .line 1030
    :cond_0
    return-void

    .line 1025
    :cond_1
    const-string v1, "stopping local tone."

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1026
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 1028
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method stopLocalToneCdma()V
    .locals 2

    .prologue
    .line 1159
    const-string v0, "trying to stop local tone..."

    invoke-static {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1160
    iget-boolean v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDTMFToneEnabled:Z

    if-eqz v0, :cond_0

    .line 1161
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGeneratorLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1162
    :try_start_0
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    if-nez v1, :cond_1

    .line 1163
    const-string v1, "stopLocalToneCdma: mToneGenerator == null"

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1168
    :goto_0
    monitor-exit v0

    .line 1170
    :cond_0
    return-void

    .line 1165
    :cond_1
    const-string v1, "stopping local tone."

    invoke-static {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->log(Ljava/lang/String;)V

    .line 1166
    iget-object v1, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mToneGenerator:Landroid/media/ToneGenerator;

    invoke-virtual {v1}, Landroid/media/ToneGenerator;->stopTone()V

    goto :goto_0

    .line 1168
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public usingSlidingDrawer()Z
    .locals 1

    .prologue
    .line 758
    iget-object v0, p0, Lcom/android/phone/DTMFTwelveKeyDialer;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
