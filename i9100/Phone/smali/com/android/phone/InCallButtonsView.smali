.class public Lcom/android/phone/InCallButtonsView;
.super Landroid/widget/FrameLayout;
.source "InCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private inCallControlState:Lcom/android/phone/InCallControlState;

.field private mAddButton:Landroid/widget/Button;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mCancelButton:Landroid/widget/Button;

.field private mContext:Landroid/content/Context;

.field private mDialpadButton:Landroid/widget/Button;

.field private mEndButton:Landroid/widget/Button;

.field private mHDVideoButton:Landroid/widget/Button;

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHoldButton:Landroid/widget/ImageButton;

.field private mHoldButtonContainer:Landroid/view/View;

.field private mHoldButtonLabel:Landroid/widget/TextView;

.field private mHoldIcon:Landroid/graphics/drawable/Drawable;

.field private mInCallSaveButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/InCallButtonsViewLand;

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mNoiseReductionView:Landroid/widget/ImageView;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mRecordButton:Landroid/widget/Button;

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mStartRecordIcon:Landroid/graphics/drawable/Drawable;

.field private mStopRecordIcon:Landroid/graphics/drawable/Drawable;

.field private mUnholdIcon:Landroid/graphics/drawable/Drawable;

.field private mWebExButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 81
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 91
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    .line 92
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 93
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 96
    const v0, 0x7f08008f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    .line 97
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    const v0, 0x7f080090

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    .line 99
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    const v0, 0x7f080091

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    .line 102
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    const v0, 0x7f08008a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    .line 105
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    const v0, 0x7f080093

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    .line 107
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    const v0, 0x7f080094

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    .line 109
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    const v0, 0x7f080095

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    .line 111
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    const v0, 0x7f080092

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    .line 113
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    const v0, 0x7f080098

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 115
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    const v0, 0x7f080097

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    .line 117
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    const v0, 0x7f080096

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 121
    const v0, 0x7f08008c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    .line 122
    const v0, 0x7f08008d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    .line 123
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    const v0, 0x7f08008e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    .line 127
    const v0, 0x7f08008b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    .line 137
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 138
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 148
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 151
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 153
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 156
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 423
    const-string v0, "InCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    return-void
.end method


