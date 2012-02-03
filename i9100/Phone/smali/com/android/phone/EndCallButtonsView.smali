.class public Lcom/android/phone/EndCallButtonsView;
.super Landroid/widget/RelativeLayout;
.source "EndCallButtonsView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mContext:Landroid/content/Context;

.field private mCreateButton:Landroid/widget/Button;

.field private mInCallScreen:Lcom/android/phone/InCallScreen;

.field private mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

.field private mOrientation:I

.field private mPortrait:Landroid/view/View;

.field private mSaveButtonFrame:Landroid/view/View;

.field private mSendMsgButton:Landroid/widget/Button;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mUpdateButton:Landroid/widget/Button;

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVoiceCallButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 64
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    .line 65
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    .line 66
    return-void
.end method

.method private linkControls(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 69
    const v0, 0x7f08007f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    .line 70
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    const v0, 0x7f080080

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    .line 72
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    const v0, 0x7f080081

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    .line 74
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    const v0, 0x7f08007d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    .line 76
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    const v0, 0x7f08007e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    .line 78
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    const v0, 0x7f08007c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    .line 82
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 83
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 85
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 86
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 87
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 88
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 89
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 284
    const-string v0, "EndCallButtonsView"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void
.end method


# virtual methods
.method public disableAllButton()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 193
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 195
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 196
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 198
    return-void
.end method

.method initialize(Lcom/android/phone/InCallScreen;)V
    .locals 3
    .parameter "inCallScreen"

    .prologue
    .line 93
    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 94
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v1, 0x7f03001e

    const/4 v2, 0x1

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 98
    const-string v1, "Inflate End call buttons view (portrait)"

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 99
    const v1, 0x7f08007b

    invoke-virtual {p0, v1}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    .line 100
    iget-object v1, p0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    invoke-direct {p0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 101
    iput-object p1, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    .line 102
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 11
    .parameter "view"

    .prologue
    const/4 v7, 0x0

    const-string v10, "tel"

    const-string v9, "phone"

    const-string v8, ", id "

    .line 204
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 205
    .local v1, id:I
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick(View "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", id "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 206
    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 207
    .local v0, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_0

    .line 209
    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 211
    :cond_0
    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    invoke-static {v5, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v4

    .line 212
    .local v4, phoneNumber:Ljava/lang/String;
    packed-switch v1, :pswitch_data_0

    .line 277
    const-string v5, "EndCallButtonsView"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "onClick: unexpected click: View "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", id "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    :cond_1
    :goto_0
    return-void

    .line 214
    :pswitch_0
    if-eqz v4, :cond_1

    .line 215
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 216
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.CALL"

    const-string v6, "tel"

    invoke-static {v10, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 217
    .local v3, intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 224
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_1
    if-eqz v4, :cond_1

    .line 225
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 226
    new-instance v3, Landroid/content/Intent;

    const-string v5, "com.android.phone.videocall"

    const-string v6, "tel"

    invoke-static {v10, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 228
    .restart local v3       #intent:Landroid/content/Intent;
    const/high16 v5, 0x1000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 229
    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 234
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_2
    if-eqz v4, :cond_1

    .line 235
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 236
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.SENDTO"

    const-string v6, "sms"

    invoke-static {v6, v4, v7}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 237
    .restart local v3       #intent:Landroid/content/Intent;
    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 241
    .end local v3           #intent:Landroid/content/Intent;
    :pswitch_3
    if-eqz v4, :cond_1

    .line 242
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 251
    new-instance v2, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT"

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v2, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 252
    .local v2, insertIntent:Landroid/content/Intent;
    const-string v5, "phone"

    invoke-virtual {v2, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 253
    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v2}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 257
    .end local v2           #insertIntent:Landroid/content/Intent;
    :pswitch_4
    if-eqz v4, :cond_1

    .line 258
    invoke-virtual {p0}, Lcom/android/phone/EndCallButtonsView;->disableAllButton()V

    .line 260
    new-instance v3, Landroid/content/Intent;

    const-string v5, "android.intent.action.INSERT_OR_EDIT"

    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v3, v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 261
    .restart local v3       #intent:Landroid/content/Intent;
    const-string v5, "phone"

    invoke-virtual {v3, v9, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 262
    const-string v5, "phone_type"

    const/4 v6, 0x2

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 264
    const-string v5, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    iget-object v5, p0, Lcom/android/phone/EndCallButtonsView;->mInCallScreen:Lcom/android/phone/InCallScreen;

    invoke-virtual {v5, v3}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 212
    :pswitch_data_0
    .packed-switch 0x7f08007d
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 106
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 107
    return-void
.end method

.method updateState(Lcom/android/internal/telephony/CallManager;I)V
    .locals 19
    .parameter "cm"
    .parameter "orientation"

    .prologue
    .line 110
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCreateButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 111
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mUpdateButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 113
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move/from16 v16, v0

    move/from16 v0, v16

    move/from16 v1, p2

    if-eq v0, v1, :cond_0

    .line 114
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    .line 115
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/phone/EndCallButtonsView;->mOrientation:I

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    const/16 v16, 0x1

    move/from16 v11, v16

    .line 117
    .local v11, isPortrait:Z
    :goto_0
    if-eqz v11, :cond_4

    .line 118
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 119
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 120
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/EndCallButtonsViewLand;->setVisibility(I)V

    .line 134
    .end local v11           #isPortrait:Z
    .end local p2
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 135
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 136
    .local v3, call:Lcom/android/internal/telephony/Call;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v16

    sget-object v17, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 138
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 140
    :cond_1
    const/4 v8, 0x0

    .line 141
    .local v8, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v14

    .line 142
    .local v14, phoneType:I
    const/16 v16, 0x2

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_6

    .line 143
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    .line 150
    :goto_2
    if-eqz v8, :cond_13

    .line 151
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v10

    .line 152
    .local v10, isEmergencyCall:Z
    if-nez v10, :cond_9

    const/16 v16, 0x1

    move/from16 v7, v16

    .line 153
    .local v7, canVoiceCall:Z
    :goto_3
    if-nez v10, :cond_a

    const/16 v16, 0x1

    move/from16 v6, v16

    .line 154
    .local v6, canVideoCall:Z
    :goto_4
    if-nez v10, :cond_b

    const/16 v16, 0x1

    move/from16 v5, v16

    .line 155
    .local v5, canSendMsgButton:Z
    :goto_5
    const/4 v4, 0x0

    .line 156
    .local v4, canSaveCall:Z
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v15

    .line 158
    .local v15, presentation:I
    const-string v2, "20"

    .line 159
    .local v2, LOCK_PCW_ENABLED:Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v16

    const-string v17, "lock_pcw_enabled"

    invoke-static/range {v16 .. v17}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 163
    .local v12, lockPcwState:Ljava/lang/String;
    if-eqz v12, :cond_c

    const-string v16, "20"

    move-object v0, v12

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 164
    const-string v16, "EndCallButtonsView : LOCK_PCW_ENABLED"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    .line 165
    const/4 v7, 0x0

    .line 166
    const/4 v6, 0x0

    .line 167
    const/4 v5, 0x0

    .line 182
    :cond_2
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVoiceCallButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-eqz v7, :cond_f

    const/16 v17, 0x1

    :goto_7
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-eqz v6, :cond_10

    const/16 v17, 0x1

    :goto_8
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 184
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSendMsgButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    if-eqz v5, :cond_11

    const/16 v17, 0x1

    :goto_9
    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setEnabled(Z)V

    .line 185
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mSaveButtonFrame:Landroid/view/View;

    move-object/from16 v16, v0

    if-eqz v4, :cond_12

    const/16 v17, 0x0

    :goto_a
    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    .line 186
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mVideoCallButton:Landroid/widget/Button;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Landroid/widget/Button;->setVisibility(I)V

    .line 190
    .end local v2           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v4           #canSaveCall:Z
    .end local v5           #canSendMsgButton:Z
    .end local v6           #canVideoCall:Z
    .end local v7           #canVoiceCall:Z
    .end local v10           #isEmergencyCall:Z
    .end local v12           #lockPcwState:Ljava/lang/String;
    .end local v15           #presentation:I
    :goto_b
    return-void

    .line 115
    .end local v3           #call:Lcom/android/internal/telephony/Call;
    .end local v8           #conn:Lcom/android/internal/telephony/Connection;
    .end local v14           #phoneType:I
    .restart local p2
    :cond_3
    const/16 v16, 0x0

    move/from16 v11, v16

    goto/16 :goto_0

    .line 123
    .restart local v11       #isPortrait:Z
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v16, v0

    if-nez v16, :cond_5

    .line 124
    const v16, 0x7f080082

    move-object/from16 v0, p0

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/phone/EndCallButtonsView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    .end local p2
    check-cast p2, Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    .line 125
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v16, v0

    if-eqz v16, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Lcom/android/phone/EndCallButtonsViewLand;->initialize()V

    .line 127
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v16, v0

    if-eqz v16, :cond_0

    .line 128
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v16, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->linkControls(Landroid/view/View;)V

    .line 129
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mLandscape:Lcom/android/phone/EndCallButtonsViewLand;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Lcom/android/phone/EndCallButtonsViewLand;->setVisibility(I)V

    .line 130
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/EndCallButtonsView;->mPortrait:Landroid/view/View;

    move-object/from16 v16, v0

    const/16 v17, 0x8

    invoke-virtual/range {v16 .. v17}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 144
    .end local v11           #isPortrait:Z
    .restart local v3       #call:Lcom/android/internal/telephony/Call;
    .restart local v8       #conn:Lcom/android/internal/telephony/Connection;
    .restart local v14       #phoneType:I
    :cond_6
    const/16 v16, 0x1

    move v0, v14

    move/from16 v1, v16

    if-eq v0, v1, :cond_7

    const/16 v16, 0x3

    move v0, v14

    move/from16 v1, v16

    if-ne v0, v1, :cond_8

    .line 146
    :cond_7
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v8

    goto/16 :goto_2

    .line 148
    :cond_8
    new-instance v16, Ljava/lang/IllegalStateException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Unexpected phone type: isContactExist: "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move v1, v14

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 152
    .restart local v10       #isEmergencyCall:Z
    :cond_9
    const/16 v16, 0x0

    move/from16 v7, v16

    goto/16 :goto_3

    .line 153
    .restart local v7       #canVoiceCall:Z
    :cond_a
    const/16 v16, 0x0

    move/from16 v6, v16

    goto/16 :goto_4

    .line 154
    .restart local v6       #canVideoCall:Z
    :cond_b
    const/16 v16, 0x0

    move/from16 v5, v16

    goto/16 :goto_5

    .line 169
    .restart local v2       #LOCK_PCW_ENABLED:Ljava/lang/String;
    .restart local v4       #canSaveCall:Z
    .restart local v5       #canSendMsgButton:Z
    .restart local v12       #lockPcwState:Ljava/lang/String;
    .restart local v15       #presentation:I
    :cond_c
    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    sget v16, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    .line 171
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v13

    .line 172
    .local v13, o:Ljava/lang/Object;
    move-object v0, v13

    instance-of v0, v0, Lcom/android/internal/telephony/CallerInfo;

    move/from16 v16, v0

    if-eqz v16, :cond_2

    .line 173
    move-object v0, v13

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object v9, v0

    .line 174
    .local v9, info:Lcom/android/internal/telephony/CallerInfo;
    if-nez v10, :cond_d

    move-object v0, v9

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    move/from16 v16, v0

    if-nez v16, :cond_d

    const/16 v16, 0x1

    move/from16 v4, v16

    :goto_c
    goto/16 :goto_6

    :cond_d
    const/16 v16, 0x0

    move/from16 v4, v16

    goto :goto_c

    .line 177
    .end local v9           #info:Lcom/android/internal/telephony/CallerInfo;
    .end local v13           #o:Ljava/lang/Object;
    :cond_e
    const/4 v7, 0x0

    .line 178
    const/4 v6, 0x0

    .line 179
    const/4 v5, 0x0

    goto/16 :goto_6

    .line 182
    :cond_f
    const/16 v17, 0x0

    goto/16 :goto_7

    .line 183
    :cond_10
    const/16 v17, 0x0

    goto/16 :goto_8

    .line 184
    :cond_11
    const/16 v17, 0x0

    goto/16 :goto_9

    .line 185
    :cond_12
    const/16 v17, 0x4

    goto/16 :goto_a

    .line 188
    .end local v2           #LOCK_PCW_ENABLED:Ljava/lang/String;
    .end local v4           #canSaveCall:Z
    .end local v5           #canSendMsgButton:Z
    .end local v6           #canVideoCall:Z
    .end local v7           #canVoiceCall:Z
    .end local v10           #isEmergencyCall:Z
    .end local v12           #lockPcwState:Ljava/lang/String;
    .end local v15           #presentation:I
    :cond_13
    const-string v16, "EndCallButtonsView : connection is NullPointer at updateState"

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Lcom/android/phone/EndCallButtonsView;->log(Ljava/lang/String;)V

    goto/16 :goto_b
.end method
