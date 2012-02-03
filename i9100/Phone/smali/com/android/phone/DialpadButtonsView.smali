.class public Lcom/android/phone/DialpadButtonsView;
.super Landroid/widget/RelativeLayout;
.source "DialpadButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mBackButton:Landroid/widget/ImageButton;

.field private mContext:Landroid/content/Context;

.field private mEndButton:Landroid/widget/Button;

.field private mHideButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mSendButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    iput-object p1, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    .line 59
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/DialpadButtonsView;)Lcom/android/phone/InCallScreen;
    .locals 1
    .parameter "x0"

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    return-object v0
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 63
    const v0, 0x7f080059

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    .line 64
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    const v0, 0x7f08005c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mHideButton:Landroid/widget/Button;

    .line 66
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mHideButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 67
    const v0, 0x7f08005a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    .line 68
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v0, 0x7f08005b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    .line 70
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    iget-object v0, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    new-instance v1, Lcom/android/phone/DialpadButtonsView$1;

    invoke-direct {v1, p0}, Lcom/android/phone/DialpadButtonsView$1;-><init>(Lcom/android/phone/DialpadButtonsView;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 77
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 153
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    return-void
.end method


# virtual methods
.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 81
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 82
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030014

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 86
    const-string v1, "Inflate End call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButtonsView;->log(Ljava/lang/String;)V

    .line 87
    const v1, 0x7f080058

    invoke-virtual {p0, v1}, Lcom/android/phone/DialpadButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    .line 88
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    .line 89
    iput-object p1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 90
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "view"

    .prologue
    const-string v4, ", id "

    .line 130
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 131
    .local v0, id:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/DialpadButtonsView;->log(Ljava/lang/String;)V

    .line 132
    packed-switch v0, :pswitch_data_0

    .line 146
    const-string v1, "EndCallButtonsView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick: unexpected click: View "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", id "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_0
    return-void

    .line 134
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080059

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 137
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen;->getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->handleBackButton()V

    goto :goto_0

    .line 140
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080093

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 143
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/DialpadButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v2, 0x7f080092

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 132
    nop

    :pswitch_data_0
    .packed-switch 0x7f080059
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 94
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 95
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 6
    .parameter "cm"
    .parameter "orientation"

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 98
    iget v2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    if-eq v2, p2, :cond_0

    .line 99
    iput p2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    .line 100
    iget v2, p0, Lcom/android/phone/DialpadButtonsView;->mOrientation:I

    if-ne v2, v3, :cond_1

    move v1, v3

    .line 102
    .local v1, isPortrait:Z
    :goto_0
    if-eqz v1, :cond_2

    .line 103
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v2}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    .line 104
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 105
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v2, v5}, Lcom/android/phone/DialpadButtonsViewLand;->setVisibility(I)V

    .line 118
    .end local v1           #isPortrait:Z
    :cond_0
    :goto_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v3

    .line 120
    .local v0, duringCall:Z
    :goto_2
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mSendButton:Landroid/widget/Button;

    if-eqz v0, :cond_5

    move v3, v5

    :goto_3
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 121
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v0, :cond_6

    move v3, v4

    :goto_4
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 122
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mBackButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_7

    move v3, v5

    :goto_5
    invoke-virtual {v2, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 123
    return-void

    .end local v0           #duringCall:Z
    :cond_1
    move v1, v4

    .line 100
    goto :goto_0

    .line 107
    .restart local v1       #isPortrait:Z
    :cond_2
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-nez v2, :cond_3

    .line 108
    const v2, 0x7f08005d

    invoke-virtual {p0, v2}, Lcom/android/phone/DialpadButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/android/phone/DialpadButtonsViewLand;

    iput-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    .line 109
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v2}, Lcom/android/phone/DialpadButtonsViewLand;->initialize()V

    .line 111
    :cond_3
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-direct {p0, v2}, Lcom/android/phone/DialpadButtonsView;->linkControls(Landroid/view/View;)V

    .line 113
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 114
    iget-object v2, p0, Lcom/android/phone/DialpadButtonsView;->mLandscape:Lcom/android/phone/DialpadButtonsViewLand;

    invoke-virtual {v2, v4}, Lcom/android/phone/DialpadButtonsViewLand;->setVisibility(I)V

    goto :goto_1

    .end local v1           #isPortrait:Z
    :cond_4
    move v0, v4

    .line 118
    goto :goto_2

    .restart local v0       #duringCall:Z
    :cond_5
    move v3, v4

    .line 120
    goto :goto_3

    :cond_6
    move v3, v5

    .line 121
    goto :goto_4

    :cond_7
    move v3, v4

    .line 122
    goto :goto_5
.end method
