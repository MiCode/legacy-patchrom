.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$31;,
        Lcom/android/phone/InCallScreen$InCallInitStatus;,
        Lcom/android/phone/InCallScreen$InCallScreenMode;
    }
.end annotation


# static fields
.field private static final DBG:Z

.field public static liveshare_option:Z

.field public static mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;


# instance fields
.field final RTS_CS:I

.field final RTS_IDLE:I

.field final RTS_PS:I

.field final RTS_STATUS:I

.field final RTS_TOKEN:Ljava/lang/String;

.field final RTS_TOKEN_CS:Ljava/lang/String;

.field final RTS_TOKEN_IDLE:Ljava/lang/String;

.field final RTS_TOKEN_PS:Ljava/lang/String;

.field final RTS_TOKEN_STATUS:Ljava/lang/String;

.field final RTS_VALUES_COUNT:I

.field final RTS_VALUE_LOC:I

.field private disconnectedCallName:Ljava/lang/String;

.field private final disconnectedDuringWaitingCallDialog:I

.field private mAnswerCallAfterThisDisconnect:I

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field mCurrentCallNumber:Ljava/lang/String;

.field private final mDefaultIMEI:Ljava/lang/String;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field mDockReceiver:Landroid/content/BroadcastReceiver;

.field private mEmailList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mExitingECMDialog:Landroid/app/AlertDialog;

.field private mFlagWaitingCallDialog:I

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mInCallControlState:Lcom/android/phone/InCallControlState;

.field private mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private mInCallMenu:Lcom/android/phone/InCallMenu;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field public mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsStartActivitiy:Z

.field private mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mNeedShowCallLostDialog:Z

.field private mOrientation:I

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPreviousCallState:Lcom/android/internal/telephony/Call$State;

.field private mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderGatewayUri:Landroid/net/Uri;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRegisteredForPhoneStates:Z

.field private final mSKTReceiver:Landroid/content/BroadcastReceiver;

.field private mSlidingDrawerTouchID:I

.field private mSlidingTabTouchID:I

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mTouchLockFadeIn:Landroid/view/animation/Animation;

.field private mTouchLockIcon:Landroid/view/View;

.field private mTouchLockLastTouchTime:J

.field private mTouchLockOverlay:Landroid/view/View;

.field private mUseTouchLockOverlay:Z

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWaitingCallDialog:Landroid/app/AlertDialog;

.field private mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;

.field private mduringCallTransfer:Z

.field private final noneWaitingCallDialog:I

.field public otaUtils:Lcom/android/phone/OtaUtils;

