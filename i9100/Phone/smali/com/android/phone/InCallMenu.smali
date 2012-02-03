.class Lcom/android/phone/InCallMenu;
.super Ljava/lang/Object;
.source "InCallMenu.java"


# instance fields
.field mAddCall:Lcom/android/phone/InCallMenuItemView;

.field mAnswer:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

.field mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

.field mBluetooth:Lcom/android/phone/InCallMenuItemView;

.field mEndCall:Lcom/android/phone/InCallMenuItemView;

.field mHold:Lcom/android/phone/InCallMenuItemView;

.field mIgnore:Lcom/android/phone/InCallMenuItemView;

.field private mInCallMenuView:Lcom/android/phone/InCallMenuView;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field mManageConference:Lcom/android/phone/InCallMenuItemView;

.field mMergeCalls:Lcom/android/phone/InCallMenuItemView;

.field mMute:Lcom/android/phone/InCallMenuItemView;

.field mShowDialpad:Lcom/android/phone/InCallMenuItemView;

.field mSpeaker:Lcom/android/phone/InCallMenuItemView;

.field mSwapCalls:Lcom/android/phone/InCallMenuItemView;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "inCallScreen"

    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 75
    iput-object p1, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 76
    return-void
.end method


# virtual methods
.method clearInCallScreenReference()V
    .locals 1

    .prologue
    .line 83
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 84
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenuView;->clearInCallScreenReference()V

    .line 85
    :cond_0
    return-void
.end method

.method getView()Lcom/android/phone/InCallMenuView;
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    return-object v0
.end method

.method initMenu()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 107
    new-instance v2, Landroid/view/ContextThemeWrapper;

    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    const v4, 0x10300a9

    invoke-direct {v2, v3, v4}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 111
    .local v2, wrappedContext:Landroid/content/Context;
    new-instance v3, Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-direct {v3, v2, v4}, Lcom/android/phone/InCallMenuView;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    .line 117
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    .line 118
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080009

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 119
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0039

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 121
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x10801c7

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 123
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    .line 124
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000a

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 125
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d003a

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 127
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f020261

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 129
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    .line 130
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000b

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 131
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 132
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0035

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 133
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f020265

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 135
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    .line 136
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 137
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0038

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 139
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x1080033

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 141
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    .line 142
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000d

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 143
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0036

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 145
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f020273

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 147
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    .line 148
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000e

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 149
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 150
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0037

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 151
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f020267

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setIconResource(I)V

    .line 157
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    .line 158
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f08000f

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 159
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 160
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0032

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 161
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 163
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    .line 164
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080010

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 165
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0031

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 167
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 169
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    .line 170
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080011

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 171
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 172
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0033

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 173
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 175
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    .line 176
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080012

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 177
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 178
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0034

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 179
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v5}, Lcom/android/phone/InCallMenuItemView;->setIndicatorVisible(Z)V

    .line 181
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    .line 182
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080013

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 183
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d003c

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 186
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    .line 187
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080014

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 188
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d003d

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 191
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    .line 192
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080015

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 193
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0041

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 196
    new-instance v3, Lcom/android/phone/InCallMenuItemView;

    invoke-direct {v3, v2}, Lcom/android/phone/InCallMenuItemView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    .line 197
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f080016

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setId(I)V

    .line 198
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 199
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const v4, 0x7f0d0042

    invoke-virtual {v3, v4}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 217
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 220
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 221
    .local v1, phoneType:I
    if-eq v1, v5, :cond_0

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 223
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v7}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 225
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v7}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 228
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 229
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 230
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 231
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v5}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 237
    if-ne v1, v6, :cond_2

    .line 238
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 239
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 241
    :cond_2
    if-eq v1, v5, :cond_3

    invoke-static {v0}, Landroid/net/sip/SipManager;->isVoipSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 243
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 244
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 245
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 247
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 248
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 249
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    iget-object v4, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v3, v4, v6}, Lcom/android/phone/InCallMenuView;->addItemView(Lcom/android/phone/InCallMenuItemView;I)V

    .line 251
    iget-object v3, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v3}, Lcom/android/phone/InCallMenuView;->dumpState()V

    .line 252
    return-void
.end method