# virtual methods
.method disableInCallControls()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 408
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mAddButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 410
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 412
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 413
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 416
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 419
    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 160
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 161
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f030023

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 165
    const-string v1, "Inflate In call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02029a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    .line 169
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a3

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020295

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 171
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020298

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 173
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a0

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mStartRecordIcon:Landroid/graphics/drawable/Drawable;

    .line 174
    invoke-virtual {p0}, Lcom/android/phone/InCallButtonsView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0202a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mStopRecordIcon:Landroid/graphics/drawable/Drawable;

    .line 176
    const v1, 0x7f080089

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    .line 178
    iget-object v1, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 179
    iput-object p1, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 180
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "view"

    .prologue
    const-string v7, ", id "

    .line 369
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 370
    .local v1, id:I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick(View "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", id "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallButtonsView;->log(Ljava/lang/String;)V

    .line 372
    sparse-switch v1, :sswitch_data_0

    .line 401
    const-string v4, "InCallButtonsView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick: unexpected click: View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    :cond_0
    :goto_0
    const v4, 0x7f08008d

    if-ne v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 405
    :cond_1
    return-void

    .line 389
    :sswitch_0
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v1}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    goto :goto_0

    .line 392
    :sswitch_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 393
    .local v0, fgCall:Lcom/android/internal/telephony/Call;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v3

    .line 394
    .local v3, phoneNumber:Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 395
    new-instance v2, Landroid/content/Intent;

    const-string v4, "android.intent.action.INSERT"

    sget-object v5, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 396
    .local v2, insertIntent:Landroid/content/Intent;
    const-string v4, "phone"

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 397
    iget-object v4, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v4, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 372
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f08008a -> :sswitch_0
        0x7f08008d -> :sswitch_0
        0x7f08008f -> :sswitch_0
        0x7f080090 -> :sswitch_0
        0x7f080091 -> :sswitch_0
        0x7f080092 -> :sswitch_0
        0x7f080093 -> :sswitch_0
        0x7f080094 -> :sswitch_0
        0x7f080095 -> :sswitch_1
        0x7f080096 -> :sswitch_0
        0x7f080097 -> :sswitch_0
        0x7f080098 -> :sswitch_0
        0x7f0800bc -> :sswitch_0
    .end sparse-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 184
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 185
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 12
    .parameter "cm"
    .parameter "orientation"

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, 0x0

    const/16 v8, 0x8

    .line 188
    iget v6, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    if-eq v6, p2, :cond_0

    .line 189
    iput p2, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    .line 190
    iget v6, p0, Lcom/android/phone/InCallButtonsView;->mOrientation:I

    if-ne v6, v11, :cond_7

    move v5, v11

    .line 192
    .local v5, isPortrait:Z
    :goto_0
    if-eqz v5, :cond_8

    .line 193
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 194
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setVisibility(I)V

    .line 195
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v6, v8}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    .line 208
    .end local v5           #isPortrait:Z
    :cond_0
    :goto_1
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v6}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    .line 209
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 210
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 211
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    .line 212
    .local v4, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 216
    .local v1, bgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v6

    if-ne v6, v11, :cond_a

    .line 218
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 222
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 235
    :goto_2
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 236
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 237
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 238
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 239
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 241
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 280
    :goto_3
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v6, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v6}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v6

    if-nez v6, :cond_10

    .line 281
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0d032d

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 282
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mStartRecordIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10, v7, v10, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 290
    :goto_4
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->dialpadEnabled:Z

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 292
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v6, :cond_11

    .line 294
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0d01b7

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 295
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10, v7, v10, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 308
    :goto_5
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v6, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v6}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 309
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v6, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v6}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 311
    :cond_1
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    if-eqz v7, :cond_12

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    sget-object v7, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v7}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v7

    if-nez v7, :cond_12

    move v7, v11

    :goto_6
    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 318
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mBluetoothButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 321
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canMute:Z

    if-eqz v7, :cond_13

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v7

    if-nez v7, :cond_13

    move v7, v11

    :goto_7
    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 323
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mMuteButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 326
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 327
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mSpeakerButton:Landroid/widget/ToggleButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v6, v7}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 330
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v7, :cond_14

    move v7, v9

    :goto_8
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 331
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->canHold:Z

    if-eqz v6, :cond_2

    .line 334
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->onHold:Z

    if-eqz v6, :cond_15

    .line 335
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mUnholdIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 336
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    const v7, 0x7f0d01b4

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 341
    :goto_9
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    invoke-virtual {v6, v11}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 346
    :cond_2
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->inCallControlState:Lcom/android/phone/InCallControlState;

    iget-boolean v6, v6, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v6, :cond_3

    .line 347
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 350
    :cond_3
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v4, v6, :cond_4

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_5

    .line 351
    :cond_4
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 353
    :cond_5
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 354
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonContainer:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getVisibility()I

    move-result v6

    if-nez v6, :cond_6

    .line 360
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mNoiseReductionView:Landroid/widget/ImageView;

    invoke-virtual {v6, v9}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 363
    :cond_6
    return-void

    .end local v0           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v1           #bgCallState:Lcom/android/internal/telephony/Call$State;
    .end local v3           #fgCall:Lcom/android/internal/telephony/Call;
    .end local v4           #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_7
    move v5, v9

    .line 190
    goto/16 :goto_0

    .line 197
    .restart local v5       #isPortrait:Z
    :cond_8
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-nez v6, :cond_9

    .line 198
    const v6, 0x7f080099

    invoke-virtual {p0, v6}, Lcom/android/phone/InCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/phone/InCallButtonsViewLand;

    iput-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    .line 199
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v6}, Lcom/android/phone/InCallButtonsViewLand;->initialize()V

    .line 201
    :cond_9
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    if-eqz v6, :cond_0

    .line 202
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-direct {p0, v6}, Lcom/android/phone/InCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 203
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 204
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mLandscape:Lcom/android/phone/InCallButtonsViewLand;

    invoke-virtual {v6, v9}, Lcom/android/phone/InCallButtonsViewLand;->setVisibility(I)V

    goto/16 :goto_1

    .line 226
    .end local v5           #isPortrait:Z
    .restart local v0       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v1       #bgCallState:Lcom/android/internal/telephony/Call$State;
    .restart local v3       #fgCall:Lcom/android/internal/telephony/Call;
    .restart local v4       #fgCallState:Lcom/android/internal/telephony/Call$State;
    :cond_a
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 227
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 232
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mWebExButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    .line 242
    :cond_b
    sget-object v6, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v4, v6, :cond_e

    .line 243
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 244
    const/4 v2, 0x0

    .line 245
    .local v2, canSaveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    if-eqz v2, :cond_c

    move v7, v8

    :goto_a
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 246
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setEnabled(Z)V

    .line 247
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    if-eqz v2, :cond_d

    move v7, v9

    :goto_b
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 249
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHDVideoButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3

    :cond_c
    move v7, v9

    .line 245
    goto :goto_a

    :cond_d
    move v7, v8

    .line 247
    goto :goto_b

    .line 251
    .end local v2           #canSaveCall:Z
    :cond_e
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v9}, Landroid/widget/Button;->setVisibility(I)V

    .line 252
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mEndButton:Landroid/widget/Button;

    invoke-virtual {v6, v11}, Landroid/widget/Button;->setEnabled(Z)V

    .line 253
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mCancelButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 254
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mInCallSaveButton:Landroid/widget/Button;

    invoke-virtual {v6, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 261
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v7}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v7

    iget-boolean v7, v7, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    if-nez v7, :cond_f

    move v7, v11

    :goto_c
    invoke-virtual {v6, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_3

    :cond_f
    move v7, v9

    goto :goto_c

    .line 285
    :cond_10
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    const v7, 0x7f0d032e

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 286
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mRecordButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mStopRecordIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10, v7, v10, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_4

    .line 299
    :cond_11
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    const v7, 0x7f0d01b6

    invoke-virtual {v6, v7}, Landroid/widget/Button;->setText(I)V

    .line 300
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mDialpadButton:Landroid/widget/Button;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v10, v7, v10, v10}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_5

    :cond_12
    move v7, v9

    .line 311
    goto/16 :goto_6

    :cond_13
    move v7, v9

    .line 321
    goto/16 :goto_7

    :cond_14
    move v7, v8

    .line 330
    goto/16 :goto_8

    .line 338
    :cond_15
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButton:Landroid/widget/ImageButton;

    iget-object v7, p0, Lcom/android/phone/InCallButtonsView;->mHoldIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 339
    iget-object v6, p0, Lcom/android/phone/InCallButtonsView;->mHoldButtonLabel:Landroid/widget/TextView;

    const v7, 0x7f0d01b3

    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    goto/16 :goto_9
.end method