.field private final showWaitingCallDialog:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 122
    const-string v0, "ro.debuggable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_0

    move v0, v2

    :goto_0
    sput-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    .line 232
    sput-boolean v1, Lcom/android/phone/InCallScreen;->liveshare_option:Z

    return-void

    :cond_0
    move v0, v1

    .line 122
    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 118
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 242
    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mCurrentCallNumber:Ljava/lang/String;

    .line 244
    iput v3, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 245
    iput v3, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 249
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/phone/InCallScreen;->RTS_VALUES_COUNT:I

    .line 250
    iput v1, p0, Lcom/android/phone/InCallScreen;->RTS_STATUS:I

    .line 251
    iput v2, p0, Lcom/android/phone/InCallScreen;->RTS_IDLE:I

    .line 252
    iput v4, p0, Lcom/android/phone/InCallScreen;->RTS_CS:I

    .line 253
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InCallScreen;->RTS_PS:I

    .line 254
    const-string v0, ";"

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->RTS_TOKEN:Ljava/lang/String;

    .line 255
    const-string v0, "Status"

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->RTS_TOKEN_STATUS:Ljava/lang/String;

    .line 256
    const-string v0, "Idle"

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->RTS_TOKEN_IDLE:Ljava/lang/String;

    .line 257
    const-string v0, "CS"

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->RTS_TOKEN_CS:Ljava/lang/String;

    .line 258
    const-string v0, "PS"

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->RTS_TOKEN_PS:Ljava/lang/String;

    .line 259
    iput v2, p0, Lcom/android/phone/InCallScreen;->RTS_VALUE_LOC:I

    .line 296
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 359
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 400
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 401
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsStartActivitiy:Z

    .line 402
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 406
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 409
    const-string v0, "357858010034783"

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDefaultIMEI:Ljava/lang/String;

    .line 415
    iput v2, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 417
    iput v3, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 418
    iput v1, p0, Lcom/android/phone/InCallScreen;->noneWaitingCallDialog:I

    .line 419
    iput v2, p0, Lcom/android/phone/InCallScreen;->showWaitingCallDialog:I

    .line 420
    iput v4, p0, Lcom/android/phone/InCallScreen;->disconnectedDuringWaitingCallDialog:I

    .line 421
    iput v1, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    .line 422
    iput-object v5, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    .line 423
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mduringCallTransfer:Z

    .line 425
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 426
    sget-object v0, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    .line 430
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 671
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 695
    new-instance v0, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSKTReceiver:Landroid/content/BroadcastReceiver;

    .line 749
    new-instance v0, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDockReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const-string v6, "%s"

    .line 5213
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen: Waiting Call Dialog 1"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5215
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5217
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 5218
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5224
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5225
    new-array v2, v7, [Ljava/lang/String;

    .line 5226
    const-string v3, "%s"

    .line 5227
    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0351

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 5228
    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d0350

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    const-string v5, "%s"

    invoke-virtual {v4, v6, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    .line 5229
    new-instance v0, Lcom/android/phone/InCallScreen$26;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$26;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v1, v2, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5247
    const v0, 0x7f0d034f

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5249
    const v0, 0x7f0d0030

    new-instance v2, Lcom/android/phone/InCallScreen$27;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$27;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5255
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 5256
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/Window;->addFlags(I)V

    .line 5257
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5258
    return-void

    .line 5222
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 13

    .prologue
    .line 5262
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen: Waiting Call Dialog 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5265
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 5266
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5267
    const v2, 0x7f0d02c3

    .line 5268
    const v3, 0x7f0d02b8

    .line 5269
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5271
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 5272
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0d02be

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5273
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move v11, v3

    move v3, v2

    move v2, v11

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    .line 5288
    :goto_0
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 5289
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/String;

    .line 5290
    const-string v8, "%s"

    .line 5292
    const v8, 0x7f0d0350

    if-ne v2, v8, :cond_3

    .line 5293
    const/4 v8, 0x0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    const-string v10, "%s"

    invoke-virtual {v9, v10, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    .line 5294
    const/4 v5, 0x1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v8, "%s"

    invoke-virtual {v2, v8, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    .line 5301
    :goto_1
    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0d02bd

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v7, v2

    .line 5302
    new-instance v2, Lcom/android/phone/InCallScreen$28;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/phone/InCallScreen$28;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)V

    invoke-virtual {v6, v7, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5354
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v6, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 5356
    const v0, 0x7f0d0030

    new-instance v1, Lcom/android/phone/InCallScreen$29;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$29;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v6, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 5361
    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 5362
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5363
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5364
    return-void

    .line 5275
    :cond_1
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5277
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 5278
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 5279
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0d02bf

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move v11, v3

    move v3, v2

    move v2, v11

    move-object v12, v5

    move-object v5, v4

    move-object v4, v12

    .line 5281
    goto/16 :goto_0

    .line 5283
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 5284
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 5285
    const v4, 0x7f0d034f

    .line 5286
    const v5, 0x7f0d0350

    move v11, v5

    move-object v5, v2

    move v2, v11

    move-object v12, v3

    move v3, v4

    move-object v4, v12

    goto/16 :goto_0

    .line 5297
    :cond_3
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v7, v8

    .line 5298
    const/4 v5, 0x1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v8, " "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v5

    goto/16 :goto_1
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 118
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->touchLockTimerExpired()V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$1902(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200()Z
    .locals 1

    .prologue
    .line 118
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$2002(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/InCallScreen;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$2502(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/phone/InCallScreen;)Ljava/util/ArrayList;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2800(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showRadioOnDialog()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$3002(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3102(Lcom/android/phone/InCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    return p1
.end method

.method static synthetic access$3202(Lcom/android/phone/InCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    iput p1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 118
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 118
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    return-void
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 3957
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3958
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3959
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3961
    :cond_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "addVoiceMailNumberPanel: finishing InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3962
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3964
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "show vm setting"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3967
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3968
    .local v0, intent:Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3969
    return-void
.end method

.method private bailOutAfterErrorDialog()V
    .locals 2

    .prologue
    .line 5000
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5001
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5002
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5003
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5005
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "bailOutAfterErrorDialog(): end InCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5006
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 5013
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 5015
    :cond_3
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 3
    .parameter "state"

    .prologue
    .line 3851
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3853
    packed-switch p1, :pswitch_data_0

    .line 3899
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected ServiceState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3856
    :pswitch_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3896
    :goto_0
    return-object v0

    .line 3860
    :pswitch_1
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3871
    :pswitch_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3896
    :pswitch_3
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3853
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsOtaCall(Landroid/content/Intent;)Z
    .locals 7
    .parameter

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6628
    const-string v0, "checkIsOtaCall..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6630
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    move v0, v3

    .line 6698
    :goto_0
    return v0

    .line 6634
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v3

    .line 6635
    goto :goto_0

    .line 6638
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6640
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v1, :cond_5

    .line 6642
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "checkIsOtaCall: OtaUtils.CdmaOtaScreenState not initialized"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_4
    move v0, v3

    .line 6643
    goto :goto_0

    .line 6646
    :cond_5
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 6648
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 6649
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "checkIsOtaCall action = ACTION_SHOW_ACTIVATION"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6650
    :cond_6
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v1, :cond_8

    .line 6651
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_7

    const-string v1, "checkIsOtaCall: ACTION_SHOW_ACTIVATION is not handled before"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6652
    :cond_7
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v4, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 6653
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    :cond_8
    move v6, v4

    .line 6692
    :goto_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall: isOtaCall ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6693
    :cond_9
    if-eqz v6, :cond_b

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_b

    .line 6694
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "checkIsOtaCall: creating OtaUtils..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6695
    :cond_a
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    :cond_b
    move v0, v6

    .line 6698
    goto/16 :goto_0

    .line 6657
    :cond_c
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 6661
    :cond_d
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 6666
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1, v0}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_19

    .line 6667
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "checkIsOtaCall action ACTION_CALL, it is valid OTA number"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_e
    move v0, v4

    :goto_2
    move v6, v0

    .line 6670
    goto :goto_1

    .line 6662
    :catch_0
    move-exception v0

    .line 6663
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "Error retrieving number using the api getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_f
    move v0, v3

    .line 6664
    goto/16 :goto_0

    .line 6670
    :cond_10
    const-string v2, "android.intent.action.MAIN"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 6671
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_11

    const-string v1, "checkIsOtaCall action ACTION_MAIN"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6672
    :cond_11
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v1

    .line 6673
    if-eqz v1, :cond_13

    .line 6674
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkIsOtaCall isRingingCall: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_12
    move v0, v3

    .line 6675
    goto/16 :goto_0

    .line 6676
    :cond_13
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v1, v2, :cond_14

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_16

    .line 6680
    :cond_14
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_15

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call already in progress"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_15
    move v6, v4

    .line 6681
    goto/16 :goto_1

    .line 6683
    :cond_16
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_18

    .line 6685
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_17

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call in progress with UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_17
    move v6, v4

    .line 6687
    goto/16 :goto_1

    :cond_18
    move v6, v3

    goto/16 :goto_1

    :cond_19
    move v0, v3

    goto :goto_2
.end method

.method private clearProvider()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 6831
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 6832
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 6833
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 6834
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 6835
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 6836
    return-void
.end method

.method private createWildPromptView()Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, -0x2

    const/high16 v7, 0x4160

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v1, 0x5

    .line 3185
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3186
    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3187
    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3189
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3193
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3194
    invoke-virtual {v2, v7}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3195
    sget-object v3, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3196
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d0048

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3198
    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3200
    new-instance v1, Landroid/widget/EditText;

    invoke-direct {v1, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 3201
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 3202
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3203
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v7}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3204
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 3205
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1, v6}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 3206
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v2, 0x1080018

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3208
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {v1, v2, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3211
    const/4 v2, 0x3

    invoke-virtual {v1, v5, v2, v5, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 3213
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0, v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3215
    return-object v0
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 2

    .prologue
    .line 3997
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4009
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4011
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_4

    .line 4013
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4017
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_2

    .line 4018
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- delayedCleanupAfterDisconnect: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4035
    :cond_1
    const-string v0, "- Post-call behavior:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4036
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mLastDisconnectCause = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4037
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - isPhoneStateRestricted() = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4049
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v0, v1, :cond_2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v0

    if-nez v0, :cond_2

    .line 4064
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 4071
    :cond_3
    :goto_0
    return-void

    .line 4068
    :cond_4
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4069
    :cond_5
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto :goto_0
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5024
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5031
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5032
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5033
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5034
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 5036
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_2

    .line 5037
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5038
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5039
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 5041
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 5042
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5043
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5044
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5046
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 5047
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5048
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5049
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 5051
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 5052
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5053
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5054
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 5056
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 5057
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5058
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5059
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 5061
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_7

    .line 5062
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5063
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5064
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 5066
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_9

    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_9

    .line 5069
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 5071
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_b

    .line 5072
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5073
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5074
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 5076
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_d

    .line 5077
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5078
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5079
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 5081
    :cond_d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_e

    .line 5082
    iget v0, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_12

    .line 5084
    const-string v0, "- Don\'t DISMISSING mWaitingCallDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5092
    :cond_e
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 5093
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "- DISMISSING mWebExEmailSelectionDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5094
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5095
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    .line 5097
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_11

    .line 5098
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 5099
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 5102
    :cond_11
    return-void

    .line 5087
    :cond_12
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_13

    const-string v0, "- DISMISSING mWaitingCallDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5088
    :cond_13
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5089
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method private dismissMmiStartedDialog()V
    .locals 1

    .prologue
    .line 2995
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 2996
    const-string v0, "dismissMmiStartedDialog().."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2997
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 2998
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3000
    :cond_0
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 3972
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 3973
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3974
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3976
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "dontAddVoiceMailNumber: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3977
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3978
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 3

    .prologue
    .line 6239
    const-string v0, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAvailable: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6241
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAudioConnected: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6242
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6245
    const-string v0, "="

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6246
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_2

    .line 6247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6248
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 6249
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6250
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.getCurrentHeadset: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6251
    if-eqz v0, :cond_0

    .line 6252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6261
    :cond_0
    :goto_0
    return-void

    .line 6256
    :cond_1
    const-string v0, "= mBluetoothHeadset is null"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6259
    :cond_2
    const-string v0, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableTouchLock(Z)V
    .locals 2
    .parameter

    .prologue
    .line 6363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableTouchLock("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6364
    if-eqz p1, :cond_5

    .line 6367
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v0, :cond_1

    .line 6368
    const-string v0, "InCallScreen"

    const-string v1, "enableTouchLock: touch lock isn\'t used on this device!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6411
    :cond_0
    :goto_0
    return-void

    .line 6374
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6375
    const-string v0, "enableTouchLock: dialpad isn\'t up, no need to lock screen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6380
    :cond_2
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6381
    const-string v0, "enableTouchLock: speaker is on, no need to lock screen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6386
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-nez v0, :cond_4

    .line 6387
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initTouchLock()V

    .line 6393
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 6396
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6397
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6398
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 6409
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method private endInCallScreenSession(Z)V
    .locals 2
    .parameter

    .prologue
    .line 1659
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "endInCallScreenSession("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1660
    :cond_0
    if-eqz p1, :cond_1

    .line 1661
    const-string v0, "InCallScreen"

    const-string v1, "endInCallScreenSession(): FORCING a call to super.finish()!"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1662
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 1667
    :goto_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1668
    return-void

    .line 1665
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method private getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    .locals 3
    .parameter "intent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
        }
    .end annotation

    .prologue
    const-string v2, "android.intent.extra.PHONE_NUMBER"

    .line 3459
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3461
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3462
    const/4 v1, 0x0

    .line 3470
    :goto_0
    return-object v1

    .line 3465
    :cond_0
    if-eqz v0, :cond_1

    const-string v1, "android.intent.action.CALL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3467
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 3470
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleCallKey()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2006
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 2007
    .local v4, hasRingingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 2008
    .local v2, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 2010
    .local v3, hasHoldingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2011
    .local v5, phoneType:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    .line 2015
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2016
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v6, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 2018
    .local v1, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    if-eqz v4, :cond_2

    .line 2020
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2021
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 2081
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    :goto_0
    return v8

    .line 2023
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_4

    if-eqz v2, :cond_4

    .line 2026
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2028
    :cond_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 2029
    :cond_4
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_1

    .line 2032
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2033
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 2035
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_6
    if-eq v5, v8, :cond_7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 2037
    :cond_7
    if-eqz v4, :cond_8

    .line 2048
    const-string v6, "InCallScreen"

    const-string v7, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2054
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 2055
    :cond_8
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 2057
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_9

    const-string v6, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2058
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 2059
    :cond_a
    if-eqz v3, :cond_c

    .line 2062
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2063
    :cond_b
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 2072
    :cond_c
    const-string v6, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2076
    :cond_d
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 1909
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleDialerKeyDown: keyCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", event "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1915
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1916
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 1926
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 5

    .prologue
    .line 3904
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3906
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v0

    .line 3907
    const/16 v1, 0x6b

    iput v1, v0, Landroid/os/Message;->what:I

    .line 3909
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 3910
    const/16 v2, 0x6a

    iput v2, v1, Landroid/os/Message;->what:I

    .line 3912
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0d0049

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d004a

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d003e

    new-instance v4, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0d004b

    new-instance v4, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v4, p0, v1}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 3940
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    new-instance v2, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 3950
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3953
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3954
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 3012
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3014
    if-eqz v0, :cond_0

    .line 3015
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 3018
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handlePostOnDialChar: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", ch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3021
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 3022
    sget-object v3, Lcom/android/phone/InCallScreen$31;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v3, v1

    packed-switch v1, :pswitch_data_0

    .line 3077
    :cond_0
    :goto_0
    return-void

    .line 3024
    :pswitch_0
    if-ne v2, v4, :cond_0

    .line 3025
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3026
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v1, :cond_1

    .line 3027
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3029
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 3030
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    goto :goto_0

    .line 3040
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handlePostOnDialChars: show WAIT prompt..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3041
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v1

    .line 3042
    if-ne v2, v4, :cond_3

    .line 3043
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3044
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3045
    :cond_3
    if-ne v2, v5, :cond_4

    .line 3046
    invoke-direct {p0, v0, v1}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3047
    :cond_4
    const/4 v0, 0x3

    if-ne v2, v0, :cond_5

    .line 3048
    const-string v0, "InCallScreen"

    const-string v1, "SipPhone doesn\'t support post dial yet"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3050
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3055
    :pswitch_2
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_6

    const-string v1, "handlePostOnDialChars: show WILD prompt"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3056
    :cond_6
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 3060
    :pswitch_3
    if-ne v2, v4, :cond_0

    .line 3061
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    goto :goto_0

    .line 3066
    :pswitch_4
    if-ne v2, v4, :cond_0

    .line 3067
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 3068
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3069
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto :goto_0

    .line 3022
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0d01a4

    const v2, 0x7f0d0197

    const/4 v5, 0x0

    const/4 v3, 0x1

    const-string v4, "InCallScreen"

    .line 4633
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4635
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4639
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "handleStartupError(): update blank screen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4640
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 4641
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4642
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 4645
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 4659
    :cond_3
    sget-object v0, Lcom/android/phone/InCallScreen$31;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 4786
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError: unexpected status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4787
    invoke-direct {p0, v2, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    .line 4790
    :cond_4
    :goto_0
    return-void

    .line 4665
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 4676
    :pswitch_1
    const v0, 0x7f0d0192

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4683
    :pswitch_2
    const v0, 0x7f0d0193

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4689
    :pswitch_3
    const-string v0, "ril.pin_mode"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4690
    const-string v1, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[DOYONG]lock key : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4691
    const-string v1, "3"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 4692
    const v0, 0x7f0d0195

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4695
    :cond_5
    const v0, 0x7f0d0194

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4702
    :pswitch_4
    const-string v0, "InCallScreen"

    const-string v0, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4710
    :pswitch_5
    const v0, 0x7f0d0196

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4722
    :pswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_4

    .line 4723
    const v0, 0x7f0d0198

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 4733
    :pswitch_7
    invoke-direct {p0, v2, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 4738
    :pswitch_8
    const-string v0, "ril.simtype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4739
    const-string v1, "ril.currentplmn"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4742
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v5

    .line 4747
    :goto_1
    const/4 v2, 0x4

    if-eq v0, v2, :cond_7

    const/16 v2, 0xf

    if-eq v0, v2, :cond_7

    const/16 v2, 0x13

    if-eq v0, v2, :cond_7

    .line 4749
    const v0, 0x7f0d01a2

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 4745
    :cond_6
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    .line 4753
    :cond_7
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 4755
    invoke-direct {p0, v6, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 4760
    :cond_8
    const-string v0, "domestic"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4762
    const v0, 0x7f0d01a3

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 4767
    :cond_9
    invoke-direct {p0, v6, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 4775
    :pswitch_9
    const v0, 0x7f0d01a5

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 4781
    :pswitch_a
    const v0, 0x7f0d01a6

    invoke-direct {p0, v0, v3}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 4659
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method private initInCallScreen()V
    .locals 2

    .prologue
    .line 1868
    const-string v0, "initInCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1871
    const v0, 0x7f030025

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 1874
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1879
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 1881
    const v0, 0x7f08009b

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 1882
    const v0, 0x7f08009c

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 1885
    const v0, 0x7f08009d

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/CallCard;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 1886
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  - mCallCard = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1887
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1890
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallTouchUi()V

    .line 1893
    new-instance v0, Lcom/android/phone/InCallControlState;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v0, p0, v1}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    .line 1897
    return-void
.end method

.method private initInCallTouchUi()V
    .locals 1

    .prologue
    .line 5919
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "initInCallTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5924
    :cond_0
    const v0, 0x7f0800a1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/InCallTouchUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    .line 5925
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 5926
    return-void
.end method

.method private initOtaState()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6715
    const/4 v2, 0x0

    .line 6717
    .local v2, inOtaCall:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 6718
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6720
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_0

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v3, :cond_2

    .line 6721
    :cond_0
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "initOtaState func - All CdmaOTA utility classes not initialized"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_1
    move v3, v4

    .line 6750
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :goto_0
    return v3

    .line 6725
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    move-result v2

    .line 6726
    if-eqz v2, :cond_b

    .line 6727
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    .line 6729
    .local v1, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_5

    .line 6730
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "initOtaState - in OTA Normal mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6731
    :cond_3
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_4
    :goto_1
    move v3, v2

    .line 6750
    goto :goto_0

    .line 6732
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_5
    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v3, :cond_7

    .line 6734
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "initOtaState - in OTA END mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6735
    :cond_6
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 6736
    :cond_7
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_9

    .line 6738
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "initOtaState - set OTA END Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6739
    :cond_8
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 6741
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_a

    const-string v3, "initOtaState - Set OTA NORMAL Mode"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6742
    :cond_a
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 6745
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_b
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_4

    .line 6746
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v4}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    goto :goto_1
.end method

.method private initTouchLock()V
    .locals 2

    .prologue
    const-string v1, "InCallScreen"

    .line 6315
    const-string v0, "initTouchLock()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6316
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 6317
    const-string v0, "InCallScreen"

    const-string v0, "initTouchLock: already initialized!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6337
    :goto_0
    return-void

    .line 6321
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v0, :cond_1

    .line 6322
    const-string v0, "InCallScreen"

    const-string v0, "initTouchLock: touch lock isn\'t used on this device!"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 6326
    :cond_1
    const v0, 0x7f08009f

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    .line 6328
    const v0, 0x7f0800a0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    .line 6333
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6334
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 6336
    const v0, 0x7f040002

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockFadeIn:Landroid/view/animation/Animation;

    goto :goto_0
.end method

.method private internalSwapCalls()V
    .locals 3

    .prologue
    .line 5475
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "internalSwapCalls()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5480
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 5487
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 5492
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 5495
    sget-object v1, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 5496
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "switchHoldingAndActive - stop recording"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5497
    :cond_1
    sget-object v1, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 5503
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 5504
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 5505
    .local v0, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_3

    .line 5506
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    .line 5510
    .end local v0           #bthf:Lcom/android/phone/BluetoothHandsfree;
    :cond_3
    return-void
.end method

.method private isTouchLocked()Z
    .locals 1

    .prologue
    .line 6340
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 6944
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6945
    return-void
.end method

.method private okToDialDTMFTones()Z
    .locals 5

    .prologue
    .line 5877
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 5878
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 5889
    sget-object v2, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v2, :cond_0

    sget-object v2, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v2, :cond_1

    :cond_0
    if-nez v0, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v2, v3, :cond_1

    const/4 v2, 0x1

    .line 5894
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", ringing state: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", call screen mode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", result: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5899
    return v2

    .line 5889
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onBluetoothClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4312
    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4314
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4316
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4322
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 4349
    :cond_0
    :goto_0
    return-void

    .line 4330
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4331
    const/4 v0, 0x0

    invoke-static {p0, v0, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4334
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 4338
    :cond_3
    const-string v0, "ram"

    const-string v1, "encryption.bootmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4342
    const-string v0, "InCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4343
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4344
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4345
    const-string v1, "android.bluetooth.devicepicker.extra.FILTER_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4346
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4347
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 14
    .parameter

    .prologue
    const/4 v12, 0x2

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v13, "InCallScreen"

    .line 2570
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 2571
    if-nez v0, :cond_1

    .line 2572
    const-string v0, "onDisconnect : connection is null"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2931
    :cond_0
    :goto_0
    return-void

    .line 2575
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 2576
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onDisconnect: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", cause="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2580
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 2582
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2583
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDisconnect : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2593
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_4

    move v4, v10

    .line 2595
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v12, :cond_5

    move v1, v10

    .line 2596
    :goto_2
    if-eqz v1, :cond_27

    .line 2599
    if-eqz v4, :cond_27

    .line 2600
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "call_auto_retry"

    invoke-static {v5, v6, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 2606
    :goto_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    .line 2607
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v7, v8, :cond_6

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v7, :cond_6

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v7, :cond_6

    .line 2610
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2611
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto/16 :goto_0

    :cond_4
    move v4, v9

    .line 2593
    goto :goto_1

    :cond_5
    move v1, v9

    .line 2595
    goto :goto_2

    .line 2613
    :cond_6
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v7, v8, :cond_7

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v7, :cond_8

    iget-object v7, v6, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v7, v7, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-eqz v7, :cond_8

    .line 2615
    :cond_7
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 2622
    :cond_8
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 2627
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v7, :cond_9

    .line 2628
    const v0, 0x7f0d001b

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2630
    :cond_9
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v7, :cond_a

    .line 2631
    const v0, 0x7f0d001a

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2633
    :cond_a
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v7, :cond_b

    .line 2634
    const v0, 0x7f0d001c

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2636
    :cond_b
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v7, :cond_c

    .line 2637
    const v0, 0x7f0d001d

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2639
    :cond_c
    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v7, :cond_d

    .line 2640
    const v0, 0x7f0d001e

    invoke-direct {p0, v0, v9}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 2649
    :cond_d
    if-eqz v1, :cond_e

    .line 2650
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 2651
    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_16

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_16

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_16

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_16

    sget-object v7, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v7, :cond_16

    .line 2656
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2690
    :cond_e
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2691
    if-eqz v1, :cond_11

    .line 2700
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 2701
    if-eqz v1, :cond_10

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v10, :cond_10

    .line 2702
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 2703
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_f

    .line 2712
    const-string v1, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2713
    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 2720
    :cond_10
    iget v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    if-lez v1, :cond_11

    .line 2721
    iget v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    sub-int/2addr v1, v10

    iput v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 2723
    iget v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    if-nez v1, :cond_11

    .line 2724
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/InCallScreen;->mAnswerCallAfterThisDisconnect:I

    .line 2725
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 2732
    :cond_11
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2733
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_13

    sget-object v1, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 2734
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_12

    const-string v1, "call disconnected, so stop recording."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2735
    :cond_12
    sget-object v1, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v1}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 2740
    :cond_13
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v5, "emergency_call_retry_count"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 2760
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 2766
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_14

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_14

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_1a

    if-lez v1, :cond_1a

    :cond_14
    if-eqz v4, :cond_1a

    move v5, v10

    .line 2774
    :goto_5
    if-eqz v5, :cond_1b

    .line 2775
    const-string v4, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2781
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 2788
    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v4, :cond_15

    if-lez v1, :cond_15

    .line 2790
    const-string v2, "InCallScreen"

    const-string v2, "onDisconnect: OUT_OF_SERVICE; need to retry emergency call!"

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2791
    const-string v2, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- emergencyCallRetryCount = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v13, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2803
    const-class v1, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 2805
    const-string v2, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- launching: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2806
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 2921
    :cond_15
    :goto_6
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mduringCallTransfer:Z

    .line 2924
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x74

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 2926
    iget v1, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    if-ne v1, v10, :cond_0

    .line 2927
    iput v12, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    .line 2928
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    .line 2929
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto/16 :goto_0

    .line 2657
    :cond_16
    sget-object v7, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v7, :cond_17

    sget-object v7, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v7, :cond_e

    :cond_17
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_e

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_e

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_e

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_e

    .line 2663
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_18

    .line 2665
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2666
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2668
    :cond_18
    if-nez v5, :cond_19

    .line 2670
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showCallLostDialog()V

    .line 2671
    iput-boolean v9, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    .line 2675
    :cond_19
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_4

    :cond_1a
    move v5, v9

    .line 2766
    goto/16 :goto_5

    .line 2820
    :cond_1b
    const-string v1, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2822
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v9}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2829
    :cond_1c
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 2834
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2838
    if-eqz v4, :cond_1e

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v1

    if-nez v1, :cond_1d

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 2840
    :cond_1d
    const-string v1, "- onDisconnect: switching to \'Call ended\' state..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2841
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2847
    :cond_1e
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 2848
    if-nez v1, :cond_22

    .line 2849
    const-string v1, "- onDisconnect: cleaning up after FG call disconnect..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2853
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1f

    .line 2854
    const-string v1, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2855
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2856
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 2858
    :cond_1f
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_20

    .line 2859
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2860
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2861
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 2863
    :cond_20
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_22

    .line 2864
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_21

    const-string v1, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2865
    :cond_21
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2866
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 2879
    :cond_22
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_23

    .line 2880
    const-string v1, "- DISMISSING mWaitingCallDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2881
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2882
    iput-object v11, p0, Lcom/android/phone/InCallScreen;->mWaitingCallDialog:Landroid/app/AlertDialog;

    .line 2895
    :cond_23
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v12, :cond_25

    .line 2896
    if-nez v4, :cond_25

    .line 2900
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 2904
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_24

    const-string v0, "onDisconnect: Call Collision case - staying on InCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2905
    :cond_24
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto/16 :goto_0

    .line 2914
    :cond_25
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v1, :cond_26

    const/16 v1, 0x1194

    .line 2917
    :goto_7
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 2918
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    int-to-long v4, v1

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_6

    .line 2914
    :cond_26
    const/16 v1, 0x1194

    goto :goto_7

    :cond_27
    move v5, v9

    goto/16 :goto_3
.end method

.method private onHoldClick()V
    .locals 4

    .prologue
    .line 4238
    const-string v0, "onHoldClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4240
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4241
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 4242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- hasActiveCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", hasHoldingCall = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4246
    if-eqz v0, :cond_1

    if-nez v1, :cond_1

    .line 4248
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    .line 4268
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4269
    return-void

    .line 4251
    :cond_1
    if-nez v0, :cond_0

    if-eqz v1, :cond_0

    .line 4253
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0
.end method

.method private onMMICancel()V
    .locals 2

    .prologue
    .line 2970
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2973
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 2984
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMMICancel: finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2985
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissMmiStartedDialog()V

    .line 2987
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2988
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onMMICancel, but Call exist..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2992
    :cond_1
    :goto_0
    return-void

    .line 2991
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto :goto_0
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter

    .prologue
    .line 2937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2944
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 2945
    const-string v0, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2961
    :goto_0
    return-void

    .line 2953
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 2955
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 2956
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - MmiCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2958
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 2959
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 3

    .prologue
    .line 4304
    const-string v1, "onMuteClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4306
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_0

    .line 4309
    :goto_0
    return-void

    .line 4307
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 4308
    .local v0, newMuteState:Z
    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_0

    .line 4307
    .end local v0           #newMuteState:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_1
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    const/4 v3, -0x1

    .line 2491
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPhoneStateChanged()... InCallScreenMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2492
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2493
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onPhoneStateChanged : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2551
    :cond_0
    :goto_0
    return-void

    .line 2499
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_6

    .line 2501
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "onPhoneStateChanged: Activity not in foreground! But update screen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2505
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 2506
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 2507
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 2524
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2537
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-eq v1, v2, :cond_4

    .line 2539
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mPreviousCallState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " currentState : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2540
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2541
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 2544
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    .line 2545
    iput v3, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2546
    iput v3, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 2549
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 2550
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousPhoneState:Lcom/android/internal/telephony/Phone$State;

    goto/16 :goto_0

    .line 2509
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_7

    .line 2510
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_9

    const/4 v0, 0x1

    .line 2511
    :goto_2
    if-eqz v0, :cond_7

    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2514
    :cond_7
    iget v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_8

    .line 2515
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setOrientation(I)V

    .line 2517
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2521
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto/16 :goto_1

    :cond_9
    move v0, v4

    .line 2510
    goto :goto_2
.end method

.method private onShowHideDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 4352
    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4353
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4354
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4358
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 4359
    return-void

    .line 4356
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0
.end method

.method private onSpeakerClick()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 4272
    const-string v1, "onSpeakerClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4278
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    move v0, v3

    .line 4279
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4283
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 4285
    :cond_0
    invoke-static {p0, v0, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 4287
    if-eqz v0, :cond_3

    .line 4289
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 4298
    :cond_1
    :goto_1
    return-void

    .end local v0           #newSpeakerState:Z
    :cond_2
    move v0, v2

    .line 4278
    goto :goto_0

    .line 4294
    .restart local v0       #newSpeakerState:Z
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4295
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    goto :goto_1
.end method

.method private onWebExClick()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v2, 0x0

    .line 4362
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v7

    .line 4364
    .local v7, conn:Lcom/android/internal/telephony/Connection;
    if-eqz v7, :cond_2

    .line 4365
    invoke-static {p0, v7}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v6

    .line 4366
    .local v6, ci:Lcom/android/internal/telephony/CallerInfo;
    if-eqz v6, :cond_5

    .line 4367
    iget-boolean v0, v6, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-ne v0, v10, :cond_5

    .line 4368
    sget-object v1, Landroid/provider/ContactsContract$CommonDataKinds$Email;->CONTENT_URI:Landroid/net/Uri;

    .line 4369
    .local v1, EMAIL_URI:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "contact_id = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v6, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .line 4371
    .local v8, cursor:Landroid/database/Cursor;
    if-eqz v8, :cond_5

    .line 4372
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 4373
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4375
    :cond_0
    const-string v0, "data1"

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v8, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 4376
    .local v9, email:Ljava/lang/String;
    if-eqz v9, :cond_1

    .line 4377
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4379
    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 4380
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4382
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v10, :cond_3

    .line 4383
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showEmailSelectDialog()V

    .line 4395
    .end local v1           #EMAIL_URI:Landroid/net/Uri;
    .end local v6           #ci:Lcom/android/internal/telephony/CallerInfo;
    .end local v8           #cursor:Landroid/database/Cursor;
    .end local v9           #email:Ljava/lang/String;
    :cond_2
    :goto_0
    return-void

    .line 4385
    .restart local v1       #EMAIL_URI:Landroid/net/Uri;
    .restart local v6       #ci:Lcom/android/internal/telephony/CallerInfo;
    .restart local v8       #cursor:Landroid/database/Cursor;
    .restart local v9       #email:Ljava/lang/String;
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    goto :goto_0

    .line 4389
    .end local v9           #email:Ljava/lang/String;
    :cond_4
    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    .line 4393
    .end local v1           #EMAIL_URI:Landroid/net/Uri;
    .end local v8           #cursor:Landroid/database/Cursor;
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->startWebExActivity(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 1905
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 11
    .parameter

    .prologue
    const/4 v10, 0x2

    const/4 v8, 0x0

    const-string v9, "\'."

    const-string v7, "InCallScreen"

    .line 3482
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()...  intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3523
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    .line 3527
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 3535
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 3536
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    .line 3537
    :goto_0
    const-string v3, "android.phone.extra.SIP_PHONE_URI"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3539
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v4, v2, v1, v3}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 3540
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- got Phone instance: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", class = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3543
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v3

    invoke-virtual {v3}, Landroid/telephony/ServiceState;->getState()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 3558
    if-nez v1, :cond_5

    .line 3559
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3560
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3834
    :cond_1
    :goto_1
    return-object v0

    .line 3536
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 3545
    :catch_0
    move-exception v1

    .line 3550
    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v1, :cond_3

    .line 3551
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3554
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3555
    :cond_4
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 3564
    :cond_5
    const-string v3, "ipcall"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 3568
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->setIpCallNum(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3572
    :cond_6
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v3

    .line 3573
    const-string v4, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 3591
    const-string v5, "ril.IMEI"

    const-string v6, "Default"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 3592
    const-string v5, "gsm.sim.operator.numeric"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 3593
    const-string v5, "ril.simtype"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 3629
    if-eqz v3, :cond_7

    if-nez v4, :cond_7

    .line 3630
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Non-CALL_EMERGENCY Intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attempted to call emergency number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3633
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_1

    .line 3634
    :cond_7
    if-nez v3, :cond_8

    if-eqz v4, :cond_8

    .line 3635
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Received CALL_EMERGENCY Intent "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " with non-emergency number "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -- failing call."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3638
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3649
    :cond_8
    if-eqz v3, :cond_b

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v5, :cond_9

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v5, :cond_b

    .line 3652
    :cond_9
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_a

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "placeCall: Emergency number detected with status = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3672
    :cond_a
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3674
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_b

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "==> UPDATING status to: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3677
    :cond_b
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v5, :cond_d

    .line 3683
    if-eqz v3, :cond_1

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v1, :cond_1

    .line 3684
    const-string v0, "InCallScreen"

    const-string v0, "placeCall: Trying to make emergency call while POWER_OFF!"

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3685
    const-string v0, "InCallScreen"

    const-string v0, "- starting EmergencyCallHandler, finishing InCallScreen..."

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3686
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3687
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "placeCall: starting EmergencyCallHandler, finishing InCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3688
    :cond_c
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 3689
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3704
    :cond_d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3706
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    if-ne v5, v10, :cond_f

    invoke-interface {v2, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 3707
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_e

    const-string v5, "placeCall: isOtaSpNumber() returns true"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3708
    :cond_e
    sget-object v5, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3709
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v5, :cond_f

    .line 3710
    iget-object v5, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v8, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 3735
    :cond_f
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mNeedShowCallLostDialog:Z

    .line 3742
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v5

    .line 3744
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v6, :cond_10

    if-nez v3, :cond_10

    if-nez v4, :cond_10

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 3748
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {p0, v2, v1, v5, v4}, Lcom/android/phone/PhoneUtils;->placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v4

    .line 3754
    :goto_2
    packed-switch v4, :pswitch_data_0

    .line 3832
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: unknown callStatus "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3834
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3751
    :cond_10
    invoke-static {v2, v1, v5}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v4

    goto :goto_2

    .line 3756
    :pswitch_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\'."

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3759
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v4, :cond_11

    .line 3760
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v4, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 3762
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3769
    :cond_11
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 3781
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3788
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isPhoneInEcm(Lcom/android/internal/telephony/Phone;)Z

    move-result v1

    if-eqz v1, :cond_12

    if-nez v3, :cond_12

    .line 3789
    const-string v1, "InCallScreen"

    const-string v1, "About to exit ECM because of an outgoing non-emergency call"

    invoke-static {v7, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->showExitingECMDialog()V

    .line 3793
    :cond_12
    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    if-ne v1, v10, :cond_13

    .line 3795
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v1}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_13

    .line 3798
    invoke-static {v8}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 3801
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x74

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3802
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3805
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 3808
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3812
    :cond_13
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3814
    :pswitch_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_14

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3824
    :cond_14
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3826
    :pswitch_2
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3830
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_1

    .line 3754
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1683
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 1684
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1685
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1686
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1692
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1693
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1694
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1695
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1696
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1697
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1699
    :cond_0
    return-void
.end method

.method private resetTouchLockTimer()V
    .locals 5

    .prologue
    const/16 v4, 0x71

    .line 6425
    const-string v1, "resetTouchLockTimer()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6429
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    if-nez v1, :cond_1

    .line 6447
    :cond_0
    :goto_0
    return-void

    .line 6431
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 6432
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v1

    if-nez v1, :cond_0

    .line 6441
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "short_keylight_delay_ms"

    const/16 v3, 0x1770

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 6445
    .local v0, touchLockDelay:I
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 5520
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5521
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 5522
    sget-object v0, Lcom/android/phone/InCallScreen$31;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5660
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 5661
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "setInCallScreenMode : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5674
    :cond_2
    :goto_1
    return-void

    .line 5583
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5584
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    if-eqz v0, :cond_1

    .line 5585
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUi;->setVisibility(I)V

    goto :goto_0

    .line 5590
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5591
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    if-eqz v0, :cond_1

    .line 5592
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    invoke-virtual {v0, v2}, Lcom/android/phone/ManageConferenceUi;->setVisibility(I)V

    goto :goto_0

    .line 5598
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5599
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    if-nez v0, :cond_3

    .line 5600
    const v0, 0x7f0800a2

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/ManageConferenceUi;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    .line 5601
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    invoke-virtual {v0, p0}, Lcom/android/phone/ManageConferenceUi;->initialize(Lcom/android/phone/InCallScreen;)V

    .line 5603
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/ManageConferenceUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 5604
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    invoke-virtual {v0, v3}, Lcom/android/phone/ManageConferenceUi;->setVisibility(I)V

    goto :goto_0

    .line 5608
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 5610
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 5614
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 5616
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0

    .line 5643
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 5647
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_5

    .line 5648
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_4

    .line 5649
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 5655
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_1

    .line 5652
    :cond_5
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 5665
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 5669
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 5673
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    goto/16 :goto_1

    .line 5522
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 4926
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4929
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 4930
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4945
    :cond_1
    :goto_0
    return-void

    .line 4935
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 4936
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4940
    :cond_3
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d002a

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x1080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 4944
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showEmailSelectDialog()V
    .locals 4

    .prologue
    .line 4398
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 4399
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 4400
    const v2, 0x7f0d026f

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 4406
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    .line 4407
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4408
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWebExEmailSelectionDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4409
    return-void
.end method

.method private showExitingECMDialog()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 4980
    const-string v0, "InCallScreen"

    const-string v1, "showExitingECMDialog()..."

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4982
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 4983
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mExitingECMDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4984
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4985
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4989
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d01e5

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    .line 4994
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4996
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mExitingECMDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4997
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 9
    .parameter
    .parameter

    .prologue
    const v7, 0x7f0d003e

    const/4 v6, 0x2

    .line 4797
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 4798
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showGenericErrorDialog(\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\')..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4800
    :cond_0
    const v1, 0x7f0d0192

    if-ne p1, v1, :cond_1

    .line 4806
    new-instance v1, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4826
    new-instance v2, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4832
    new-instance v3, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4838
    new-instance v4, Lcom/android/phone/InCallScreen$19;

    invoke-direct {v4, p0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4845
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0030

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4851
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 4852
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4853
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    const v1, 0x7f0d029f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 4854
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4904
    :goto_0
    return-void

    .line 4862
    :cond_1
    if-eqz p2, :cond_2

    .line 4863
    new-instance v1, Lcom/android/phone/InCallScreen$20;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$20;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4867
    new-instance v2, Lcom/android/phone/InCallScreen$21;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$21;-><init>(Lcom/android/phone/InCallScreen;)V

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    .line 4881
    :goto_1
    new-instance v3, Lcom/android/phone/InCallScreen$24;

    invoke-direct {v3, p0}, Lcom/android/phone/InCallScreen$24;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4892
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v7, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 4897
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 4900
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/view/Window;->addFlags(I)V

    .line 4903
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 4872
    :cond_2
    new-instance v1, Lcom/android/phone/InCallScreen$22;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$22;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4876
    new-instance v2, Lcom/android/phone/InCallScreen$23;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$23;-><init>(Lcom/android/phone/InCallScreen;)V

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_1
.end method

.method private showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 3164
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3165
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3166
    const v2, 0x7f0d0044

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3167
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3169
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 3170
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3171
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3172
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3175
    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3178
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3180
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3181
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3182
    return-void
.end method

.method private showRadioOnDialog()V
    .locals 2

    .prologue
    .line 4908
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 4910
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f0d008e

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 4911
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 4913
    new-instance v0, Lcom/android/phone/InCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$25;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 4919
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 4921
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 4922
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3124
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogCDMA: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3126
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3127
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3128
    const v2, 0x7f0d0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3129
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3132
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 3133
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3134
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3135
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3138
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3154
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3156
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3157
    return-void
.end method

.method private showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 3080
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "showWaitPromptDialogGSM: \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3082
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3083
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3084
    const v2, 0x7f0d0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3085
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3088
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 3089
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3090
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 3091
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3094
    :cond_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0045

    new-instance v2, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3111
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3113
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3114
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .locals 3
    .parameter

    .prologue
    .line 3219
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 3221
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 3222
    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3223
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3224
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3227
    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0045

    new-instance v2, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3252
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3254
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 3256
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 3257
    return-void
.end method

.method private startWebExActivity(Ljava/lang/String;)V
    .locals 3
    .parameter

    .prologue
    .line 4412
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startWebExActivity()... email : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4413
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4414
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4415
    const-string v1, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4416
    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 4418
    if-eqz p1, :cond_0

    .line 4419
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wbx://instant?attendees="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "&nativecall=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 4423
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4424
    return-void

    .line 4421
    :cond_0
    const-string v1, "wbx://instant?attendees=&nativecall=true"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto :goto_0
.end method

.method private stopTimer()V
    .locals 1

    .prologue
    .line 1864
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 1865
    :cond_0
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3407
    const/4 v2, 0x0

    .line 3408
    .local v2, updateSuccessful:Z
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "syncWithPhoneState()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3409
    :cond_0
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 3410
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dumpBluetoothState()V

    .line 3415
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3417
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v3, v4, :cond_3

    .line 3422
    :cond_2
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 3438
    :goto_0
    return-object v3

    .line 3427
    :cond_3
    if-ne v1, v5, :cond_5

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_5

    move v0, v5

    .line 3430
    .local v0, hasPendingMmiCodes:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v0, :cond_6

    .line 3432
    :cond_4
    const-string v3, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3433
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3434
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 3427
    .end local v0           #hasPendingMmiCodes:Z
    :cond_5
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 3437
    .restart local v0       #hasPendingMmiCodes:Z
    :cond_6
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_7

    const-string v3, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3438
    :cond_7
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0
.end method

.method private touchLockTimerExpired()V
    .locals 1

    .prologue
    .line 6457
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 6458
    return-void
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 1702
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1703
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1704
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1705
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1706
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1707
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1708
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 1709
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1710
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1711
    return-void
.end method

.method private updateDialpadVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5749
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 5750
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 5760
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 5769
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 5781
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->usingSlidingDrawer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5782
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_1

    .line 5788
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5789
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5799
    :cond_2
    :goto_0
    return-void

    .line 5793
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_2

    .line 5795
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateInCallBackground()V
    .locals 7

    .prologue
    const v6, 0x7f0200f0

    const v5, 0x7f0200ef

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 6787
    .line 6788
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6789
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isMultiCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v1

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_8

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 6819
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 6820
    return-void

    .line 6794
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_3

    .line 6795
    iget v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    if-ne v0, v4, :cond_1

    move v0, v4

    .line 6796
    :goto_1
    if-eqz v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_1
    move v0, v3

    .line 6795
    goto :goto_1

    :cond_2
    move v0, v6

    .line 6796
    goto :goto_0

    .line 6800
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 6801
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    .line 6802
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 6803
    :cond_4
    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    if-ne v1, v4, :cond_5

    move v1, v4

    .line 6804
    :goto_2
    sget-object v2, Lcom/android/phone/InCallScreen$31;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    move v0, v3

    .line 6815
    goto :goto_0

    :cond_5
    move v1, v3

    .line 6803
    goto :goto_2

    .line 6807
    :pswitch_0
    if-eqz v1, :cond_6

    const v0, 0x7f0200ed

    goto :goto_0

    :cond_6
    const v0, 0x7f0200ee

    goto :goto_0

    .line 6811
    :pswitch_1
    if-eqz v1, :cond_7

    move v0, v5

    goto :goto_0

    :cond_7
    move v0, v6

    goto :goto_0

    :cond_8
    move v0, v3

    goto :goto_0

    .line 6804
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private updateProviderOverlay()V
    .locals 8

    .prologue
    const/16 v7, 0x79

    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 4547
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateProviderOverlay: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4549
    const v0, 0x7f0800a3

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 4551
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    if-eqz v1, :cond_0

    .line 4552
    const v1, 0x7f0d01f0

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 4553
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v3, v2, v6

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 4556
    const v1, 0x7f0800a4

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 4557
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v5, v5, v5}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 4558
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4560
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4564
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 4565
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0, v7}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 4566
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4570
    :goto_0
    return-void

    .line 4568
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3264
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3271
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_2

    .line 3272
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3393
    :cond_1
    :goto_0
    return-void

    .line 3275
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3276
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "updateScreen : Video call is activing. should not be updated"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3281
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v0, :cond_6

    .line 3283
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "- updateScreen: updating menu items..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3285
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 3286
    if-nez v0, :cond_6

    .line 3294
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "- updateScreen: Tried to update menu; now need to dismiss!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3296
    :cond_5
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 3300
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 3302
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_9

    .line 3303
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3304
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 3305
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "- updateScreen: otaUtils is not null, call otaShowProperScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3306
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto :goto_0

    .line 3309
    :cond_9
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v2, :cond_10

    .line 3310
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_a

    const-string v1, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3312
    :cond_a
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 3313
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v0, v1, :cond_d

    .line 3315
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_b

    const-string v0, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3316
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 3317
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "- updateScreen: otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3319
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto/16 :goto_0

    .line 3322
    :cond_d
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3323
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_1

    .line 3324
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3325
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto/16 :goto_0

    .line 3333
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_12

    .line 3334
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3336
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    goto/16 :goto_0

    .line 3338
    :cond_12
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_13

    .line 3339
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- updateScreen: undefined state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3344
    :cond_13
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3345
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 3346
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 3347
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 3348
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 3350
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateInCallBackground()V

    .line 3351
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_15

    .line 3352
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUi:Lcom/android/phone/ManageConferenceUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/ManageConferenceUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 3356
    :cond_15
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_16

    .line 3357
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    .line 3363
    :cond_16
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 3364
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3365
    const/4 v2, 0x2

    if-ne v1, v2, :cond_1a

    .line 3366
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 3367
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_18

    .line 3369
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_17
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Connection;

    .line 3370
    if-eqz p0, :cond_17

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_17

    .line 3372
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_1

    .line 3375
    :cond_18
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v2, :cond_1

    .line 3377
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_19

    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3378
    :cond_19
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 3379
    invoke-direct {p0, v1, v0}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3381
    :cond_1a
    if-eq v1, v3, :cond_1b

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1d

    .line 3383
    :cond_1b
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1c
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3384
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_1c

    .line 3385
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 3386
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogGSM(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_2

    .line 3390
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 6264
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6265
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6266
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 6276
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6277
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 6278
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 6281
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6282
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6283
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 6285
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6286
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x6f

    .line 6076
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "dismissMenu(immediate = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6078
    if-eqz p1, :cond_0

    .line 6079
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 6085
    :goto_0
    return-void

    .line 6081
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6082
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter

    .prologue
    .line 2226
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 2245
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    :goto_0
    return v0

    .line 2235
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2236
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- ignoring DPAD event while touch-locked..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2237
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 2226
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 6882
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6883
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1}, Lcom/android/phone/CallCard;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 6884
    const/4 v0, 0x1

    return v0
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 11
    .parameter

    .prologue
    .line 2115
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 2117
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_12

    .line 2119
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-nez v1, :cond_1

    .line 2120
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 2218
    :goto_0
    return v0

    .line 2122
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, v1, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2123
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 2126
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    .line 2127
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    .line 2130
    const/4 v3, 0x2

    new-array v3, v3, [I

    .line 2131
    const/4 v4, 0x2

    new-array v4, v4, [I

    .line 2133
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 2135
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v6, v6, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v6, v6, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v6, v3}, Lcom/android/phone/PhoneSlidingTab;->getLocationOnScreen([I)V

    .line 2136
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v6, v6, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v6, v6, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v6, v4}, Landroid/widget/SlidingDrawer;->getLocationOnScreen([I)V

    .line 2138
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Pointer Count: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", Dispatch Touch Action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2140
    const v6, 0xff00

    and-int/2addr v6, v0

    shr-int/lit8 v6, v6, 0x8

    .line 2141
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 2142
    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->getY(I)F

    move-result v8

    .line 2144
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "X: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v9, ", Y: "

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", INDEX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FocusX: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", FocusY: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2146
    and-int/lit16 v1, v0, 0xff

    .line 2147
    if-eqz v1, :cond_3

    const/4 v2, 0x5

    if-ne v1, v2, :cond_a

    .line 2150
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, v1, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneSlidingTab;->getHitRect(Landroid/graphics/Rect;)V

    .line 2151
    float-to-int v1, v7

    float-to-int v2, v8

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_4

    if-nez v0, :cond_5

    :cond_4
    iget v1, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_8

    .line 2165
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, v1, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, v5}, Landroid/widget/SlidingDrawer;->getHitRect(Landroid/graphics/Rect;)V

    .line 2166
    float-to-int v1, v7

    float-to-int v2, v8

    invoke-virtual {v5, v1, v2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v1

    if-nez v1, :cond_6

    if-nez v0, :cond_7

    :cond_6
    iget v0, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_9

    .line 2215
    :cond_7
    :goto_2
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 2153
    :cond_8
    iget v1, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    .line 2156
    const/4 v1, 0x0

    aget v1, v3, v1

    int-to-float v1, v1

    sub-float v1, v7, v1

    const/4 v2, 0x1

    aget v2, v3, v2

    int-to-float v2, v2

    sub-float v2, v8, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2157
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2159
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, v1, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneSlidingTab;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 2160
    iput v6, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2161
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    goto :goto_1

    .line 2168
    :cond_9
    iget v0, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_7

    .line 2171
    const/4 v0, 0x0

    aget v0, v4, v0

    int-to-float v0, v0

    sub-float v0, v7, v0

    const/4 v1, 0x1

    aget v1, v4, v1

    int-to-float v1, v1

    sub-float v1, v8, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2172
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2174
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p1}, Landroid/widget/SlidingDrawer;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2175
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2176
    iput v6, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    goto :goto_2

    .line 2179
    :cond_a
    const/4 v2, 0x2

    if-ne v0, v2, :cond_d

    .line 2180
    const/4 v0, 0x0

    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    if-ge v0, v1, :cond_7

    .line 2181
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    .line 2182
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v2

    .line 2183
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-ne v5, v6, :cond_b

    .line 2184
    const/4 v5, 0x0

    aget v5, v3, v5

    int-to-float v5, v5

    sub-float v5, v1, v5

    const/4 v6, 0x1

    aget v6, v3, v6

    int-to-float v6, v6

    sub-float v6, v2, v6

    invoke-virtual {p1, v5, v6}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2185
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v5, v5, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v5, v5, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v5, p1}, Lcom/android/phone/PhoneSlidingTab;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2187
    :cond_b
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v5

    iget v6, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-ne v5, v6, :cond_c

    .line 2188
    const/4 v5, 0x0

    aget v5, v4, v5

    int-to-float v5, v5

    sub-float/2addr v1, v5

    const/4 v5, 0x1

    aget v5, v4, v5

    int-to-float v5, v5

    sub-float/2addr v2, v5

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2189
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, v1, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v1, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2180
    :cond_c
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 2192
    :cond_d
    const/4 v2, 0x1

    if-eq v1, v2, :cond_e

    const/4 v2, 0x6

    if-ne v1, v2, :cond_7

    .line 2193
    :cond_e
    iget v1, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-eq v1, v6, :cond_11

    const/4 v1, 0x1

    if-eq v0, v1, :cond_11

    .line 2204
    :cond_f
    :goto_4
    iget v1, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-eq v1, v6, :cond_10

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 2206
    :cond_10
    iget v0, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    if-eq v0, v6, :cond_7

    .line 2209
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    .line 2210
    const/4 v0, 0x0

    aget v0, v4, v0

    int-to-float v0, v0

    sub-float v0, v7, v0

    const/4 v1, 0x1

    aget v1, v4, v1

    int-to-float v1, v1

    sub-float v1, v8, v1

    invoke-virtual {p1, v0, v1}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2211
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2212
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v0, p1}, Landroid/widget/SlidingDrawer;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto/16 :goto_2

    .line 2195
    :cond_11
    iget v1, p0, Lcom/android/phone/InCallScreen;->mSlidingDrawerTouchID:I

    if-eq v1, v6, :cond_f

    .line 2198
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/phone/InCallScreen;->mSlidingTabTouchID:I

    .line 2199
    const/4 v1, 0x0

    aget v1, v3, v1

    int-to-float v1, v1

    sub-float v1, v7, v1

    const/4 v2, 0x1

    aget v2, v3, v2

    int-to-float v2, v2

    sub-float v2, v8, v2

    invoke-virtual {p1, v1, v2}, Landroid/view/MotionEvent;->setLocation(FF)V

    .line 2200
    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 2201
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, v1, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, v1, Lcom/android/phone/IncomingSlidingWidget;->mIncomingSlidingTab:Lcom/android/phone/PhoneSlidingTab;

    invoke-virtual {v1, p1}, Lcom/android/phone/PhoneSlidingTab;->onTouchEvent(Landroid/view/MotionEvent;)Z

    goto :goto_4

    .line 2218
    :cond_12
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto/16 :goto_0
.end method

.method drawToastWaitingCallDialog(Ljava/lang/String;)V
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x1

    .line 5105
    iget v0, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 5121
    :goto_0
    return-void

    .line 5109
    :cond_0
    const-string v0, "%s"

    .line 5110
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0352

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5111
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0353

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5113
    if-eqz p1, :cond_1

    .line 5114
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    invoke-virtual {v1, v0, v4}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5118
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->disconnectedCallName:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public endInCallScreenSession()V
    .locals 1

    .prologue
    .line 1647
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1648
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    .line 1649
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 1635
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1636
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1637
    return-void
.end method

.method getDialer()Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 1

    .prologue
    .line 6888
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    return-object v0
.end method

.method public getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;
    .locals 1

    .prologue
    .line 6778
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    return-object v0
.end method

.method public getIpCallNum()Ljava/lang/String;
    .locals 10

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    const-string v9, "enabled"

    const-string v8, "callnum"

    const-string v6, "InCallScreen"

    .line 6949
    const-string v0, "InCallScreen"

    const-string v0, "getIpCallNum()"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6950
    const/4 v0, 0x3

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_id"

    aput-object v1, v2, v0

    const-string v0, "enabled"

    aput-object v9, v2, v7

    const/4 v0, 0x2

    const-string v1, "callnum"

    aput-object v8, v2, v0

    .line 6951
    const-string v0, "content://com.sec.android.app.callsetting.ipcall/ipcall"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 6952
    invoke-virtual/range {v0 .. v5}, Lcom/android/phone/InCallScreen;->managedQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 6953
    const-string v1, "InCallScreen"

    const-string v1, "getIpCallNum"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6954
    if-nez v0, :cond_0

    .line 6956
    const-string v0, "InCallScreen"

    const-string v0, "cur == null"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v3

    .line 6972
    :goto_0
    return-object v0

    .line 6959
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6963
    :cond_1
    const-string v1, "enabled"

    invoke-interface {v0, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 6964
    const-string v2, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getIpCallNum nEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6965
    const-string v2, "callnum"

    invoke-interface {v0, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 6966
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getIpCallNum CallNum = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6967
    if-ne v1, v7, :cond_2

    move-object v0, v2

    .line 6968
    goto :goto_0

    .line 6969
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 6971
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 6972
    const-string v0, ""

    goto :goto_0
.end method

.method getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;
    .locals 7
    .parameter

    .prologue
    const v6, 0x7f0d000a

    const v5, 0x7f0d0009

    const v4, 0x7f0d0008

    const/4 v3, 0x0

    .line 5388
    .line 5390
    instance-of v0, p1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_1

    .line 5391
    check-cast p1, Lcom/android/internal/telephony/CallerInfo;

    move-object v0, p1

    .line 5395
    :goto_0
    if-eqz v0, :cond_c

    .line 5398
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5399
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->cnapName:Ljava/lang/String;

    .line 5437
    :cond_0
    :goto_1
    if-eqz v0, :cond_a

    .line 5438
    :goto_2
    return-object v0

    .line 5392
    :cond_1
    instance-of v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v0, :cond_d

    .line 5393
    check-cast p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v0, p1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 5400
    :cond_2
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 5401
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    goto :goto_1

    .line 5403
    :cond_3
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->numberPresentation:I

    .line 5405
    sget-boolean v2, Lcom/android/phone/PhoneApp;->mConfigFdnContactSearchSupported:Z

    if-eqz v2, :cond_7

    .line 5409
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_5

    .line 5410
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v1}, Lcom/android/phone/FDNContactsCache;->getNameIfNumberIsInFDNCache(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5411
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_b

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_1

    :cond_4
    move-object v0, v1

    goto :goto_1

    .line 5413
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5414
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_6

    .line 5415
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5416
    :cond_6
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_0

    .line 5417
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5423
    :cond_7
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_8

    .line 5425
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    goto :goto_1

    .line 5427
    :cond_8
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 5428
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v2, :cond_9

    .line 5429
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 5430
    :cond_9
    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v2, :cond_0

    .line 5431
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/phone/PhoneApp;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    :cond_a
    move-object v0, v3

    .line 5438
    goto/16 :goto_2

    :cond_b
    move-object v0, v1

    goto/16 :goto_1

    :cond_c
    move-object v0, v3

    goto/16 :goto_1

    :cond_d
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 1

    .prologue
    .line 6767
    const-string v0, "InCallScreen getUpdatedInCallControlState : "

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6768
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 6770
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v0}, Lcom/android/phone/InCallControlState;->update()V

    .line 6771
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method handleOnscreenButtonClick(I)V
    .locals 4
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v3, "InCallScreen"

    .line 4430
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick(id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4432
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 4517
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4535
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    .line 4536
    return-void

    .line 4440
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 4443
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 4448
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    goto :goto_0

    .line 4451
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 4455
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_0

    .line 4458
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 4461
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialnumber()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 4462
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->getDialnumber()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    goto :goto_0

    .line 4465
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 4468
    :sswitch_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 4471
    :sswitch_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 4474
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 4478
    :sswitch_b
    const-string v0, "onVoiceRecordClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4479
    sget-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 4480
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 4481
    sget-wide v2, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 4482
    sget-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    goto :goto_0

    .line 4485
    :cond_2
    sget-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->startRecord()V

    goto :goto_0

    .line 4490
    :sswitch_c
    const-string v0, "InCallScreen"

    const-string v0, " Send Broad Cast : Run LiveShare"

    invoke-static {v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4491
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 4492
    const-string v1, "com.skt.skaf.ims.aoa.intent.action.EVENT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 4493
    const-string v1, "LiveshareOption"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4494
    const-string v1, "LiveshareStart"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4495
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 4499
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 4506
    :sswitch_e
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto/16 :goto_0

    .line 4509
    :sswitch_f
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4510
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 4513
    :sswitch_10
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onWebExClick()V

    goto/16 :goto_0

    .line 4432
    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_0
        0x7f080018 -> :sswitch_1
        0x7f080059 -> :sswitch_6
        0x7f08008a -> :sswitch_c
        0x7f08008d -> :sswitch_2
        0x7f08008f -> :sswitch_a
        0x7f080090 -> :sswitch_10
        0x7f080091 -> :sswitch_b
        0x7f080092 -> :sswitch_5
        0x7f080093 -> :sswitch_4
        0x7f080094 -> :sswitch_4
        0x7f080096 -> :sswitch_9
        0x7f080097 -> :sswitch_8
        0x7f080098 -> :sswitch_7
        0x7f0800ad -> :sswitch_e
        0x7f0800af -> :sswitch_f
        0x7f0800bb -> :sswitch_3
        0x7f0800bc -> :sswitch_d
    .end sparse-switch
.end method

.method public handleOtaCallEnd()V
    .locals 3

    .prologue
    .line 6601
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6603
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleOtaCallEnd entering"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6604
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    :cond_1
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v1, :cond_3

    .line 6610
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6611
    :cond_2
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 6612
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 6614
    :cond_3
    return-void
.end method

.method internalAnswerAndEnd()V
    .locals 2

    .prologue
    .line 5445
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5446
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 5449
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 5450
    return-void
.end method

.method internalAnswerCall()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 5135
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 5137
    if-eqz v0, :cond_1

    .line 5138
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 5139
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 5140
    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    .line 5141
    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    .line 5142
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5144
    :cond_0
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 5209
    :cond_1
    :goto_0
    return-void

    .line 5146
    :cond_2
    if-eq v0, v4, :cond_3

    const/4 v2, 0x3

    if-ne v0, v2, :cond_b

    .line 5152
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5153
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 5155
    iget v3, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    if-nez v3, :cond_4

    .line 5156
    iput v4, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    .line 5176
    :cond_4
    if-eqz v0, :cond_6

    sget-object v3, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 5177
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "2nd answerCall - stop recording"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5178
    :cond_5
    sget-object v3, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v3}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 5181
    :cond_6
    if-eqz v0, :cond_8

    if-eqz v2, :cond_8

    .line 5182
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5183
    :cond_7
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->drawToastWaitingCallDialog(Ljava/lang/String;)V

    .line 5193
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    goto :goto_0

    .line 5194
    :cond_8
    if-eqz v0, :cond_9

    .line 5195
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->drawToastWaitingCallDialog(Ljava/lang/String;)V

    .line 5196
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_0

    .line 5198
    :cond_9
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getNameFromUserData(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->drawToastWaitingCallDialog(Ljava/lang/String;)V

    .line 5199
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/InCallScreen;->mFlagWaitingCallDialog:I

    .line 5201
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    const-string v0, "internalAnswerCall: answering..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5202
    :cond_a
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5206
    :cond_b
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected phone type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method internalHangup()V
    .locals 1

    .prologue
    .line 5467
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5468
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 5469
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 5456
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5457
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 5460
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 5461
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "com.android.phone.ShowDialpad"

    .line 1761
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1762
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1859
    :cond_1
    :goto_0
    return-object v0

    .line 1765
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    .line 1767
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1768
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1775
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1779
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_5

    .line 1781
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1782
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v0, :cond_4

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_4

    .line 1784
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v5, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 1785
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 1788
    :cond_4
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 1789
    :cond_5
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1790
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 1791
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1792
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 1793
    :cond_6
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 1795
    :cond_7
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1800
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1801
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 1802
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 1803
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 1804
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 1805
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1807
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1809
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    .line 1814
    :cond_9
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    .line 1815
    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v0, v2, :cond_1

    .line 1820
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 1824
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1826
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto/16 :goto_0

    .line 1812
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    goto :goto_1

    .line 1829
    :cond_b
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 1837
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_d

    .line 1840
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1841
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1843
    :cond_d
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v6}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1844
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v6, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 1845
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1846
    if-eqz v0, :cond_f

    .line 1847
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1852
    :cond_e
    :goto_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1849
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_2

    .line 1853
    :cond_10
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 1854
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 1856
    :cond_11
    const-string v1, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1859
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 6175
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 6176
    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6177
    const/4 v1, 0x0

    .line 6181
    :goto_0
    return v1

    .line 6179
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 6180
    .local v0, isAudioOn:Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isBluetoothAudioConnected: ==> isAudioOn = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v1, v0

    .line 6181
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, " msec ago)"

    .line 6195
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6196
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 6220
    :goto_0
    return v0

    .line 6204
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v0, :cond_2

    .line 6205
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long/2addr v0, v2

    .line 6207
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 6208
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec ago)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 6210
    goto :goto_0

    .line 6212
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " msec ago)"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6214
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v0, v4

    .line 6215
    goto :goto_0

    .line 6219
    :cond_2
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v4

    .line 6220
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6133
    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6134
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 6136
    const-string v0, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v3

    .line 6168
    :goto_0
    return v0

    .line 6156
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 6157
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6158
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - headset state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6160
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - headset address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6161
    if-eqz v0, :cond_1

    .line 6162
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 6163
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6167
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method isCallEndedScreen()Z
    .locals 2

    .prologue
    .line 5994
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 5805
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 1671
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isKeyEventAcceptable(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isManageConferenceMode()Z
    .locals 2

    .prologue
    .line 5680
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOtaCallInActiveState()Z
    .locals 3

    .prologue
    .line 6584
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6585
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_0

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_1

    .line 6589
    :cond_0
    const/4 v1, 0x1

    .line 6591
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 6617
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPhoneStateRestricted()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 6008
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    .line 6009
    .local v0, serviceState:I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    if-eq v0, v2, :cond_0

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getKeyguardManager()Landroid/app/KeyguardManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    move v1, v2

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isTouchUiEnabled()Z
    .locals 1

    .prologue
    .line 5943
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->isTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 5912
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method okToShowInCallTouchUi()Z
    .locals 2

    .prologue
    .line 5989
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1931
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1938
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1942
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1943
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "BACK key while ringing: reject the call"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1944
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    .line 1949
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    .line 1995
    :cond_2
    :goto_0
    return-void

    .line 1957
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "BACK key while ringing: close reject call with msg drawer"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1958
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    if-eqz v0, :cond_2

    .line 1959
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v0, v0, Lcom/android/phone/InCallTouchUi;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v0, v0, Lcom/android/phone/IncomingSlidingWidget;->mRejectCallWithMsgDrawer:Landroid/widget/SlidingDrawer;

    .line 1960
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {v0}, Landroid/widget/SlidingDrawer;->toggle()V

    goto :goto_0

    .line 1969
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1972
    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1974
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_0

    .line 1978
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_7

    .line 1980
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 1984
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "mtp_running_status"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v3, v0, :cond_8

    .line 1985
    const-string v0, "mtp is runnging.. ignore back key"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1990
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 1994
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7
    .parameter

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 4079
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    .line 4080
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick(View "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ", id "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")..."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4081
    instance-of v1, p1, Lcom/android/phone/InCallMenuItemView;

    if-eqz v1, :cond_0

    .line 4082
    move-object v0, p1

    check-cast v0, Lcom/android/phone/InCallMenuItemView;

    move-object v1, v0

    .line 4083
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  ==> menu item! "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4092
    :cond_0
    sparse-switch v2, :sswitch_data_0

    .line 4179
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v1, v3, :cond_6

    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_6

    .line 4182
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1, v2}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    move v1, v6

    .line 4190
    :goto_0
    const v2, 0x1129f

    new-array v3, v6, [Ljava/lang/Object;

    instance-of v4, p1, Landroid/widget/TextView;

    if-eqz v4, :cond_7

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    :goto_1
    aput-object v4, v3, v5

    invoke-static {v2, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 4204
    if-nez v1, :cond_2

    .line 4209
    const-string v2, "- onClick: updating menu to show \'new\' current state..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4210
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    .line 4211
    if-nez v2, :cond_2

    .line 4219
    const-string v1, "onClick: Tried to update menu, but now need to take it down!"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v1, v6

    .line 4225
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 4234
    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 4235
    return-void

    .line 4094
    :sswitch_0
    const-string v1, "onClick: AnswerAndHold..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4095
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    move v1, v6

    .line 4096
    goto :goto_0

    .line 4099
    :sswitch_1
    const-string v1, "onClick: AnswerAndEnd..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4100
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    move v1, v6

    .line 4101
    goto :goto_0

    .line 4104
    :sswitch_2
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "onClick: Answer..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4105
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    move v1, v6

    .line 4106
    goto :goto_0

    .line 4109
    :sswitch_3
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_4

    const-string v1, "onClick: Ignore..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4110
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    move v1, v6

    .line 4111
    goto :goto_0

    .line 4114
    :sswitch_4
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "onClick: SwapCalls..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4115
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    move v1, v6

    .line 4116
    goto :goto_0

    .line 4119
    :sswitch_5
    const-string v1, "onClick: MergeCalls..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4120
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    move v1, v6

    .line 4121
    goto :goto_0

    .line 4124
    :sswitch_6
    const-string v1, "onClick: ManageConference..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4126
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    move v1, v6

    .line 4127
    goto/16 :goto_0

    .line 4130
    :sswitch_7
    const-string v1, "onClick: Show/hide dialpad..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4131
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    move v1, v6

    .line 4132
    goto/16 :goto_0

    .line 4135
    :sswitch_8
    const-string v1, "onClick: mButtonManageConferenceDone..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4137
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    move v1, v6

    .line 4138
    goto/16 :goto_0

    .line 4141
    :sswitch_9
    const-string v1, "onClick: Speaker..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4142
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    move v1, v5

    .line 4145
    goto/16 :goto_0

    .line 4148
    :sswitch_a
    const-string v1, "onClick: Bluetooth..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4149
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    move v1, v5

    .line 4152
    goto/16 :goto_0

    .line 4155
    :sswitch_b
    const-string v1, "onClick: Mute..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4156
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    move v1, v5

    .line 4159
    goto/16 :goto_0

    .line 4162
    :sswitch_c
    const-string v1, "onClick: Hold..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4163
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    move v1, v5

    .line 4166
    goto/16 :goto_0

    .line 4169
    :sswitch_d
    const-string v1, "onClick: AddCall..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4170
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    move v1, v6

    .line 4171
    goto/16 :goto_0

    .line 4174
    :sswitch_e
    const-string v1, "onClick: EndCall..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4175
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    move v1, v6

    .line 4176
    goto/16 :goto_0

    .line 4184
    :cond_6
    const-string v1, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got click from unexpected View ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (View = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    goto/16 :goto_0

    .line 4190
    :cond_7
    const-string v4, ""

    goto/16 :goto_1

    .line 4092
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080009 -> :sswitch_6
        0x7f08000a -> :sswitch_7
        0x7f08000b -> :sswitch_e
        0x7f08000c -> :sswitch_d
        0x7f08000d -> :sswitch_4
        0x7f08000e -> :sswitch_5
        0x7f08000f -> :sswitch_a
        0x7f080010 -> :sswitch_9
        0x7f080011 -> :sswitch_b
        0x7f080012 -> :sswitch_c
        0x7f080013 -> :sswitch_0
        0x7f080014 -> :sswitch_1
        0x7f080015 -> :sswitch_2
        0x7f080016 -> :sswitch_3
        0x7f0800af -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 6902
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onConfigurationChanged: newConfig = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6912
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 6913
    iget v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_2

    .line 6940
    :cond_1
    :goto_0
    return-void

    .line 6916
    :cond_2
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_3

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 6919
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " -> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6920
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 6921
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setOrientation(I)V

    .line 6922
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->setOrientation(I)V

    .line 6923
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    .line 6924
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .parameter

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const-string v6, "InCallScreen"

    .line 962
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 964
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 966
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 968
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 969
    invoke-virtual {v1, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 972
    const/high16 v0, 0x8

    .line 973
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_0

    .line 979
    const/high16 v2, 0x40

    or-int/2addr v0, v2

    .line 981
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->addFlags(I)V

    .line 983
    iget-object v0, v1, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 985
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 987
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 988
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mBluetoothHandsfree: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 990
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 994
    new-instance v0, Landroid/bluetooth/BluetoothHeadset;

    invoke-direct {v0, p0, v5}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 995
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Got BluetoothHeadset: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 998
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 1016
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1018
    const v0, 0x7f0800c0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 1019
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Full touch device!  Found dialerView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    move-object v0, v5

    .line 1030
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v2, :cond_b

    .line 1031
    const-string v2, "InCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v6, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1036
    :goto_1
    new-instance v2, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-direct {v2, p0, v3, v0}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1039
    new-instance v0, Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-direct {v0, v2, v3}, Lcom/android/phone/PhoneVoiceRecorder;-><init>(Landroid/content/Context;Lcom/android/phone/CallCard;)V

    sput-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    .line 1041
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1043
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mEmailList:Ljava/util/ArrayList;

    .line 1052
    if-nez p1, :cond_c

    .line 1053
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1058
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1059
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): mInCallInitialStatus = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1060
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v2, :cond_6

    .line 1061
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate: status "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    :cond_6
    :goto_2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1073
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v2, v0}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1077
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSKTReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.COMMAND_ENDCALL"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1081
    sput-boolean v4, Lcom/android/phone/InCallScreen;->liveshare_option:Z

    .line 1082
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSKTReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.skt.skaf.ims.aoa.intent.action.ENDCALL_LIVESHARE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1083
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSKTReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.skt.skaf.ims.aoa.intent.action.EVENT"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1088
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v0

    if-nez v0, :cond_d

    const/4 v0, 0x1

    :goto_3
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    .line 1090
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 1091
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "onCreate(): exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1095
    :cond_7
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mConfigFdnContactSearchSupported:Z

    if-eqz v0, :cond_8

    .line 1097
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    .line 1100
    :cond_8
    return-void

    .line 1023
    :cond_9
    const v0, 0x7f080060

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 1024
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Using SlidingDrawer-based dialpad.  Found dialerView: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1025
    :cond_a
    const v0, 0x7f08005e

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SlidingDrawer;

    .line 1026
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ...and the SlidingDrawer: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1033
    :cond_b
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setVisibility(I)V

    goto/16 :goto_1

    .line 1066
    :cond_c
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    :cond_d
    move v0, v4

    .line 1088
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter "menu"

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v2, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 775
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 777
    const v0, 0x7f0d0265

    invoke-interface {p1, v3, v4, v4, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02025d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 778
    const v0, 0x7f0d01bb

    invoke-interface {p1, v3, v2, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020259

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 779
    const v0, 0x7f0d0263

    invoke-interface {p1, v3, v5, v5, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020276

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 780
    const v0, 0x7f0d026b

    invoke-interface {p1, v3, v6, v6, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02025b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 781
    const/4 v0, 0x5

    const/4 v1, 0x5

    const v2, 0x7f0d02d2

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02026b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 782
    const/4 v0, 0x6

    const/4 v1, 0x6

    const v2, 0x7f0d026a

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02026f

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 784
    const/4 v0, 0x7

    const/4 v1, 0x7

    const v2, 0x7f0d0268

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02026c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 785
    const/16 v0, 0x8

    const/16 v1, 0x8

    const v2, 0x7f0d0269

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020272

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 788
    const/16 v0, 0xb

    const/16 v1, 0xb

    const v2, 0x7f0d02c6

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020268

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 789
    const/16 v0, 0xc

    const/16 v1, 0xc

    const v2, 0x7f0d0266

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02026a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 790
    return v4
.end method

.method public onCreatePanelView(I)Landroid/view/View;
    .locals 3
    .parameter

    .prologue
    const/4 v2, 0x0

    .line 6034
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreatePanelView(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6038
    if-eqz p1, :cond_0

    move-object v0, v2

    .line 6063
    :goto_0
    return-object v0

    .line 6046
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isTouchUiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 6047
    goto :goto_0

    .line 6054
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6f

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6056
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-nez v0, :cond_2

    .line 6057
    const-string v0, "onCreatePanelView: creating mInCallMenu (first time)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6058
    new-instance v0, Lcom/android/phone/InCallMenu;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallMenu;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    .line 6059
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenu;->initMenu()V

    .line 6062
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 6063
    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v0}, Lcom/android/phone/InCallMenu;->getView()Lcom/android/phone/InCallMenuView;

    move-result-object v0

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1567
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onDestroy()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1568
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1572
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1574
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1575
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1579
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_1

    .line 1580
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    invoke-virtual {v1}, Lcom/android/phone/InCallMenu;->clearInCallScreenReference()V

    .line 1582
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v1, :cond_2

    .line 1583
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1585
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v1, :cond_3

    .line 1586
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallTouchUi;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1589
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1590
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1592
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1596
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_4

    .line 1597
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 1598
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1603
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1607
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1610
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSKTReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1613
    return-void
.end method

.method onDialerClose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 5843
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5845
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 5848
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_1

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_2

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_2

    .line 5853
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 5854
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_2

    .line 5855
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 5861
    :cond_2
    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 5868
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 5870
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5871
    return-void
.end method

.method onDialerOpen()V
    .locals 2

    .prologue
    .line 5813
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5817
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 5824
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 5826
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5831
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2

    .line 5834
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    .line 5836
    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter
    .parameter

    .prologue
    const/4 v5, 0x1

    const-string v2, "InCallScreen"

    .line 2266
    sparse-switch p1, :sswitch_data_0

    .line 2405
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_7

    move v0, v5

    .line 2409
    :goto_0
    return v0

    .line 2268
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v0

    .line 2269
    if-nez v0, :cond_1

    .line 2270
    const-string v0, "InCallScreen"

    const-string v0, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v5

    .line 2273
    goto :goto_0

    :sswitch_1
    move v0, v5

    .line 2285
    goto :goto_0

    .line 2289
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 2300
    const-string v0, "InCallScreen"

    const-string v0, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2305
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 2306
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2309
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "VOLUME key: silence ringer"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2310
    :cond_2
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    .line 2317
    :cond_3
    sget-boolean v1, Lcom/android/phone/PhoneApp;->mConfigFdnContactSearchSupported:Z

    if-eqz v1, :cond_4

    .line 2320
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getEventTime()J

    move-result-wide v1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDownTime()J

    move-result-wide v3

    sub-long/2addr v1, v3

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_4

    .line 2322
    const-string v1, "internalHangupRingingCall()"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2323
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2324
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    :cond_4
    move v0, v5

    .line 2331
    goto :goto_0

    .line 2346
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_5

    .line 2347
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2350
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 2351
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move v0, v5

    .line 2352
    goto/16 :goto_0

    .line 2356
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2357
    const-string v0, "- allowing MENU to dismiss touch lock overlay..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2360
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 2361
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    move v0, v5

    .line 2362
    goto/16 :goto_0

    .line 2367
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    move v0, v5

    .line 2368
    goto/16 :goto_0

    .line 2373
    :sswitch_5
    const-string v0, "----------- InCallScreen View dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 2376
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 2377
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    move v0, v5

    .line 2378
    goto/16 :goto_0

    .line 2383
    :sswitch_6
    const-string v0, "----------- InCallScreen call state dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2384
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 2385
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    move v0, v5

    .line 2386
    goto/16 :goto_0

    .line 2392
    :sswitch_7
    const-string v0, "------------ Temp testing -----------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 2393
    goto/16 :goto_0

    .line 2397
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_6

    .line 2398
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    :cond_6
    move v0, v5

    .line 2400
    goto/16 :goto_0

    .line 2409
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 2266
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x5 -> :sswitch_0
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x1b -> :sswitch_1
        0x44 -> :sswitch_7
        0x46 -> :sswitch_6
        0x4c -> :sswitch_5
        0x52 -> :sswitch_3
        0x5b -> :sswitch_4
    .end sparse-switch
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 2253
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 2259
    :goto_0
    return v0

    .line 2255
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    move v0, v1

    .line 2257
    goto :goto_0

    .line 2259
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter "intent"

    .prologue
    .line 1729
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1743
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 1752
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1753
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v1, :cond_1

    .line 1754
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1758
    :cond_1
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x1

    .line 888
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    .line 889
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 936
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 891
    :pswitch_1
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mduringCallTransfer:Z

    .line 892
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->explicitCallTransfer(Lcom/android/internal/telephony/Phone;)V

    move v0, v4

    .line 893
    goto :goto_0

    .line 895
    :pswitch_2
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 896
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.contacts"

    const-string v3, "com.sec.android.app.contacts.PhoneBookTopMenuActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 897
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 898
    goto :goto_0

    .line 900
    :pswitch_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    move v0, v4

    .line 901
    goto :goto_0

    .line 903
    :pswitch_4
    const v0, 0x7f0800ad

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->handleOnscreenButtonClick(I)V

    move v0, v4

    .line 904
    goto :goto_0

    .line 912
    :pswitch_5
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MEMO_CREATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 913
    goto :goto_0

    .line 915
    :pswitch_6
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.stk.start_main_activity"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->sendBroadcast(Landroid/content/Intent;)V

    move v0, v4

    .line 916
    goto :goto_0

    .line 921
    :pswitch_7
    sget-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->startRecord()V

    move v0, v4

    .line 922
    goto :goto_0

    .line 924
    :pswitch_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 925
    sget-wide v2, Lcom/android/phone/PhoneVoiceRecorder;->mStartRecordTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x3e8

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 926
    sget-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    :cond_0
    move v0, v4

    .line 927
    goto :goto_0

    .line 929
    :pswitch_9
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.btb.intent.action.MESSAGE_START_MSGBOX"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    move v0, v4

    .line 930
    goto :goto_0

    .line 932
    :pswitch_a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->onPressNoiseReductionMenu()V

    .line 933
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->updateInCallTouchUi()V

    move v0, v4

    .line 934
    goto :goto_0

    .line 889
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6094
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onPanelClosed(featureId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6098
    if-nez p1, :cond_0

    .line 6103
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6104
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 1344
    const-string v0, "onPause()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1345
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1355
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1360
    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1361
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 1363
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1367
    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1381
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1385
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1411
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6c

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_1

    .line 1413
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1414
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    .line 1417
    :cond_1
    const v0, 0x1129e

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1421
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 1425
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hasVideoCallConnection(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1426
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1441
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v2, p0, v1}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v3, 0x1f4

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1449
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_3

    .line 1450
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1451
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->showCallView()V

    .line 1454
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_4

    .line 1456
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->removeIncomingSlidingWidget()V

    .line 1459
    :cond_4
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 1463
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1467
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1473
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 10
    .parameter

    .prologue
    const/4 v9, 0x2

    const/4 v8, 0x4

    const/16 v7, 0xc

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 797
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    .line 798
    const-string v0, "ram"

    const-string v1, "encryption.bootmode"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v5

    .line 883
    :goto_0
    return v0

    .line 800
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 801
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 802
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 805
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isDialingOrAlerting()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_2

    :cond_1
    move v0, v5

    goto :goto_0

    .line 807
    :cond_2
    const-string v2, "gsm.STK_SETUP_MENU"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 808
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "simService - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 809
    :cond_3
    const/4 v3, 0x6

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_4

    move v2, v6

    :goto_1
    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 815
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->okToAddCall(Lcom/android/internal/telephony/CallManager;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 816
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 819
    :goto_2
    const/4 v2, 0x3

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 820
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 821
    const/4 v2, 0x7

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 822
    const/16 v2, 0x8

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 824
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->getCallNumber(Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/Call;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    move v0, v6

    .line 825
    goto/16 :goto_0

    :cond_4
    move v2, v5

    .line 809
    goto :goto_1

    .line 818
    :cond_5
    invoke-interface {p1, v9}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_2

    .line 829
    :cond_6
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isWebExEnabled(Landroid/content/Context;)Z

    move-result v2

    .line 835
    if-eqz v2, :cond_7

    .line 836
    sget-object v2, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v2}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v2

    .line 837
    const/4 v3, 0x7

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    if-nez v2, :cond_9

    move v4, v6

    :goto_3
    invoke-interface {v3, v4}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 838
    const/16 v3, 0x8

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 841
    :cond_7
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_b

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v2

    if-nez v2, :cond_b

    .line 842
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 843
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_8

    .line 844
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 860
    :cond_8
    :goto_4
    const/16 v0, 0xb

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 868
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getNoiseSuppressionFeature(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 869
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 870
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 871
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020269

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 872
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0267

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :goto_5
    move v0, v6

    .line 883
    goto/16 :goto_0

    :cond_9
    move v4, v5

    .line 837
    goto :goto_3

    .line 846
    :cond_a
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 849
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/phone/InCallControlState;->canTransfer:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 851
    :cond_b
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v1

    if-nez v1, :cond_8

    .line 852
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 853
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getInCallScreenMode()Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_8

    .line 854
    invoke-interface {p1, v8}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_4

    .line 875
    :cond_c
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f02026a

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 876
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f0d0266

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_5

    .line 880
    :cond_d
    invoke-interface {p1, v7}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_5
.end method

.method public onPressNoiseReductionMenu()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 940
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 941
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    .line 943
    .local v1, bthf:Lcom/android/phone/BluetoothHandsfree;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 944
    const v2, 0x7f0d035a

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 958
    :goto_0
    return-void

    .line 946
    :cond_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 947
    const v2, 0x7f0d0359

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 949
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 950
    const v2, 0x7f0d035b

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 952
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSupportedNoiseReductionInWBMode(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionWBMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 953
    const v2, 0x7f0d035c

    invoke-static {p0, v2, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 956
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->isNoiseSuppressionOn(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_4

    move v3, v5

    :goto_1
    invoke-static {v2, v3, v5}, Lcom/android/phone/PhoneUtils;->turnOnNoiseSuppression(Landroid/content/Context;ZZ)V

    goto :goto_0

    :cond_4
    move v3, v4

    goto :goto_1
.end method

.method protected onResume()V
    .locals 9

    .prologue
    const/16 v8, 0x70

    const/4 v7, 0x4

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 1116
    const-string v0, "onResume()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1117
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1118
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsStartActivitiy:Z

    .line 1119
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1121
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 1123
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 1128
    invoke-virtual {v1, v5}, Lcom/android/phone/PhoneApp;->setIgnoreTouchUserActivity(Z)V

    .line 1132
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v6}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1134
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v2, :cond_0

    .line 1135
    const-string v0, "statusbar"

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 1136
    invoke-virtual {v0}, Landroid/app/StatusBarManager;->hideCallView()V

    .line 1141
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 1149
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: initial status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1151
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v2, :cond_15

    .line 1152
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: failure during startup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1157
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 1164
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move v0, v5

    .line 1168
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    .line 1170
    if-eqz v2, :cond_b

    .line 1171
    const/4 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 1176
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 1178
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_c

    move v2, v5

    .line 1181
    :goto_2
    if-eqz v2, :cond_14

    .line 1182
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initOtaState()Z

    move-result v3

    .line 1184
    :goto_3
    if-nez v3, :cond_3

    .line 1191
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1204
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1207
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v3

    .line 1208
    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v3, v4, :cond_f

    .line 1209
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1213
    :cond_4
    if-eqz v0, :cond_d

    .line 1221
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_5

    const-string v0, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1258
    :cond_5
    const v0, 0x1129d

    new-array v2, v6, [Ljava/lang/Object;

    invoke-static {v0, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1265
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_12

    .line 1268
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1284
    const-string v0, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1285
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->removeMessages(I)V

    .line 1286
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v8}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1300
    :goto_4
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1305
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 1308
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 1312
    :cond_6
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1314
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1315
    invoke-virtual {v1, v6}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1318
    :cond_7
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-ne v0, v5, :cond_13

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v7, :cond_13

    .line 1319
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 1324
    :cond_8
    :goto_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 1327
    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    if-eq v1, v0, :cond_a

    .line 1328
    iput v0, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 1329
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_9

    iput v5, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    .line 1330
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->setOrientation(I)V

    .line 1331
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->setOrientation(I)V

    .line 1332
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->relinkControls(I)V

    .line 1333
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InCallScreen;->mOrientation:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1336
    :cond_a
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/InCallScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 1337
    const-string v0, "onResume() done."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1338
    :goto_6
    return-void

    .line 1173
    :cond_b
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_1

    :cond_c
    move v2, v6

    .line 1178
    goto/16 :goto_2

    .line 1235
    :cond_d
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_e

    const-string v0, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1236
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1244
    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->endInCallScreenSession(Z)V

    goto :goto_6

    .line 1247
    :cond_f
    if-eqz v2, :cond_5

    .line 1248
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v2, :cond_10

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v2, :cond_5

    .line 1250
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 1251
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1252
    :cond_11
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_6

    .line 1298
    :cond_12
    invoke-virtual {v1, v6}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_4

    .line 1320
    :cond_13
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getRequestedOrientation()I

    move-result v0

    if-eq v0, v5, :cond_8

    .line 1321
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_5

    :cond_14
    move v3, v6

    goto/16 :goto_3

    :cond_15
    move v0, v6

    goto/16 :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1477
    const-string v1, "onStart()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1478
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 1481
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1482
    .local v0, intentFilterDock:Landroid/content/IntentFilter;
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_CAR_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1483
    sget-object v1, Landroid/app/UiModeManager;->ACTION_ENTER_DESK_MODE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1484
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1486
    return-void
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1491
    const-string v0, "onStop()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1492
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1493
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsStartActivitiy:Z

    .line 1494
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1497
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1501
    sget-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->isVoiceRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1502
    sget-object v0, Lcom/android/phone/InCallScreen;->mPhoneVoiceRecorder:Lcom/android/phone/PhoneVoiceRecorder;

    invoke-virtual {v0}, Lcom/android/phone/PhoneVoiceRecorder;->stopRecord()V

    .line 1519
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 1520
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1522
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_5

    .line 1523
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1527
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v1, v2, :cond_3

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v0, :cond_3

    .line 1535
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1536
    :cond_2
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1537
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_3

    .line 1538
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0, v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen(Z)V

    .line 1541
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 1544
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 1545
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 1548
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_5

    .line 1549
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    invoke-virtual {v0}, Lcom/android/phone/InCallTouchUi;->removeIncomingSlidingWidget()V

    .line 1552
    :cond_5
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneApp$WakeState;->SLEEP:Lcom/android/phone/PhoneApp$WakeState;

    invoke-virtual {v0, v1}, Lcom/android/phone/PhoneApp;->requestWakeState(Lcom/android/phone/PhoneApp$WakeState;)V

    .line 1558
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mConfigFdnContactSearchSupported:Z

    if-eqz v0, :cond_6

    .line 1561
    invoke-static {}, Lcom/android/phone/FDNContactsCache;->getInstance()Lcom/android/phone/FDNContactsCache;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/FDNContactsCache;->clearCache()V

    .line 1563
    :cond_6
    return-void
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 2417
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 2418
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2421
    :cond_0
    sget-object v1, Lcom/android/phone/InCallScreen$31;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 2462
    const v0, 0x7f0d019a

    .line 2470
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 2471
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2472
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 2474
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2477
    :cond_2
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003e

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 2482
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2484
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 2485
    return-void

    .line 2425
    :pswitch_0
    const v0, 0x7f0d019b

    .line 2426
    goto :goto_0

    .line 2431
    :pswitch_1
    const v0, 0x7f0d019c

    .line 2432
    goto :goto_0

    .line 2438
    :pswitch_2
    const v0, 0x7f0d019d

    .line 2439
    goto :goto_0

    .line 2444
    :pswitch_3
    const v0, 0x7f0d019e

    .line 2445
    goto :goto_0

    .line 2450
    :pswitch_4
    const v0, 0x7f0d019f

    .line 2451
    goto :goto_0

    .line 2455
    :pswitch_5
    const v0, 0x7f0d01a0

    .line 2456
    goto :goto_0

    .line 2421
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 8
    .parameter
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 6462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTouch(View "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6465
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockOverlay:Landroid/view/View;

    if-ne p1, v0, :cond_5

    .line 6473
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v6

    .line 6543
    :goto_0
    return v0

    .line 6484
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockIcon:Landroid/view/View;

    if-ne p1, v0, :cond_4

    .line 6486
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_3

    .line 6487
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 6488
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- touch lock icon: handling a DOWN event, t = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6491
    iget-wide v2, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-gez v0, :cond_2

    .line 6492
    const-string v0, "==> touch lock icon: DOUBLE-TAP!"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6496
    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->enableTouchLock(Z)V

    .line 6497
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 6499
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    :cond_2
    :goto_1
    move v0, v7

    .line 6510
    goto :goto_0

    .line 6501
    :cond_3
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v7, :cond_2

    .line 6505
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mTouchLockLastTouchTime:J

    goto :goto_1

    :cond_4
    move v0, v7

    .line 6539
    goto :goto_0

    .line 6542
    :cond_5
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onTouch: event from unexpected View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v6

    .line 6543
    goto :goto_0
.end method

.method public onUserInteraction()V
    .locals 1

    .prologue
    .line 6551
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->isTouchLocked()Z

    move-result v0

    if-nez v0, :cond_0

    .line 6552
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->resetTouchLockTimer()V

    .line 6554
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 2105
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onWindowFocusChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2106
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_0

    .line 2107
    const-string v0, "- onWindowFocusChanged: faking onDialerKeyUp()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2108
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 2110
    :cond_0
    return-void
.end method

.method requestCloseOtaFailureNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 6562
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseOtaFailureNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6563
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6571
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 6579
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestCloseSpcErrorNotice() with timeout: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6580
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x76

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6581
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 6228
    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6230
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6234
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6235
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6236
    return-void
.end method

.method requestUpdateDockUi()V
    .locals 3

    .prologue
    const/16 v2, 0x7b

    .line 5969
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "requestUpdateDockUi()... PhoneApp.mIsDockConnected : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-boolean v1, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5971
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5972
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5973
    return-void
.end method

.method requestUpdateTouchUi()V
    .locals 2

    .prologue
    const/16 v1, 0x7a

    .line 5962
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5964
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5965
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 5966
    return-void
.end method

.method public resetInCallScreenMode()V
    .locals 1

    .prologue
    .line 6823
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetInCallScreenMode - InCallScreenMode set to UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6824
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 6825
    return-void
.end method

.method public setIpCallNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter

    .prologue
    const-string v2, "+86"

    const-string v1, "+"

    .line 6977
    const-string v0, "+86"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6978
    const-string v0, "+86"

    const-string v0, ""

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIpCallNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6988
    :goto_0
    return-object v0

    .line 6981
    :cond_0
    const-string v0, "+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6982
    const-string v0, "+"

    const-string v0, "00"

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 6983
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIpCallNum()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6986
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIpCallNum()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 1111
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1112
    return-void
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 2

    .prologue
    .line 1714
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 1721
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1724
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1725
    return-void
.end method

.method updateInCallTouchUi()V
    .locals 2

    .prologue
    .line 5933
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    if-eqz v0, :cond_0

    .line 5934
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallTouchUi:Lcom/android/phone/InCallTouchUi;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallTouchUi;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 5936
    :cond_0
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 1675
    if-eqz p1, :cond_0

    .line 1676
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1680
    :goto_0
    return-void

    .line 1678
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateMenuItems()V
    .locals 3

    .prologue
    .line 6754
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    if-eqz v1, :cond_0

    .line 6755
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallMenu:Lcom/android/phone/InCallMenu;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1, v2}, Lcom/android/phone/InCallMenu;->updateItems(Lcom/android/internal/telephony/CallManager;)Z

    move-result v0

    .line 6756
    .local v0, okToShowMenu:Z
    if-nez v0, :cond_0

    .line 6757
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 6760
    .end local v0           #okToShowMenu:Z
    :cond_0
    return-void
.end method