.method updateItems(Lcom/android/internal/telephony/CallManager;)Z
    .locals 14
    .parameter "cm"

    .prologue
    .line 271
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v11, v12, :cond_0

    .line 273
    const/4 v11, 0x0

    .line 471
    :goto_0
    return v11

    .line 276
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 277
    .local v4, hasRingingCall:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 278
    .local v2, hasActiveCall:Z
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 279
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 282
    .local v3, hasHoldingCall:Z
    if-eqz v2, :cond_4

    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->isOtaCallInActiveState()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 284
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 285
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 286
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 287
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 289
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 290
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 291
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 292
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 293
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 294
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 295
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 296
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 297
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 299
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v6

    .line 301
    .local v6, inConferenceCall:Z
    if-nez v6, :cond_1

    const/4 v11, 0x1

    move v9, v11

    .line 302
    .local v9, showShowDialpad:Z
    :goto_1
    if-eqz v9, :cond_2

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    if-eqz v11, :cond_2

    const/4 v11, 0x1

    move v0, v11

    .line 303
    .local v0, enableShowDialpad:Z
    :goto_2
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v9}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 304
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 305
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v7

    .line 306
    .local v7, isDtmfDialerOpened:Z
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    if-eqz v7, :cond_3

    const v12, 0x7f0d003b

    :goto_3
    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 310
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 311
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 313
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 314
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 315
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    invoke-static {v11}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v10

    .line 316
    .local v10, speakerOn:Z
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v10}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 318
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 319
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 301
    .end local v0           #enableShowDialpad:Z
    .end local v7           #isDtmfDialerOpened:Z
    .end local v9           #showShowDialpad:Z
    .end local v10           #speakerOn:Z
    :cond_1
    const/4 v11, 0x0

    move v9, v11

    goto :goto_1

    .line 302
    .restart local v9       #showShowDialpad:Z
    :cond_2
    const/4 v11, 0x0

    move v0, v11

    goto :goto_2

    .line 306
    .restart local v0       #enableShowDialpad:Z
    .restart local v7       #isDtmfDialerOpened:Z
    :cond_3
    const v12, 0x7f0d003a

    goto :goto_3

    .line 323
    .end local v0           #enableShowDialpad:Z
    .end local v6           #inConferenceCall:Z
    .end local v7           #isDtmfDialerOpened:Z
    .end local v9           #showShowDialpad:Z
    :cond_4
    if-eqz v4, :cond_9

    .line 328
    if-eqz v2, :cond_8

    if-nez v3, :cond_8

    .line 329
    invoke-virtual {p1}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 331
    .local v8, phoneType:I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_5

    .line 332
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 333
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 334
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 335
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 338
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 339
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 356
    :goto_4
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 357
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 358
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 359
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 360
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 361
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 362
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 363
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 364
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 369
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 371
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 340
    :cond_5
    const/4 v11, 0x1

    if-eq v8, v11, :cond_6

    const/4 v11, 0x3

    if-ne v8, v11, :cond_7

    .line 342
    :cond_6
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 343
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 344
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 345
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 348
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 349
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 351
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    goto :goto_4

    .line 353
    :cond_7
    new-instance v11, Ljava/lang/IllegalStateException;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unexpected phone type: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 375
    .end local v8           #phoneType:I
    :cond_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 384
    :cond_9
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v5

    .line 389
    .local v5, inCallControlState:Lcom/android/phone/InCallControlState;
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 390
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mManageConference:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->manageConferenceEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 402
    iget-boolean v11, v5, Lcom/android/phone/InCallControlState;->manageConferenceVisible:Z

    if-nez v11, :cond_a

    const/4 v11, 0x1

    move v9, v11

    .line 403
    .restart local v9       #showShowDialpad:Z
    :goto_5
    if-eqz v9, :cond_b

    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v11}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v11

    if-eqz v11, :cond_b

    const/4 v11, 0x1

    move v0, v11

    .line 404
    .restart local v0       #enableShowDialpad:Z
    :goto_6
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v9}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 405
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    invoke-virtual {v11, v0}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 406
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mShowDialpad:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->dialpadVisible:Z

    if-eqz v12, :cond_c

    const v12, 0x7f0d003b

    :goto_7
    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setText(I)V

    .line 414
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 415
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mEndCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 418
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 419
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAddCall:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canAddCall:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 422
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 423
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSwapCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canSwap:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 424
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 425
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMergeCalls:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canMerge:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 428
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 429
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->bluetoothEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 430
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mBluetooth:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->bluetoothIndicatorOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 435
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 436
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->speakerEnabled:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 437
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mSpeaker:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->speakerOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 442
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 443
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canMute:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 444
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mMute:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->muteIndicatorOn:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 447
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->supportsHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 448
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->onHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setIndicatorState(Z)V

    .line 449
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mHold:Lcom/android/phone/InCallMenuItemView;

    iget-boolean v12, v5, Lcom/android/phone/InCallControlState;->canHold:Z

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 454
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 455
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswer:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 456
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 457
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mIgnore:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 461
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 462
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndHold:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 463
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setVisible(Z)V

    .line 464
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mAnswerAndEnd:Lcom/android/phone/InCallMenuItemView;

    const/4 v12, 0x0

    invoke-virtual {v11, v12}, Lcom/android/phone/InCallMenuItemView;->setEnabled(Z)V

    .line 469
    iget-object v11, p0, Lcom/android/phone/InCallMenu;->mInCallMenuView:Lcom/android/phone/InCallMenuView;

    invoke-virtual {v11}, Lcom/android/phone/InCallMenuView;->updateVisibility()V

    .line 471
    const/4 v11, 0x1

    goto/16 :goto_0

    .line 402
    .end local v0           #enableShowDialpad:Z
    .end local v9           #showShowDialpad:Z
    :cond_a
    const/4 v11, 0x0

    move v9, v11

    goto/16 :goto_5

    .line 403
    .restart local v9       #showShowDialpad:Z
    :cond_b
    const/4 v11, 0x0

    move v0, v11

    goto/16 :goto_6

    .line 406
    .restart local v0       #enableShowDialpad:Z
    :cond_c
    const v12, 0x7f0d003a

    goto/16 :goto_7
.end method
