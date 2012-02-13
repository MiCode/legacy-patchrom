.class public Lcom/android/phone/InCallScreen;
.super Landroid/app/Activity;
.source "InCallScreen.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InCallScreen$43;,
        Lcom/android/phone/InCallScreen$ConfigurationHelper;,
        Lcom/android/phone/InCallScreen$DialogListener;,
        Lcom/android/phone/InCallScreen$InCallInitStatus;,
        Lcom/android/phone/InCallScreen$InCallScreenMode;,
        Lcom/android/phone/InCallScreen$OptionsMenuPress;
    }
.end annotation


# static fields
.field public static final ACTION_OTA_CALL_END:Ljava/lang/String; = "com.android.phone.InCallScreen.OTA_CALL_ENDED"

.field public static final ACTION_SHOW_ACTIVATION:Ljava/lang/String; = "com.android.phone.InCallScreen.SHOW_ACTIVATION"

.field public static final ACTION_UNDEFINED:Ljava/lang/String; = "com.android.phone.InCallScreen.UNDEFINED"

.field private static final ADD_VOICEMAIL_NUMBER:I = 0x6a

.field private static final ALLOW_SCREEN_ON:I = 0x71

.field private static final CALL_ENDED_LONG_DELAY:I = 0x7d0

.field private static final CALL_ENDED_SHORT_DELAY:I = 0xc8

#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final DELAYED_CLEANUP_AFTER_DISCONNECT:I = 0x6c

.field private static final DIALOG_VOICE_QUALITY:I = 0x0

.field private static final DISMISS_MENU:I = 0x70

.field private static final DONT_ADD_VOICEMAIL_NUMBER:I = 0x6b

.field private static final DONT_TURN_OFF_AIRPLANE:I = 0x0

.field private static final DTMF_CHARS:[C = null

.field static final ENABLE_PHONE_UI_EVENT_LOGGING:Z = false

.field private static final EVENT_HEADSET_PLUG_STATE_CHANGED:I = 0x67

.field private static final EVENT_HIDE_PROVIDER_OVERLAY:I = 0x7a

.field private static final EVENT_OTA_PROVISION_CHANGE:I = 0x76

.field private static final EVENT_PAUSE_DIALOG_COMPLETE:I = 0x79

.field static final EXTRA_GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_PROVIDER_PACKAGE"

.field static final EXTRA_GATEWAY_URI:Ljava/lang/String; = "com.android.phone.extra.GATEWAY_URI"

.field public static final EXTRA_OTA_CALL:Ljava/lang/String; = "android.phone.extra.OTA_CALL"

.field public static final EXTRA_OTA_RESULT:Ljava/lang/String; = "com.android.phone.extra.OTA_RESULT"

.field private static final INCALL_TEXTINFO_BGCOLOR:I = -0xe6e6e7

.field private static final IS_DOCK_SPEAKER_PHONE_ON:Ljava/lang/String; = "IS_DOCK_SPEAKER_PHONE_ON"

.field private static final IS_DTMF_DIALER_OPEN:Ljava/lang/String; = "IS_DTMF_DIALER_OPEN"

.field private static final IS_MULTIPARTY_CALL_LIST:Ljava/lang/String; = "multiparty_call_list"

.field private static final IS_MULTIPARTY_CALL_ON:Ljava/lang/String; = "multiparty_call_on"

.field private static final KEY_DISABLE_MUTE_BTN:Ljava/lang/String; = "com.android.phone.InCallScreen.disableMuteBtn"

.field private static final LOG_TAG:Ljava/lang/String; = "InCallScreen"

.field private static final MAX_CALLERS_IN_CONFERENCE:I = 0x5

.field private static final MENU_DISMISS_DELAY:I = 0x3e8

.field private static final MENU_ITEM_BLUETOOTH:I = 0x4

.field private static final MENU_ITEM_DIALPAD:I = 0x7

.field private static final MENU_ITEM_HOLD:I = 0x1

.field private static final MENU_ITEM_JOIN:I = 0x2

.field private static final MENU_ITEM_MUTE:I = 0x5

.field private static final MENU_ITEM_NEWCALL:I = 0x3

.field private static final MENU_ITEM_SPEAKER:I = 0x6

.field private static final MENU_ITEM_SWITCH_CALLS:I = 0x8

.field private static final MENU_ITEM_VOICE_QUALITY:I = 0x9

.field private static final MULTI_PARTY_CALL:Ljava/lang/String; = "multi_party_call"

.field private static final MULTI_PARTY_LIST:Ljava/lang/String; = "Multi_party_caller_list"

.field private static final MULTI_PARTY_LIST_BUNDLE_KEY:Ljava/lang/String; = "MPC_List"

.field private static final NANP_LENGTH:I = 0xa

.field private static final NO_EARPIECE_WHEN_FLIPCLOSE:Ljava/lang/String; = "no_earpiece_flipclose"

.field private static final OTA_AUTO_DTMF:Ljava/lang/String; = "1"

.field private static final OTA_AUTO_DTMF_DURATION:I = 0x1388

.field public static final OTA_NUMBER:Ljava/lang/String; = "*228"

.field private static final PAUSE_PROMPT_DIALOG_TIMEOUT:I = 0x7d0

.field private static final PHONE_CDMA_CALL_WAITING:I = 0x74

.field private static final PHONE_DISCONNECT:I = 0x66

.field private static final PHONE_STATE_CHANGED:I = 0x65

.field static final PHONE_UI_EVENT_BUTTON_CLICK:Ljava/lang/String; = "button_click"

.field static final PHONE_UI_EVENT_ENTER:Ljava/lang/String; = "enter"

.field static final PHONE_UI_EVENT_EXIT:Ljava/lang/String; = "exit"

.field private static final POST_ON_DIAL_CHARS:I = 0x68

.field private static final PROVIDER_OVERLAY_TIMEOUT:I = 0x1388

.field private static final REENABLE_STATUSBAR:I = 0x7b

.field private static final REQUEST_AUTO_SEND_OTA_DTMF:I = 0x7f

.field private static final REQUEST_CLOSE_OTA_FAILURE_NOTICE:I = 0x78

.field private static final REQUEST_CLOSE_SPC_ERROR_NOTICE:I = 0x77

.field private static final REQUEST_UPDATE_BLUETOOTH_INDICATION:I = 0x73

.field private static final REQUEST_UPDATE_SCREEN:I = 0x7d

.field private static final REQUEST_UPDATE_TOUCH_UI:I = 0x7b

.field private static final SERVICE_STATE_CHANGED:I = 0x7e

.field static final SHOW_DIALPAD_EXTRA:Ljava/lang/String; = "com.android.phone.ShowDialpad"

.field private static final SUPP_SERVICE_COMPLETED:I = 0x6f

.field private static final SUPP_SERVICE_FAILED:I = 0x6e

.field private static final THREEWAY_CALLERINFO_DISPLAY_DONE:I = 0x75

.field private static final THREEWAY_CALLERINFO_DISPLAY_TIME:I = 0x7d0

.field private static final TOUCH_LOCK_TIMER:I = 0x72

.field private static final TURN_OFF_AIRPLANE:I = 0x1

.field private static final TURN_OFF_AIRPLANE_MODE:I = 0x7c

.field private static final UPDATE_RECORD_TIME:I = 0x1f40

.field private static final UPDATE_RECORD_TIME_INTERVAL:I = 0x1f4

.field private static final VASERVICE_STOP_RECORD_MSG:Ljava/lang/String; = "com.motorola.soundrecorder.stoprecording"

#the value of this static final field might be set in the static constructor
.field private static final VDBG:Z = false

.field private static final WILD_PROMPT_CHAR_ENTERED:I = 0x69

.field public static mEriTxt:Ljava/lang/String;

.field private static mIsCallMerged:Z

.field private static mLastInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private static mMultiPartyCallSessionOn:Z

.field private static mTextInfoShown:Z


# instance fields
.field private isDtmfDialerOpen:Z

.field private isEmergencyCallInProgress:Z

.field private isMuteChecked:Z

.field private isSpeakerChecked:Z

.field private mAddCallButton:Landroid/widget/Button;

.field private mAnswerButton:Landroid/widget/Button;

.field private mAnswerIgnoreSlider:Lcom/motorola/android/widget/SlideButton;

.field private mAnswerOnSpkrButton:Landroid/widget/Button;

.field private mAnswerOnSpkrButtonHolder:Landroid/view/View;

.field private mBluetoothButton:Landroid/widget/ToggleButton;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallCard:Lcom/android/phone/CallCard;

.field private mCallCardFooterActive:Landroid/view/View;

.field private mCallCardFooterIncoming:Landroid/view/View;

.field private mCallCardFooterTwoCallsLand:Landroid/view/View;

.field private mCallControlHolder:Landroid/view/ViewGroup;

.field private mDTMFDisplay:Landroid/widget/EditText;

.field private mDTMFDisplayBottomMargin:I

.field private mDTMFFrame:Landroid/view/ViewGroup;

.field private mDecorView:Landroid/view/View;

.field private mDeviceProvisioned:Z

.field public mDialPadVisible:Z

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

.field private mDialerDrawer:Landroid/widget/SlidingDrawer;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

.field private mDialpadButtonHeight:I

.field private mDialpadButtonLeftMargin:I

.field private mDialpadButtonTopMargin:I

.field private mDialpadButtonWidth:I

.field private mDisplay:Landroid/view/Display;

.field private mDockSpeakerPhone:Z

.field private mDummyForFocusFix:Landroid/view/View;

.field private mEmptyMarginLayout:Landroid/view/View;

.field private mEndActiveAnswerIncomingButton:Landroid/widget/Button;

.field private mEndCallAndAnswerButton:Landroid/widget/Button;

.field private mEndCallAndAnswerButtonHolder:Landroid/view/View;

.field private mEndCallButton:Landroid/widget/Button;

.field private mEndCallButtonTwoCallsLand:Landroid/widget/Button;

.field private mEndCallQvgaButton:Landroid/widget/Button;

.field private mEndHoldAnswerIncomingButton:Landroid/widget/Button;

.field private mEndingBeforeSwitch:Z

.field private mFirstLineActionBar:Landroid/widget/LinearLayout;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field mHasWindowFocus:Z

.field private mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mHideKeypadButton:Landroid/widget/ImageButton;

.field private mIgnoreButton:Landroid/widget/Button;

.field private mInCallControlState:Lcom/android/phone/InCallControlState;

.field private mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

.field private mInCallPanel:Landroid/view/ViewGroup;

.field private mInCallScreenClosing:Z

.field private mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

.field private mIncomingCallCtrlLocked:Landroid/view/View;

.field private mIncomingCallCtrlNormal:Landroid/view/View;

.field private mInfoTextArea:Landroid/widget/LinearLayout;

.field private mIsAddCallFromMultiPartyList:Z

.field private mIsDestroyed:Z

.field private mIsFlipOpen:Z

.field private mIsForegroundActivity:Z

.field private mIsHeadsetPlugged:Z

.field private mIsNoEarpieceWhenFlipClose:Z

.field private mIsPaused:Z

.field private mKeypadButton:Landroid/widget/ImageButton;

.field private mKeypadButtonAndDialer:Landroid/view/View;

.field private mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

.field private mMainFrame:Landroid/view/ViewGroup;

.field private mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

.field private mMenuItemDialpad:Landroid/view/MenuItem;

.field private mMenuItemHold:Landroid/view/MenuItem;

.field private mMenuItemSwitchCalls:Landroid/view/MenuItem;

.field private mMenuItemVoiceQuality:Landroid/view/MenuItem;

.field private mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

.field private mMergeCallButton:Landroid/widget/Button;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

.field mMultiPartyNumberList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mMuteButton:Landroid/widget/ToggleButton;

.field private mMuteButtonTwoCallsLand:Landroid/widget/ToggleButton;

.field private mOutgoingCallDialog:Landroid/app/AlertDialog;

.field private mParentMainFrame:Landroid/view/ViewGroup;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPostDialStrAfterPause:Ljava/lang/String;

.field private mPreviousCallState:Lcom/android/internal/telephony/Call$State;

.field private mProviderAddress:Ljava/lang/String;

.field private mProviderGatewayUri:Landroid/net/Uri;

.field private mProviderIcon:Landroid/graphics/drawable/Drawable;

.field private mProviderLabel:Ljava/lang/CharSequence;

.field private mProviderOverlayVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecordTouchListener:Landroid/view/View$OnTouchListener;

.field private mRegisteredForPhoneStates:Z

.field private mResumeButton:Landroid/widget/Button;

.field private mResumeButtonTwoCallsLand:Landroid/widget/Button;

.field private mShowCallLogAfterDisconnect:Z

.field private mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

.field private mSpeakerButton:Landroid/widget/ToggleButton;

.field private mSpeakerButtonTwoCallsLand:Landroid/widget/ToggleButton;

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSwitchButton:Landroid/widget/Button;

.field private mToggleDTMFKeypadButton:Landroid/widget/Button;

.field private mTwoCallsFirstLineActionBar:Landroid/widget/LinearLayout;

.field private mTwoCallsKeypadButton:Landroid/widget/ImageButton;

.field private mUpdateScreen:Z

.field private mUseTouchLockOverlay:Z

.field private mVaButton:Landroid/widget/ImageButton;

.field private mVaGroup:Landroid/view/View;

.field private mVaHint:Landroid/widget/TextView;

.field private mVaPending:Z

.field private mVaServiceInfoRecvr:Landroid/content/BroadcastReceiver;

.field private mVaTime:Landroid/widget/TextView;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptText:Landroid/widget/EditText;

.field public otaUtils:Lcom/android/phone/OtaUtils;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 123
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    .line 124
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    .line 331
    sput-boolean v1, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    .line 341
    sput-boolean v1, Lcom/android/phone/InCallScreen;->mTextInfoShown:Z

    .line 403
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sput-object v0, Lcom/android/phone/InCallScreen;->mLastInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 534
    sput-boolean v1, Lcom/android/phone/InCallScreen;->mIsCallMerged:Z

    .line 538
    const/16 v0, 0xc

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/phone/InCallScreen;->DTMF_CHARS:[C

    return-void

    nop

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 119
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 125
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mHasWindowFocus:Z

    .line 126
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mDeviceProvisioned:Z

    .line 128
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->isDtmfDialerOpen:Z

    .line 332
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mMultiPartyNumberList:Ljava/util/ArrayList;

    .line 381
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 406
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDockSpeakerPhone:Z

    .line 436
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 474
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mDisplay:Landroid/view/Display;

    .line 487
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    .line 488
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    .line 492
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDialPadVisible:Z

    .line 495
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z

    .line 500
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsAddCallFromMultiPartyList:Z

    .line 528
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 529
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 549
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mVaPending:Z

    .line 551
    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mVaServiceInfoRecvr:Landroid/content/BroadcastReceiver;

    .line 610
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->isMuteChecked:Z

    .line 611
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->isSpeakerChecked:Z

    .line 615
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 625
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 627
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenClosing:Z

    .line 628
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->isEmergencyCallInProgress:Z

    .line 630
    sget-object v0, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 632
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsPaused:Z

    .line 640
    new-instance v0, Lcom/android/phone/InCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$1;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    .line 969
    new-instance v0, Lcom/android/phone/InCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$2;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 7951
    new-instance v0, Lcom/android/phone/InCallScreen$42;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$42;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mRecordTouchListener:Landroid/view/View$OnTouchListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$100()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->hangupAllCalls()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/phone/InCallScreen;)Lcom/android/phone/InCallScreen$OptionsMenuPress;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$OptionsMenuPress;)Lcom/android/phone/InCallScreen$OptionsMenuPress;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/CallCard;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onMMIComplete(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->addVoiceMailNumberPanel()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dontAddVoiceMailNumber()V

    return-void
.end method

.method static synthetic access$2100(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$2200()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    return v0
.end method

.method static synthetic access$2300(Lcom/android/phone/InCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->turnOffAirplaneMode(Z)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/InCallScreen;)Lcom/android/phone/DTMFTwelveKeyDialer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->autoLaunchDTMFDialpad()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/InCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/android/phone/InCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$2702(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/InCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/phone/InCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaTime:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mIsAddCallFromMultiPartyList:Z

    return p1
.end method

.method static synthetic access$3202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    sput-boolean p0, Lcom/android/phone/InCallScreen;->mIsCallMerged:Z

    return p0
.end method

.method static synthetic access$3300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$3500(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$3700(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/phone/InCallScreen;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/InCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/phone/InCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4200(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4300(Lcom/android/phone/InCallScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4400(Lcom/android/phone/InCallScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHideKeypadButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$4602(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    return p1
.end method

.method static synthetic access$4700()Z
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    return v0
.end method

.method static synthetic access$4702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    sput-boolean p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    return p0
.end method

.method static synthetic access$4800(Lcom/android/phone/InCallScreen;)Lcom/android/phone/MultiPartyCallUtils;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/phone/InCallScreen;)Landroid/view/ViewGroup;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/phone/InCallScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDummyForFocusFix:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$5100(Lcom/android/phone/InCallScreen;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/phone/InCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$5402(Lcom/android/phone/InCallScreen;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$5500(Lcom/android/phone/InCallScreen;)Landroid/widget/ImageButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/InCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsNoEarpieceWhenFlipClose:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/phone/InCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 119
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/phone/InCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 119
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    return v0
.end method

.method private addVoiceMailNumberPanel()V
    .locals 2

    .prologue
    .line 4826
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    .line 4827
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4828
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 4830
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4832
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "show vm setting"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4835
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.CallFeaturesSetting.ADD_VOICEMAIL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4836
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/CallFeaturesSetting;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4837
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4838
    return-void
.end method

.method private autoLaunchDTMFDialpad()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x0

    .line 7822
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "autoLaunchDTMFDialpad Enter"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7824
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    if-eqz v1, :cond_5

    .line 7827
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "mDialerDrawer is not null"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7828
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToLaunchDTMFDialpad()Z

    move-result v1

    if-eqz v1, :cond_7

    move v0, v3

    .line 7829
    .local v0, visibility:I
    :goto_0
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "visibility:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7830
    :cond_2
    if-nez v0, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    invoke-virtual {v1}, Landroid/widget/Button;->getVisibility()I

    move-result v1

    if-nez v1, :cond_5

    .line 7831
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v1

    if-nez v1, :cond_5

    .line 7832
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "openDialer"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7834
    :cond_3
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7835
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7836
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 7839
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 7840
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 7844
    .end local v0           #visibility:I
    :cond_5
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_6

    const-string v1, "autoLaunchDTMFDialpad exit"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7845
    :cond_6
    return-void

    :cond_7
    move v0, v4

    .line 7828
    goto :goto_0
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 5551
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 5552
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5553
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5554
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5556
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "bailOutAfterErrorDialog(): finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5557
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 5558
    return-void
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 3
    .parameter "state"

    .prologue
    .line 4725
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

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

    .line 4727
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 4746
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

    .line 4730
    :pswitch_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4744
    :goto_0
    return-object v0

    .line 4735
    :pswitch_1
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4739
    :pswitch_2
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4744
    :pswitch_3
    sget-object v0, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4727
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private checkIsOtaCall(Landroid/content/Intent;)Z
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v2, 0x0

    .line 7434
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "checkIsOtaCall entering"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7436
    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v2

    .line 7508
    :goto_0
    return v0

    .line 7439
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    .line 7440
    goto :goto_0

    .line 7442
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 7445
    .local v7, app:Lcom/android/phone/PhoneApp;
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    if-nez v0, :cond_4

    .line 7446
    const-string v0, "InCallScreen"

    const-string v1, "checkIsOtaCall cdmaOtaInCallScreenUiState is not initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v0, v2

    .line 7447
    goto :goto_0

    .line 7451
    :cond_4
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v0, :cond_7

    .line 7453
    :cond_5
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_6

    const-string v0, "checkIsOtaCall OtaUtils.CdmaOtaScreenState not initialized"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_6
    move v0, v2

    .line 7454
    goto :goto_0

    .line 7457
    :cond_7
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v6

    .line 7458
    .local v6, action:Ljava/lang/String;
    const/4 v9, 0x0

    .line 7459
    .local v9, isOtaCall:Z
    const-string v0, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 7460
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "checkIsOtaCall action = ACTION_SHOW_ACTIVATION"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7461
    :cond_8
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v0, :cond_a

    .line 7462
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_9

    const-string v0, "checkIsOtaCall: ACTION_SHOW_ACTIVATION is not handled before"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7463
    :cond_9
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 7464
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v1, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 7467
    :cond_a
    const/4 v9, 0x1

    .line 7502
    :cond_b
    :goto_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall valid ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7503
    :cond_c
    if-eqz v9, :cond_e

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-nez v0, :cond_e

    .line 7504
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_d

    const-string v0, "checkIsOtaCall create OtaUtils"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7505
    :cond_d
    new-instance v0, Lcom/android/phone/OtaUtils;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object v2, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/OtaUtils;-><init>(Landroid/content/Context;Lcom/android/phone/InCallScreen;Landroid/view/ViewGroup;Lcom/android/phone/CallCard;Lcom/android/phone/DTMFTwelveKeyDialer;)V

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    :cond_e
    move v0, v9

    .line 7508
    goto/16 :goto_0

    .line 7468
    :cond_f
    const-string v0, "android.intent.action.CALL"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 7472
    :cond_10
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    .line 7477
    .local v11, number:Ljava/lang/String;
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0, v11}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7478
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "checkIsOtaCall action ACTION_CALL, it is valid OTA number"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7479
    :cond_11
    const/4 v9, 0x1

    goto :goto_1

    .line 7473
    .end local v11           #number:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 7474
    .local v8, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_12

    const-string v0, "Error retrieving number using the api getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_12
    move v0, v2

    .line 7475
    goto/16 :goto_0

    .line 7481
    .end local v8           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    :cond_13
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 7482
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "checkIsOtaCall action ACTION_MAIN"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7483
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v10

    .line 7484
    .local v10, isRingingCall:Z
    if-eqz v10, :cond_16

    .line 7485
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_15

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIsOtaCall isRingingCall: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_15
    move v0, v2

    .line 7486
    goto/16 :goto_0

    .line 7487
    :cond_16
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-eq v0, v1, :cond_17

    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaInCallScreenUiState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState;->state:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v0, v1, :cond_19

    .line 7491
    :cond_17
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_18

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call already in progress"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7492
    :cond_18
    const/4 v9, 0x1

    goto/16 :goto_1

    .line 7494
    :cond_19
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v0, v1, :cond_b

    .line 7496
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1a

    const-string v0, "checkIsOtaCall action ACTION_MAIN, OTA call in progress with UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7498
    :cond_1a
    const/4 v9, 0x1

    goto/16 :goto_1
.end method

.method private checkShowDialPadSetting(Ljava/lang/String;)Z
    .locals 9
    .parameter "number"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7909
    const/4 v1, 0x0

    .line 7910
    .local v1, checkValue:Z
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "all_auto_diapad_enabled"

    invoke-static {v5, v6, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-gtz v5, :cond_3

    move v0, v7

    .line 7911
    .local v0, allCallsSetting:Z
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "vm_tf_auto_dialpad_enabled"

    invoke-static {v5, v6, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-gtz v5, :cond_4

    move v4, v7

    .line 7912
    .local v4, serviceNumSetting:Z
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "custom_auto_diapad_enabled"

    invoke-static {v5, v6, v7}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-gtz v5, :cond_5

    move v2, v7

    .line 7914
    .local v2, customNumSetting:Z
    :goto_2
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkShowDialPadSetting:number:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7915
    :cond_0
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "allCallsSetting:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "serviceNumSetting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "customNumSetting"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7918
    :cond_1
    if-eqz v0, :cond_6

    .line 7919
    const/4 v1, 0x1

    .line 7920
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_2

    const-string v5, "allCallsSetting check value set as true."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7943
    :cond_2
    :goto_3
    return v1

    .end local v0           #allCallsSetting:Z
    .end local v2           #customNumSetting:Z
    .end local v4           #serviceNumSetting:Z
    :cond_3
    move v0, v8

    .line 7910
    goto :goto_0

    .restart local v0       #allCallsSetting:Z
    :cond_4
    move v4, v8

    .line 7911
    goto :goto_1

    .restart local v4       #serviceNumSetting:Z
    :cond_5
    move v2, v8

    .line 7912
    goto :goto_2

    .line 7922
    .restart local v2       #customNumSetting:Z
    :cond_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 7924
    if-eqz v4, :cond_7

    .line 7925
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->isServiceNumber(Ljava/lang/String;)Z

    move-result v1

    .line 7926
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_7

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDtmfDialpadToBeLaunched:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7928
    :cond_7
    if-nez v1, :cond_2

    if-eqz v2, :cond_2

    .line 7929
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_8

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "number.length():"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7930
    :cond_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-lt v5, v6, :cond_2

    .line 7932
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "auto_diapad_custom_phone_number"

    invoke-static {v5, v6}, Lcom/motorola/android/provider/MotorolaSettings;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    .line 7933
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 7935
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 7936
    .local v3, ex:Ljava/lang/NullPointerException;
    const/4 v1, 0x0

    .line 7937
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "catch NullPointerException:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_3
.end method

.method private clearProvider()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 7647
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 7648
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 7649
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 7650
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 7651
    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 7652
    return-void
.end method

.method private createWildPromptView()Landroid/view/View;
    .locals 10

    .prologue
    const/4 v9, -0x2

    const/high16 v8, 0x4160

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v4, 0x5

    .line 3972
    new-instance v3, Landroid/widget/LinearLayout;

    invoke-direct {v3, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 3973
    .local v3, result:Landroid/widget/LinearLayout;
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 3974
    invoke-virtual {v3, v4, v4, v4, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 3976
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3980
    .local v0, lp:Landroid/widget/LinearLayout$LayoutParams;
    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 3981
    .local v2, promptMsg:Landroid/widget/TextView;
    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setTextSize(F)V

    .line 3982
    sget-object v4, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 3983
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b0177

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3985
    invoke-virtual {v3, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 3987
    new-instance v4, Landroid/widget/EditText;

    invoke-direct {v4, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    .line 3988
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-static {}, Landroid/text/method/DialerKeyListener;->getInstance()Landroid/text/method/DialerKeyListener;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setKeyListener(Landroid/text/method/KeyListener;)V

    .line 3989
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 3990
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v8}, Landroid/widget/EditText;->setTextSize(F)V

    .line 3991
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setMaxLines(I)V

    .line 3992
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setHorizontallyScrolling(Z)V

    .line 3993
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    const v5, 0x1080018

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setBackgroundResource(I)V

    .line 3995
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v1, v4, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 3998
    .local v1, lp2:Landroid/widget/LinearLayout$LayoutParams;
    const/4 v4, 0x3

    invoke-virtual {v1, v6, v4, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V

    .line 4000
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v3, v4, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 4002
    return-object v3
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 3

    .prologue
    .line 4866
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4878
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4880
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_9

    .line 4882
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4889
    :cond_1
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v1, :cond_8

    .line 4890
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "- delayedCleanupAfterDisconnect: finishing..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4906
    :cond_2
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "- Post-call behavior:"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4907
    :cond_3
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - mLastDisconnectCause = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4908
    :cond_4
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isPhoneStateRestricted() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4925
    :cond_5
    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v2, :cond_7

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    sget-object v2, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v1, v2, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isPhoneStateRestricted()Z

    move-result v1

    if-nez v1, :cond_7

    .line 4929
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_6

    const-string v1, "- Show Call Log after disconnect..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4930
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->createCallLogIntent()Landroid/content/Intent;

    move-result-object v0

    .line 4931
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4932
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4937
    .end local v0           #intent:Landroid/content/Intent;
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4947
    :cond_8
    :goto_0
    return-void

    .line 4942
    :cond_9
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_a

    const-string v1, "- delayedCleanupAfterDisconnect: staying on the InCallScreen..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4943
    :cond_a
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_8

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto :goto_0
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5567
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5574
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 5575
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5576
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5577
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 5579
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_4

    .line 5580
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_3

    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5581
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 5582
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 5584
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 5585
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_5

    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5586
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5587
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5589
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 5590
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_7

    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5591
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5592
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 5597
    :cond_8
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CDMA"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5598
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_a

    .line 5599
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_9

    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5600
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5601
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 5606
    :cond_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_c

    .line 5607
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_b

    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5608
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5609
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 5612
    :cond_c
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_d

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_e

    :cond_d
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_e

    .line 5615
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->dismissAllOtaDialogs()V

    .line 5617
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_10

    .line 5618
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_f

    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5619
    :cond_f
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5620
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 5623
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOutgoingCallDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_12

    .line 5624
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "- DISMISSING mOutgoingCallDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5625
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mOutgoingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 5626
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOutgoingCallDialog:Landroid/app/AlertDialog;

    .line 5628
    :cond_12
    return-void
.end method

.method private dontAddVoiceMailNumber()V
    .locals 1

    .prologue
    .line 4841
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4842
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4843
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 4845
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "dontAddVoiceMailNumber: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4846
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4847
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 3

    .prologue
    .line 6442
    const-string v1, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6443
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6444
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAudioConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6445
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6446
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= PhoneApp.showBluetoothIndication: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6448
    const-string v1, "="

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6449
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_2

    .line 6450
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6451
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 6452
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6453
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
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

    .line 6454
    if-eqz v0, :cond_0

    .line 6455
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6464
    .end local v0           #headset:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 6459
    :cond_1
    const-string v1, "= mBluetoothHeadset is null"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6462
    :cond_2
    const-string v1, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private fixFocus()V
    .locals 3

    .prologue
    .line 7262
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 7263
    .local v0, curFocus:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDummyForFocusFix:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 7264
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDecorView:Landroid/view/View;

    if-ne v0, v1, :cond_2

    .line 7265
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "case a"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7266
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDummyForFocusFix:Landroid/view/View;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    .line 7267
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDummyForFocusFix:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 7268
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "fixFocus - do it"

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->dumpFocus(Ljava/lang/String;)V

    .line 7274
    :cond_1
    :goto_0
    return-void

    .line 7269
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDummyForFocusFix:Landroid/view/View;

    if-eq v0, v1, :cond_1

    .line 7270
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "case b"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7271
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDummyForFocusFix:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0
.end method

.method private flipStatusChanged()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v7, 0x8

    const/4 v8, 0x0

    .line 2710
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 2711
    .local v5, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 2712
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2713
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsNoEarpieceWhenFlipClose:Z

    if-ne v6, v9, :cond_1

    .line 2714
    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    if-eqz v6, :cond_3

    .line 2716
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2718
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->answerCall()V

    .line 2720
    :cond_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v7, Lcom/android/phone/InCallScreen$OptionsMenuPress;->NO_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    if-eq v6, v7, :cond_1

    .line 2722
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v7, Lcom/android/phone/InCallScreen$OptionsMenuPress;->SPEAKER_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    if-ne v6, v7, :cond_2

    .line 2723
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v6, v8}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 2724
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->setSpeaker(Z)V

    .line 2730
    :goto_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v6, Lcom/android/phone/InCallScreen$OptionsMenuPress;->NO_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    .line 2771
    :cond_1
    :goto_1
    return-void

    .line 2728
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 2734
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    .line 2735
    .local v2, context:Landroid/content/Context;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2736
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isBluetoothHeadsetConnected()Z

    move-result v6

    if-nez v6, :cond_7

    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v6

    if-nez v6, :cond_7

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v6

    if-nez v6, :cond_7

    move v3, v9

    .line 2739
    .local v3, earpiece:Z
    :goto_2
    if-eqz v3, :cond_1

    .line 2740
    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-nez v6, :cond_8

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 2741
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    if-eqz v6, :cond_4

    .line 2743
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2745
    :cond_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    if-eqz v6, :cond_5

    .line 2746
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2748
    :cond_5
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    if-eqz v6, :cond_6

    .line 2749
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2750
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mEmptyMarginLayout:Landroid/view/View;

    invoke-virtual {v6, v8}, Landroid/view/View;->setVisibility(I)V

    .line 2752
    :cond_6
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlLocked:Landroid/view/View;

    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 2754
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInfoTextArea:Landroid/widget/LinearLayout;

    if-eqz v6, :cond_1

    .line 2755
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mInfoTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .end local v3           #earpiece:Z
    :cond_7
    move v3, v8

    .line 2736
    goto :goto_2

    .line 2762
    .restart local v3       #earpiece:Z
    :cond_8
    const v6, 0x7f0b0136

    invoke-static {p0, v6, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/Toast;->show()V

    .line 2763
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->hangupAllCalls()V

    goto :goto_1
.end method

.method private getDisplayName(Lcom/android/internal/telephony/Call;)Ljava/lang/String;
    .locals 4
    .parameter "call"

    .prologue
    .line 6894
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 6895
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    const-string v1, ""

    .line 6897
    .local v1, name:Ljava/lang/String;
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 6898
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6903
    :goto_0
    return-object v1

    .line 6900
    :cond_0
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

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

    .line 4315
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4317
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4318
    const/4 v1, 0x0

    .line 4326
    :goto_0
    return-object v1

    .line 4321
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

    .line 4323
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4326
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private handleCallKey()Z
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 2981
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v4

    .line 2982
    .local v4, hasRingingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v2

    .line 2983
    .local v2, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    .line 2985
    .local v3, hasHoldingCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    .line 2986
    .local v5, phoneType:I
    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    iget-object v6, v6, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v6, :cond_6

    .line 2991
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2992
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v6, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v6}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 2994
    .local v1, currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    if-eqz v4, :cond_2

    .line 2996
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2997
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 3057
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    :goto_0
    return v8

    .line 2999
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_4

    if-eqz v2, :cond_4

    .line 3002
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_3

    const-string v6, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3004
    :cond_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3005
    :cond_4
    sget-object v6, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v6, :cond_1

    .line 3008
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3009
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 3011
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currCallState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_6
    if-eq v5, v8, :cond_7

    const/4 v6, 0x3

    if-ne v5, v6, :cond_d

    .line 3013
    :cond_7
    if-eqz v4, :cond_8

    .line 3024
    const-string v6, "InCallScreen"

    const-string v7, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3030
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3031
    :cond_8
    if-eqz v2, :cond_a

    if-eqz v3, :cond_a

    .line 3033
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_9

    const-string v6, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3034
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 3035
    :cond_a
    if-eqz v3, :cond_c

    .line 3038
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_b

    const-string v6, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3039
    :cond_b
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    invoke-static {v6}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 3048
    :cond_c
    sget-boolean v6, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v6, :cond_1

    const-string v6, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3052
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
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x0

    .line 2817
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

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

    .line 2823
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->isNumberKeyCode(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 2825
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 2826
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->getOtaDialer()Lcom/android/phone/DTMFTwelveKeyDialer;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    .line 2844
    :goto_0
    return v0

    .line 2828
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_3

    .line 2829
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2830
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2831
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 2832
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 2834
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyDown(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0

    :cond_4
    move v0, v2

    .line 2844
    goto :goto_0
.end method

.method private handleMissingVoiceMailNumber()V
    .locals 12

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x2

    .line 4781
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "handleMissingVoiceMailNumber"

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4784
    :cond_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "fid_34387_multimode"

    const/4 v8, 0x0

    invoke-static {v6, v7, v8}, Lcom/motorola/android/provider/MotorolaSettings;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-ne v6, v10, :cond_3

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_1

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v6

    invoke-virtual {v6}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v6

    if-nez v6, :cond_2

    :cond_1
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v10, :cond_3

    .line 4787
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f0b0001

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4788
    .local v4, number:Ljava/lang/String;
    new-instance v0, Landroid/content/Intent;

    const-string v6, "android.intent.action.CALL_PRIVILEGED"

    const-string v7, "tel"

    invoke-static {v7, v4, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v0, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 4789
    .local v0, intent:Landroid/content/Intent;
    const/high16 v6, 0x1000

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4790
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4823
    .end local v0           #intent:Landroid/content/Intent;
    .end local v4           #number:Ljava/lang/String;
    :goto_0
    return-void

    .line 4795
    :cond_3
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v1

    .line 4796
    .local v1, msg:Landroid/os/Message;
    const/16 v6, 0x6b

    iput v6, v1, Landroid/os/Message;->what:I

    .line 4798
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 4799
    .local v2, msg2:Landroid/os/Message;
    const/16 v6, 0x6a

    iput v6, v2, Landroid/os/Message;->what:I

    .line 4801
    const v3, 0x7f0b0179

    .line 4802
    .local v3, noVmNumMsg:I
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v6

    if-ne v6, v9, :cond_4

    .line 4803
    const v3, 0x7f0b017a

    .line 4807
    :cond_4
    new-instance v5, Lcom/android/phone/InCallScreen$DialogListener;

    invoke-direct {v5, p0, v11}, Lcom/android/phone/InCallScreen$DialogListener;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/InCallScreen$1;)V

    .line 4809
    .local v5, theListener:Lcom/android/phone/InCallScreen$DialogListener;
    new-instance v6, Landroid/app/AlertDialog$Builder;

    invoke-direct {v6, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v7, 0x7f0b0178

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0b016e

    invoke-virtual {v6, v7, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    const v7, 0x7f0b017b

    invoke-virtual {v6, v7, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v6

    iput-object v6, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 4819
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/view/Window;->addFlags(I)V

    .line 4822
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v6}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private handleOutgoingCallInAirplaneMode()V
    .locals 4

    .prologue
    .line 7322
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Handle outgoing call in airplane mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7323
    :cond_0
    new-instance v1, Lcom/android/phone/InCallScreen$40;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$40;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 7351
    .local v1, theListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$41;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$41;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 7362
    .local v0, theKeyListener:Landroid/content/DialogInterface$OnKeyListener;
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v3, 0x7f0b0360

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x1080027

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b035f

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b037c

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b037d

    invoke-virtual {v2, v3, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mOutgoingCallDialog:Landroid/app/AlertDialog;

    .line 7371
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOutgoingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d8

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    .line 7373
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mOutgoingCallDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 7374
    return-void
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 8
    .parameter "r"
    .parameter "ch"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x2

    .line 3805
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3807
    .local v0, c:Lcom/android/internal/telephony/Connection;
    if-eqz v0, :cond_1

    .line 3808
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 3811
    .local v3, state:Lcom/android/internal/telephony/Connection$PostDialState;
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handlePostOnDialChar: state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", ch = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3814
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v4

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3815
    .local v1, phoneType:I
    sget-object v4, Lcom/android/phone/InCallScreen$43;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 3870
    .end local v1           #phoneType:I
    .end local v3           #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :cond_1
    :goto_0
    return-void

    .line 3817
    .restart local v1       #phoneType:I
    .restart local v3       #state:Lcom/android/internal/telephony/Connection$PostDialState;
    :pswitch_0
    if-ne v1, v6, :cond_1

    .line 3818
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3819
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    if-eqz v4, :cond_2

    .line 3820
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    invoke-direct {p0, v0, v4}, Lcom/android/phone/InCallScreen;->showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    .line 3822
    :cond_2
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    .line 3823
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->startLocalToneCdma(C)V

    goto :goto_0

    .line 3834
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 3835
    .local v2, postDialStr:Ljava/lang/String;
    if-ne v1, v6, :cond_3

    .line 3836
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3837
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3838
    :cond_3
    if-ne v1, v7, :cond_4

    .line 3839
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_0

    .line 3840
    :cond_4
    const/4 v4, 0x3

    if-ne v1, v4, :cond_5

    .line 3841
    const-string v4, "InCallScreen"

    const-string v5, "SipPhone doesn\'t support post dial yet"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3843
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected phone type: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3849
    .end local v2           #postDialStr:Ljava/lang/String;
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V

    goto :goto_0

    .line 3853
    :pswitch_3
    if-ne v1, v6, :cond_1

    .line 3854
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    goto :goto_0

    .line 3859
    :pswitch_4
    if-ne v1, v6, :cond_1

    .line 3860
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mPostDialStrAfterPause:Ljava/lang/String;

    .line 3861
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopLocalToneCdma()V

    .line 3862
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mPauseInProgress:Z

    goto :goto_0

    .line 3815
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
    .parameter "status"

    .prologue
    const v6, 0x7f0b0317

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v5, "InCallScreen"

    .line 5357
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    .line 5360
    .local v0, sim:Lcom/android/internal/telephony/IccCard;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartupError(): status = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5371
    :cond_0
    sget-object v1, Lcom/android/phone/InCallScreen$43;->$SwitchMap$com$android$phone$InCallScreen$InCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InCallScreen$InCallInitStatus;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 5475
    const-string v1, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleStartupError: unexpected status code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5476
    invoke-direct {p0, v6, v3, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    .line 5479
    :cond_1
    :goto_0
    return-void

    .line 5377
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V

    goto :goto_0

    .line 5389
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleOutgoingCallInAirplaneMode()V

    goto :goto_0

    .line 5400
    :pswitch_2
    const-string v1, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccCard.State="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5401
    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/IccCard$State;->ERROR:Lcom/android/internal/telephony/IccCard$State;

    if-ne v1, v2, :cond_2

    .line 5402
    const v1, 0x7f0b0314

    const v2, 0x7f0b0315

    invoke-direct {p0, v1, v4, v2, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto :goto_0

    .line 5408
    :cond_2
    const v1, 0x7f0b0312

    const v2, 0x7f0b0313

    invoke-direct {p0, v1, v4, v2, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto :goto_0

    .line 5419
    :pswitch_3
    const v1, 0x7f0b0320

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto :goto_0

    .line 5425
    :pswitch_4
    const-string v1, "InCallScreen"

    const-string v1, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5433
    :pswitch_5
    const v1, 0x7f0b0316

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto :goto_0

    .line 5445
    :pswitch_6
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_1

    .line 5446
    const v1, 0x7f0b0318

    invoke-static {p0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 5456
    :pswitch_7
    invoke-direct {p0, v6, v3, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto :goto_0

    .line 5460
    :pswitch_8
    const v1, 0x7f0b03e2

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto :goto_0

    .line 5467
    :pswitch_9
    const v1, 0x7f0b03e3

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto :goto_0

    .line 5371
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
    .end packed-switch
.end method

.method private hangupAllCalls()V
    .locals 4

    .prologue
    .line 2774
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 2775
    .local v1, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 2776
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 2778
    .local v2, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_0

    .line 2779
    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupActiveCall(Lcom/android/internal/telephony/Call;)Z

    .line 2781
    :cond_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_1

    .line 2782
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    .line 2784
    :cond_1
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2785
    invoke-static {v2}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 2787
    :cond_2
    return-void
.end method

.method private initInCallScreen()V
    .locals 13

    .prologue
    const v8, 0x7f0700bf

    const v12, 0x7f07006f

    const v11, 0x7f07005f

    const/16 v10, 0x8

    .line 2195
    sget-boolean v7, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v7, :cond_0

    const-string v7, "initInCallScreen()..."

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2196
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2198
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v7}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2201
    .local v2, phoneType:I
    const v7, 0x7f0700ce

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewStub;

    .line 2202
    .local v5, stub:Landroid/view/ViewStub;
    if-eqz v5, :cond_1

    .line 2203
    invoke-virtual {v5}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 2204
    const v7, 0x7f07011d

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 2206
    .local v6, vgp:Landroid/view/ViewGroup;
    invoke-virtual {v6, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2209
    .end local v6           #vgp:Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 2210
    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 2211
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-static {v7}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->initConfiguration(Landroid/content/res/Configuration;)V

    .line 2220
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f03000f

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 2223
    .local v1, callCardLayout:Landroid/view/View;
    const v7, 0x7f07005e

    invoke-virtual {v1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/phone/CallCard;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 2224
    sget-boolean v7, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v7, :cond_2

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  - mCallCard = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2225
    :cond_2
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v7, p0}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 2228
    sget-boolean v7, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-eqz v7, :cond_8

    .line 2229
    const-string v7, "InCallScreen"

    const-string v8, "w20080 - enable voice recorder UI"

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2230
    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mVaGroup:Landroid/view/View;

    .line 2231
    const v7, 0x7f070060

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;

    .line 2232
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;

    invoke-virtual {v7, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2233
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mRecordTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 2234
    const v7, 0x7f070061

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mVaHint:Landroid/widget/TextView;

    .line 2235
    const v7, 0x7f070062

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mVaTime:Landroid/widget/TextView;

    .line 2241
    :goto_0
    const v7, 0x7f070069

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    .line 2242
    const v7, 0x7f070070

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mTwoCallsFirstLineActionBar:Landroid/widget/LinearLayout;

    .line 2246
    const v7, 0x7f070067

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    .line 2248
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$4;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$4;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 2256
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$5;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$5;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2268
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v7, v8, :cond_3

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 2269
    const v7, 0x7f07006d

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallQvgaButton:Landroid/widget/Button;

    .line 2270
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallQvgaButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$6;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$6;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2277
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallQvgaButton:Landroid/widget/Button;

    invoke-virtual {v7, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 2280
    :cond_3
    const v7, 0x7f070063

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    .line 2281
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v7, :cond_4

    .line 2282
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$7;

    invoke-direct {v8, p0, v0}, Lcom/android/phone/InCallScreen$7;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/PhoneApp;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2302
    :cond_4
    const v7, 0x7f070064

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mResumeButton:Landroid/widget/Button;

    .line 2303
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mResumeButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$8;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$8;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2313
    const v7, 0x7f07006a

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    .line 2314
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v7, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2317
    const v7, 0x7f070065

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    .line 2318
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$9;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$9;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2326
    const v7, 0x7f070066

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    .line 2327
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$10;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$10;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2338
    const v7, 0x7f07006b

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    .line 2339
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    new-instance v8, Lcom/android/phone/InCallScreen$11;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$11;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2345
    const v7, 0x7f07006c

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    .line 2346
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    new-instance v8, Lcom/android/phone/InCallScreen$12;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$12;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2363
    const v7, 0x7f070068

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    .line 2365
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$13;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$13;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2446
    sget-boolean v7, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v7, :cond_5

    .line 2447
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v7, v8, :cond_9

    .line 2448
    const v7, 0x7f0700c8

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mHideKeypadButton:Landroid/widget/ImageButton;

    .line 2449
    const v7, 0x7f0700c9

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    .line 2450
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    .line 2454
    :goto_1
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/android/phone/InCallScreen$14;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$14;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2476
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v7

    sget-object v8, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v7, v8, :cond_5

    .line 2477
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mHideKeypadButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/android/phone/InCallScreen$15;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$15;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2494
    :cond_5
    const v7, 0x7f0700eb

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mAnswerButton:Landroid/widget/Button;

    .line 2495
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mAnswerButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$16;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$16;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2503
    const v7, 0x7f0700ee

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mIgnoreButton:Landroid/widget/Button;

    .line 2504
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mIgnoreButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$17;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$17;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2512
    const v7, 0x7f0700ed

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mEndHoldAnswerIncomingButton:Landroid/widget/Button;

    .line 2513
    const v7, 0x7f0700ec

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mEndActiveAnswerIncomingButton:Landroid/widget/Button;

    .line 2514
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->update3CallButtonValue()V

    .line 2516
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mEndHoldAnswerIncomingButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$18;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$18;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2528
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mEndActiveAnswerIncomingButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$19;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$19;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2538
    const v7, 0x7f0700f0

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButton:Landroid/widget/Button;

    .line 2539
    const v7, 0x7f0700ef

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    .line 2540
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$20;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$20;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2550
    const v7, 0x7f0700ca

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mInfoTextArea:Landroid/widget/LinearLayout;

    .line 2551
    const v7, 0x7f0700e8

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButton:Landroid/widget/Button;

    .line 2552
    const v7, 0x7f0700e7

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    .line 2553
    const v7, 0x7f0700e9

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mEmptyMarginLayout:Landroid/view/View;

    .line 2554
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButton:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$21;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$21;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2574
    const v7, 0x7f0700d3

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    .line 2575
    const v7, 0x7f0700d4

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterIncoming:Landroid/view/View;

    .line 2577
    const v7, 0x7f0700d0

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mCallControlHolder:Landroid/view/ViewGroup;

    .line 2581
    const v7, 0x7f0700ea

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    .line 2582
    const v7, 0x7f0700d5

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlLocked:Landroid/view/View;

    .line 2583
    const v7, 0x7f0700f6

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/motorola/android/widget/SlideButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mAnswerIgnoreSlider:Lcom/motorola/android/widget/SlideButton;

    .line 2585
    new-instance v4, Landroid/text/TextPaint;

    const/4 v7, 0x1

    invoke-direct {v4, v7}, Landroid/text/TextPaint;-><init>(I)V

    .line 2586
    .local v4, sliderTxtPaint:Landroid/text/TextPaint;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 2587
    .local v3, resources:Landroid/content/res/Resources;
    const v7, 0x7f08000a

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setColor(I)V

    .line 2588
    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 2589
    const v7, 0x7f0c0018

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 2590
    sget-object v7, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {v4, v7}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 2593
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mAnswerIgnoreSlider:Lcom/motorola/android/widget/SlideButton;

    new-instance v8, Lcom/android/phone/InCallScreen$22;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$22;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Lcom/motorola/android/widget/SlideButton;->setSlidableListener(Lcom/motorola/android/widget/SlideButton$OnSlideEndListener;)V

    .line 2611
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mAnswerIgnoreSlider:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v7, v4}, Lcom/motorola/android/widget/SlideButton;->setPaint(Landroid/graphics/Paint;)V

    .line 2614
    const v7, 0x7f0700b0

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    .line 2615
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    if-eqz v7, :cond_6

    .line 2617
    const v7, 0x7f070076

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallButtonTwoCallsLand:Landroid/widget/Button;

    .line 2618
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mEndCallButtonTwoCallsLand:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$23;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$23;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2626
    sget-boolean v7, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v7, :cond_a

    .line 2627
    const v7, 0x7f070071

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mResumeButtonTwoCallsLand:Landroid/widget/Button;

    .line 2631
    :goto_2
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mResumeButtonTwoCallsLand:Landroid/widget/Button;

    new-instance v8, Lcom/android/phone/InCallScreen$24;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$24;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2639
    sget-boolean v7, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v7, :cond_b

    .line 2640
    const v7, 0x7f070072

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mMuteButtonTwoCallsLand:Landroid/widget/ToggleButton;

    .line 2641
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mMuteButtonTwoCallsLand:Landroid/widget/ToggleButton;

    new-instance v8, Lcom/android/phone/InCallScreen$25;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$25;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2648
    const v7, 0x7f070073

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ToggleButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mSpeakerButtonTwoCallsLand:Landroid/widget/ToggleButton;

    .line 2649
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mSpeakerButtonTwoCallsLand:Landroid/widget/ToggleButton;

    new-instance v8, Lcom/android/phone/InCallScreen$26;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$26;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/ToggleButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 2670
    :cond_6
    :goto_3
    const v7, 0x7f0700cb

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mDummyForFocusFix:Landroid/view/View;

    .line 2671
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mDummyForFocusFix:Landroid/view/View;

    new-instance v8, Lcom/android/phone/InCallScreen$28;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$28;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 2680
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mDecorView:Landroid/view/View;

    .line 2684
    new-instance v7, Lcom/android/phone/InCallControlState;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v7, p0, v8}, Lcom/android/phone/InCallControlState;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    .line 2687
    new-instance v7, Lcom/android/phone/ManageConferenceUtils;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-direct {v7, p0, v8}, Lcom/android/phone/ManageConferenceUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/CallManager;)V

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    .line 2689
    new-instance v7, Lcom/android/phone/MultiPartyCallUtils;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {v7, p0, v8}, Lcom/android/phone/MultiPartyCallUtils;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Phone;)V

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    .line 2695
    sget-boolean v7, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v7, :cond_7

    .line 2696
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mMultiPartyNumberList:Ljava/util/ArrayList;

    invoke-virtual {v7, v8}, Lcom/android/phone/MultiPartyCallUtils;->initMultiPartyCallPanel(Ljava/util/ArrayList;)V

    .line 2698
    :cond_7
    invoke-static {p0}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->applyConfigurationToLayout(Lcom/android/phone/InCallScreen;)V

    .line 2699
    return-void

    .line 2237
    .end local v3           #resources:Landroid/content/res/Resources;
    .end local v4           #sliderTxtPaint:Landroid/text/TextPaint;
    :cond_8
    invoke-virtual {p0, v11}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    .line 2452
    :cond_9
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    goto/16 :goto_1

    .line 2629
    .restart local v3       #resources:Landroid/content/res/Resources;
    .restart local v4       #sliderTxtPaint:Landroid/text/TextPaint;
    :cond_a
    const v7, 0x7f070074

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mResumeButtonTwoCallsLand:Landroid/widget/Button;

    goto/16 :goto_2

    .line 2656
    :cond_b
    sget-boolean v7, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v7, :cond_6

    .line 2657
    const v7, 0x7f070075

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageButton;

    iput-object v7, p0, Lcom/android/phone/InCallScreen;->mTwoCallsKeypadButton:Landroid/widget/ImageButton;

    .line 2659
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mTwoCallsKeypadButton:Landroid/widget/ImageButton;

    new-instance v8, Lcom/android/phone/InCallScreen$27;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$27;-><init>(Lcom/android/phone/InCallScreen;)V

    invoke-virtual {v7, v8}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3
.end method

.method private initOtaState()V
    .locals 4

    .prologue
    .line 7523
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-static {v2}, Lcom/android/phone/TelephonyCapabilities;->supportsOtasp(Lcom/android/internal/telephony/Phone;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7524
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7526
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-nez v2, :cond_2

    .line 7527
    :cond_0
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "initOtaState func - All CdmaOTA utility classes not initialized"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7556
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_1
    :goto_0
    return-void

    .line 7531
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 7532
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->getCdmaOtaInCallScreenUiState()Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    move-result-object v1

    .line 7534
    .local v1, cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_4

    .line 7535
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    const-string v2, "initOtaState - in OTA Normal mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7536
    :cond_3
    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 7537
    :cond_4
    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    if-ne v1, v2, :cond_6

    .line 7538
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "initOtaState - in OTA END mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7539
    :cond_5
    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 7540
    :cond_6
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v2, v3, :cond_8

    .line 7542
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_7

    const-string v2, "initOtaState - set OTA END Mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7543
    :cond_7
    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 7545
    :cond_8
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_9

    const-string v2, "initOtaState - Set OTA NORMAL Mode"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7546
    :cond_9
    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 7549
    .end local v1           #cdmaOtaInCallScreenState:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;
    :cond_a
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_b

    .line 7550
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v2}, Lcom/android/phone/OtaUtils;->cleanOtaScreenAndClearOtaStaticState()V

    .line 7552
    :cond_b
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->clearOtaStaticState()V

    .line 7553
    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0
.end method

.method private internalSwapCalls()V
    .locals 3

    .prologue
    .line 5772
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "internalSwapCalls()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5777
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 5784
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 5789
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5794
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getBgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 5795
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v0

    .line 5796
    .local v0, bthf:Lcom/android/phone/BluetoothHandsfree;
    if-eqz v0, :cond_1

    .line 5797
    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->cdmaSwapSecondCallState()V

    .line 5801
    .end local v0           #bthf:Lcom/android/phone/BluetoothHandsfree;
    :cond_1
    return-void
.end method

.method private isNumberKeyCode(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 2848
    sget-object v1, Lcom/android/phone/InCallScreen;->DTMF_CHARS:[C

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v2

    invoke-virtual {p2, v1, v2}, Landroid/view/KeyEvent;->getMatch([CI)C

    move-result v0

    .line 2849
    .local v0, charPressed:C
    const/16 v1, 0x30

    if-lt v0, v1, :cond_0

    const/16 v1, 0x39

    if-le v0, v1, :cond_1

    :cond_0
    const/16 v1, 0x23

    if-eq v0, v1, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 7708
    const-string v0, "InCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7709
    return-void
.end method

.method private okToDialDTMFTones()Z
    .locals 5

    .prologue
    .line 6199
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 6200
    .local v2, hasRingingCall:Z
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 6211
    .local v1, fgCallState:Lcom/android/internal/telephony/Call$State;
    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v3, :cond_0

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->isEmergencyCallInProgress:Z

    if-eqz v3, :cond_2

    :cond_0
    if-nez v2, :cond_2

    const/4 v3, 0x1

    move v0, v3

    .line 6217
    .local v0, canDial:Z
    :goto_0
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[okToDialDTMFTones] foreground state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", ringing state: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", call screen mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", result: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6222
    :cond_1
    return v0

    .line 6211
    .end local v0           #canDial:Z
    :cond_2
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private onBluetoothClick()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5178
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5180
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5182
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5183
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 5184
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->restoreSpeakerMode(Landroid/content/Context;)V

    .line 5204
    :goto_0
    return-void

    .line 5192
    :cond_1
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5193
    invoke-static {p0, v1, v1}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5197
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 5202
    :cond_3
    const-string v0, "InCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 25
    .parameter "r"

    .prologue
    .line 3433
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object v8, v0

    check-cast v8, Lcom/android/internal/telephony/Connection;

    .line 3434
    .local v8, c:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v11

    .line 3435
    .local v11, cause:Lcom/android/internal/telephony/Connection$DisconnectCause;
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_0

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "onDisconnect: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", cause="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3436
    :cond_0
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_1

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " InCallScreen:onDisconnect: mEndingBeforeSwitch = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3437
    :cond_1
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_2

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, " InCallScreen:onDisconnect: mUpdateScreen = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3439
    :cond_2
    sget-boolean v21, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-eqz v21, :cond_4

    .line 3441
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v16

    .line 3442
    .local v16, fgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v7

    .line 3443
    .local v7, bgCall:Lcom/android/internal/telephony/Call;
    if-eqz v16, :cond_4

    if-eqz v7, :cond_4

    .line 3444
    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_3

    invoke-virtual/range {v16 .. v16}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_3

    invoke-virtual {v7}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_8

    .line 3446
    :cond_3
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_4

    const-string v21, "Voice Recording don\'t stop"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3454
    .end local v7           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v16           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_4
    :goto_0
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/phone/InCallScreen;->mTextInfoShown:Z

    .line 3456
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    move/from16 v21, v0

    if-eqz v21, :cond_5

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    move/from16 v21, v0

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_9

    .line 3458
    :cond_5
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_6

    const-string v21, "\n  return immediately"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3693
    :cond_6
    :goto_1
    sget-boolean v21, Lcom/android/phone/PhoneApp;->drivingModeCallFlagged:Z

    if-eqz v21, :cond_2b

    .line 3697
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/phone/PhoneApp;->drivingModeCallFlagged:Z

    .line 3703
    :cond_7
    :goto_2
    return-void

    .line 3448
    .restart local v7       #bgCall:Lcom/android/internal/telephony/Call;
    .restart local v16       #fgCall:Lcom/android/internal/telephony/Call;
    :cond_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->stopVoiceRecord()V

    goto :goto_0

    .line 3462
    .end local v7           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v16           #fgCall:Lcom/android/internal/telephony/Call;
    :cond_9
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mDockSpeakerPhone:Z

    .line 3463
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v21

    if-nez v21, :cond_c

    const/16 v21, 0x1

    move/from16 v14, v21

    .line 3464
    .local v14, currentlyIdle:Z
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v17

    .line 3470
    .local v17, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v14, :cond_a

    if-eqz v17, :cond_b

    invoke-interface/range {v17 .. v17}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-gt v0, v1, :cond_b

    :cond_a
    sget-boolean v21, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v21, :cond_b

    .line 3471
    const/16 v21, 0x0

    sput-boolean v21, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    .line 3472
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/MultiPartyCallUtils;->resetMultiPartyCallList()V

    .line 3474
    :cond_b
    const/16 v21, 0x1

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mDockSpeakerPhone:Z

    .line 3477
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 3478
    .local v5, app:Lcom/android/phone/PhoneApp;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_d

    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v21, v0

    if-eqz v21, :cond_d

    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v21, v0

    if-nez v21, :cond_d

    .line 3481
    sget-object v21, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3482
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    goto :goto_2

    .line 3463
    .end local v5           #app:Lcom/android/phone/PhoneApp;
    .end local v14           #currentlyIdle:Z
    .end local v17           #fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_c
    const/16 v21, 0x0

    move/from16 v14, v21

    goto :goto_3

    .line 3484
    .restart local v5       #app:Lcom/android/phone/PhoneApp;
    .restart local v14       #currentlyIdle:Z
    .restart local v17       #fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v21, v0

    sget-object v22, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-eq v0, v1, :cond_e

    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v21, v0

    if-eqz v21, :cond_f

    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    move/from16 v21, v0

    if-eqz v21, :cond_f

    .line 3486
    :cond_e
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_7

    const-string v21, "onDisconnect: OTA Call end already handled"

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 3493
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 3498
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_10

    .line 3499
    const v21, 0x7f0b014e

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto/16 :goto_2

    .line 3501
    :cond_10
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_11

    .line 3502
    const v21, 0x7f0b014d

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto/16 :goto_2

    .line 3504
    :cond_11
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_12

    .line 3505
    const v21, 0x7f0b014f

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto/16 :goto_2

    .line 3507
    :cond_12
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_13

    .line 3508
    const v21, 0x7f0b0150

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto/16 :goto_2

    .line 3510
    :cond_13
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_14

    .line 3511
    const v21, 0x7f0b0151

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v21

    move/from16 v2, v22

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/phone/InCallScreen;->showGenericErrorDialog(IZIZ)V

    goto/16 :goto_2

    .line 3524
    :cond_14
    invoke-virtual {v8}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v9

    .line 3525
    .local v9, call:Lcom/android/internal/telephony/Call;
    if-eqz v9, :cond_17

    .line 3534
    invoke-virtual {v9}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v13

    .line 3535
    .local v13, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v13, :cond_17

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v21

    const/16 v22, 0x1

    move/from16 v0, v21

    move/from16 v1, v22

    if-le v0, v1, :cond_17

    .line 3536
    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v19

    .local v19, i$:Ljava/util/Iterator;
    :cond_15
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v21

    if-eqz v21, :cond_17

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/Connection;

    .line 3537
    .local v12, conn:Lcom/android/internal/telephony/Connection;
    invoke-virtual {v12}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v21

    sget-object v22, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    if-ne v0, v1, :cond_15

    .line 3546
    sget-boolean v21, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v21, :cond_16

    const-string v21, "- Still-active conf call; clearing DISCONNECTED..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3547
    :cond_16
    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 3548
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3557
    .end local v12           #conn:Lcom/android/internal/telephony/Connection;
    .end local v13           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v19           #i$:Ljava/util/Iterator;
    :cond_17
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v21

    const-string v22, "emergency_call_retry_count"

    const/16 v23, -0x1

    invoke-virtual/range {v21 .. v23}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v15

    .line 3567
    .local v15, emergencyCallRetryCount:I
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 3577
    move-object v0, v11

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mLastDisconnectCause:Lcom/android/internal/telephony/Connection$DisconnectCause;

    .line 3583
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_18

    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-eq v0, v1, :cond_18

    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1b

    if-lez v15, :cond_1b

    :cond_18
    if-eqz v14, :cond_1b

    const/16 v21, 0x1

    move/from16 v6, v21

    .line 3590
    .local v6, bailOutImmediately:Z
    :goto_4
    if-eqz v6, :cond_1c

    .line 3591
    sget-boolean v21, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v21, :cond_19

    const-string v21, "- onDisconnect: bailOutImmediately..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3596
    :cond_19
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->delayedCleanupAfterDisconnect()V

    .line 3600
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1a

    if-lez v15, :cond_1a

    .line 3602
    new-instance v20, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v21

    invoke-direct/range {v20 .. v21}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 3603
    .local v20, intent:Landroid/content/Intent;
    const-class v21, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 3604
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 3689
    .end local v20           #intent:Landroid/content/Intent;
    :cond_1a
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x75

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_1

    .line 3583
    .end local v6           #bailOutImmediately:Z
    :cond_1b
    const/16 v21, 0x0

    move/from16 v6, v21

    goto :goto_4

    .line 3607
    .restart local v6       #bailOutImmediately:Z
    :cond_1c
    sget-boolean v21, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v21, :cond_1d

    const-string v21, "- onDisconnect: delayed bailout..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3615
    :cond_1d
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3619
    if-eqz v14, :cond_20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v21

    if-nez v21, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v21

    if-eqz v21, :cond_20

    .line 3621
    :cond_1e
    sget-boolean v21, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v21, :cond_1f

    const-string v21, "- onDisconnect: switching to \'Call ended\' state..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3622
    :cond_1f
    sget-object v21, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 3627
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v18

    .line 3628
    .local v18, hasActiveCall:Z
    if-nez v18, :cond_27

    .line 3629
    sget-boolean v21, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v21, :cond_21

    const-string v21, "- onDisconnect: cleaning up after FG call disconnect..."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3633
    :cond_21
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    if-eqz v21, :cond_23

    .line 3634
    sget-boolean v21, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v21, :cond_22

    const-string v21, "- DISMISSING mWaitPromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3635
    :cond_22
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->dismiss()V

    .line 3636
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3638
    :cond_23
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    if-eqz v21, :cond_25

    .line 3639
    sget-boolean v21, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v21, :cond_24

    const-string v21, "- DISMISSING mWildPromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3640
    :cond_24
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->dismiss()V

    .line 3641
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 3643
    :cond_25
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    if-eqz v21, :cond_27

    .line 3644
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_26

    const-string v21, "- DISMISSING mPausePromptDialog."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3645
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Landroid/app/AlertDialog;->dismiss()V

    .line 3646
    const/16 v21, 0x0

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3650
    :cond_27
    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->isEmergencyCallInProgress:Z

    .line 3661
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v21

    const/16 v22, 0x2

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_29

    .line 3662
    if-nez v14, :cond_29

    .line 3666
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v21, v0

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 3670
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_28

    const-string v21, "onDisconnect: Call Collision case - staying on InCallScreen."

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3671
    :cond_28
    sget-boolean v21, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v21, :cond_7

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto/16 :goto_2

    .line 3680
    :cond_29
    sget-object v21, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-object v0, v11

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_2a

    const/16 v21, 0xc8

    move/from16 v10, v21

    .line 3683
    .local v10, callEndedDisplayDelay:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x6c

    invoke-virtual/range {v21 .. v22}, Landroid/os/Handler;->removeMessages(I)V

    .line 3684
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v21, v0

    const/16 v22, 0x6c

    move v0, v10

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-virtual/range {v21 .. v24}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_5

    .line 3680
    .end local v10           #callEndedDisplayDelay:I
    :cond_2a
    const/16 v21, 0x7d0

    move/from16 v10, v21

    goto :goto_6

    .line 3699
    .end local v5           #app:Lcom/android/phone/PhoneApp;
    .end local v6           #bailOutImmediately:Z
    .end local v9           #call:Lcom/android/internal/telephony/Call;
    .end local v14           #currentlyIdle:Z
    .end local v15           #emergencyCallRetryCount:I
    .end local v17           #fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v18           #hasActiveCall:Z
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v21, v0

    invoke-interface/range {v21 .. v21}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v21

    const/16 v22, 0x0

    invoke-static/range {v22 .. v22}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v22

    move-object/from16 v0, v21

    move-object v1, v8

    move-object/from16 v2, v22

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->mayShowQuickSmsDialog(Landroid/content/Context;Lcom/android/internal/telephony/Connection;Ljava/lang/Boolean;)V

    goto/16 :goto_2
.end method

.method private onHoldClick()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 5107
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "onHoldClick()..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5109
    :cond_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5110
    .local v0, hasActiveCall:Z
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5111
    .local v1, hasHoldingCall:Z
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- hasActiveCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", hasHoldingCall = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5115
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 5117
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5118
    const/4 v3, 0x1

    .line 5119
    .local v3, newHoldState:Z
    const/4 v2, 0x1

    .line 5138
    .local v2, holdButtonEnabled:Z
    :goto_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5139
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v4, v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 5140
    invoke-virtual {p0, v6}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 5141
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5143
    return-void

    .line 5120
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 5122
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5123
    const/4 v3, 0x0

    .line 5124
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x1

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_0

    .line 5127
    .end local v2           #holdButtonEnabled:Z
    .end local v3           #newHoldState:Z
    :cond_3
    const/4 v3, 0x0

    .line 5128
    .restart local v3       #newHoldState:Z
    const/4 v2, 0x0

    .restart local v2       #holdButtonEnabled:Z
    goto :goto_0
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 3777
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3780
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 3791
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "onMMICancel: finishing..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3792
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 3793
    return-void
.end method

.method private onMMIComplete(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 3716
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "Got MMI_COMPLETE"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3717
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 3718
    .local v0, mmiCode:Lcom/android/internal/telephony/MmiCode;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 3719
    .local v1, phoneType:I
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 3720
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-static {v2, v3, v0, v4, v4}, Lcom/android/phone/PhoneUtils;->displayMMIComplete(Lcom/android/internal/telephony/Phone;Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/AlertDialog;)V

    .line 3736
    :cond_1
    :goto_0
    return-void

    .line 3721
    :cond_2
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 3722
    invoke-interface {v0}, Lcom/android/internal/telephony/MmiCode;->getState()Lcom/android/internal/telephony/MmiCode$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/MmiCode$State;->PENDING:Lcom/android/internal/telephony/MmiCode$State;

    if-eq v2, v3, :cond_1

    .line 3723
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v2, :cond_4

    .line 3725
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_3

    const-string v2, "- DISMISSING mMmiStartedDialog"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3726
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v2}, Landroid/app/Dialog;->dismiss()V

    .line 3727
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 3730
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    .line 3731
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_5

    const-string v2, "Got MMI_COMPLETE, finishing..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3732
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_0
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter "r"

    .prologue
    .line 3744
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3751
    :cond_0
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_2

    .line 3752
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3768
    :cond_1
    :goto_0
    return-void

    .line 3760
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 3762
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/MmiCode;

    .line 3763
    .local v1, mmiCode:Lcom/android/internal/telephony/MmiCode;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - MmiCode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3765
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x35

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 3766
    .local v0, message:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v1, v0, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    .prologue
    .line 5172
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onMuteClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5173
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 5174
    .local v0, newMuteState:Z
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 5175
    return-void

    .line 5173
    .end local v0           #newMuteState:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 7
    .parameter "r"

    .prologue
    const v6, 0x8000

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 3327
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPhoneStateChanged()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3328
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    .line 3329
    .local v1, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "   InCallScreen: onPhoneStateChanged: state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3330
    :cond_1
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " InCallScreen: mEndingBeforeSwitch = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3331
    :cond_2
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " InCallScreen: mUpdateScreen = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3336
    :cond_3
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v2, :cond_7

    .line 3337
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_5

    .line 3338
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v2, :cond_5

    .line 3339
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_4

    const-string v2, "update NoCallScreen in background"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3340
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2, v3}, Lcom/android/phone/CallCard;->updateNoCall(Lcom/android/internal/telephony/CallManager;)V

    .line 3343
    :cond_5
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_6

    const-string v2, "onPhoneStateChanged: Activity not in foreground! Bailing out..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3414
    :cond_6
    :goto_0
    return-void

    .line 3348
    :cond_7
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_c

    .line 3349
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->setDockModePhone()V

    .line 3350
    const-string v2, "onPhoneStateChanged(): Disabling CHEEK PRESSES"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3352
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    .line 3360
    :cond_8
    :goto_1
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    if-eqz v2, :cond_9

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    if-ne v2, v4, :cond_a

    :cond_9
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_a

    .line 3361
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    .line 3362
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    .line 3363
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v0, v2, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3364
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0, v5}, Lcom/android/phone/CallNotifier;->setEndingBeforeSwitch(Z)V

    .line 3365
    invoke-virtual {v0, v4}, Lcom/android/phone/CallNotifier;->setUpdateScreen(Z)V

    .line 3371
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_a
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    if-eqz v2, :cond_b

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    if-ne v2, v4, :cond_d

    .line 3411
    :cond_b
    :goto_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    goto :goto_0

    .line 3353
    :cond_c
    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_8

    .line 3354
    const-string v2, "onPhoneStateChanged(): Enabling CHEEK PRESSES"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3355
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_1

    .line 3376
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 3381
    sget-boolean v2, Lcom/android/phone/PhoneApp;->FTR_31934_AUTO_LAUNCH_DIALPAD_ON:Z

    if-eqz v2, :cond_10

    .line 3383
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_e

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_10

    :cond_e
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_10

    .line 3385
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_f

    const-string v2, "autoLaunchDTMFDialpad for 1st outgoing call"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3386
    :cond_f
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->autoLaunchDTMFDialpad()V

    .line 3392
    :cond_10
    sget-boolean v2, Lcom/android/phone/PhoneApp;->FTR_35292_AUTO_SEND_OTA_DTMF_ON:Z

    if-eqz v2, :cond_11

    .line 3393
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v2, :cond_11

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v3, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v2, v3, :cond_11

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v2, v2, Lcom/android/phone/OtaUtils;->mIsSetupMode:Z

    if-eqz v2, :cond_11

    .line 3398
    const-string v2, "Auto send delayed DTMF \"1\" to network for OTA call from Setup"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3399
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x7f

    const-wide/16 v4, 0x1388

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 3406
    :cond_11
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    goto :goto_2
.end method

.method private onShowHideDialpad()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 5207
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5208
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5209
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 5213
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 5214
    return-void

    .line 5211
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0
.end method

.method private onSpeakerClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5146
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onSpeakerClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5152
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    move v0, v2

    .line 5153
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5154
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 5156
    :cond_1
    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5158
    if-eqz v0, :cond_2

    .line 5169
    :cond_2
    return-void

    .line 5152
    .end local v0           #newSpeakerState:Z
    :cond_3
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 2707
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
    .locals 32
    .parameter "intent"

    .prologue
    .line 4338
    sget-boolean v29, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v29, :cond_0

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "placeCall()...  intent = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4341
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    .line 4342
    .local v5, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isVoiceRecordOn()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 4343
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v6

    .line 4344
    .local v6, bgCall:Lcom/android/internal/telephony/Call;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v29

    sget-object v30, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_2

    if-eqz v6, :cond_1

    if-eqz v6, :cond_2

    invoke-virtual {v6}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v29

    if-eqz v29, :cond_2

    .line 4346
    :cond_1
    :try_start_0
    const-string v29, "InCallScreen"

    const-string v30, "placeCall() - about to stopRecording()!"

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4347
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/motorola/soundrecorder/ISoundRecorderService;->stopRecording()V

    .line 4348
    const/16 v29, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateVoiceRecordUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4357
    .end local v6           #bgCall:Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_0
    const/16 v25, 0x0

    .line 4361
    .local v25, phone:Lcom/android/internal/telephony/Phone;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v23

    .line 4365
    .local v23, okToCallStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/phone/InCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v22

    .line 4373
    .local v22, number:Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v28

    .line 4374
    .local v28, uri:Landroid/net/Uri;
    if-eqz v28, :cond_4

    invoke-virtual/range {v28 .. v28}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v26, v29

    .line 4375
    .local v26, scheme:Ljava/lang/String;
    :goto_1
    const-string v29, "android.phone.extra.SIP_PHONE_URI"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    .line 4377
    .local v27, sipPhoneUri:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v26

    move-object/from16 v2, v22

    move-object/from16 v3, v27

    invoke-static {v0, v1, v2, v3}, Lcom/android/phone/PhoneUtils;->pickPhoneBasedOnNumber(Lcom/android/internal/telephony/CallManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/Phone;

    move-result-object v25

    .line 4378
    sget-boolean v29, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v29, :cond_3

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "- got Phone instance: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ", class = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4381
    :cond_3
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    move-object/from16 v0, p0

    move/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InCallScreen$InCallInitStatus;
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v23

    .line 4397
    if-nez v22, :cond_8

    .line 4398
    const-string v29, "InCallScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4399
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4708
    .end local v22           #number:Ljava/lang/String;
    .end local v26           #scheme:Ljava/lang/String;
    .end local v27           #sipPhoneUri:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :goto_2
    return-object v29

    .line 4349
    .end local v23           #okToCallStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    .end local v25           #phone:Lcom/android/internal/telephony/Phone;
    .restart local v6       #bgCall:Lcom/android/internal/telephony/Call;
    :catch_0
    move-exception v29

    move-object/from16 v12, v29

    .line 4350
    .local v12, e:Landroid/os/RemoteException;
    const-string v29, "InCallScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "stop voice recording error : "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4374
    .end local v6           #bgCall:Lcom/android/internal/telephony/Call;
    .end local v12           #e:Landroid/os/RemoteException;
    .restart local v22       #number:Ljava/lang/String;
    .restart local v23       #okToCallStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;
    .restart local v25       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v28       #uri:Landroid/net/Uri;
    :cond_4
    const/16 v29, 0x0

    move-object/from16 v26, v29

    goto/16 :goto_1

    .line 4384
    .end local v22           #number:Ljava/lang/String;
    .end local v28           #uri:Landroid/net/Uri;
    :catch_1
    move-exception v29

    move-object/from16 v13, v29

    .line 4389
    .local v13, ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_6

    .line 4390
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_5

    const-string v29, "Voicemail number not reachable in current SIM card state."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_5
    move-object/from16 v29, v23

    .line 4391
    goto :goto_2

    .line 4393
    :cond_6
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_7

    const-string v29, "VoiceMailNumberMissingException from getInitialNumber()"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4394
    :cond_7
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_2

    .line 4402
    .end local v13           #ex:Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException;
    .restart local v22       #number:Ljava/lang/String;
    .restart local v26       #scheme:Ljava/lang/String;
    .restart local v27       #sipPhoneUri:Ljava/lang/String;
    .restart local v28       #uri:Landroid/net/Uri;
    :cond_8
    invoke-static/range {v22 .. v22}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v17

    .line 4403
    .local v17, isEmergencyNumber:Z
    const-string v29, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    .line 4406
    .local v16, isEmergencyIntent:Z
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/phone/InCallScreen;->isEmergencyCallInProgress:Z

    move/from16 v29, v0

    if-nez v29, :cond_9

    .line 4407
    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/phone/InCallScreen;->isEmergencyCallInProgress:Z

    .line 4411
    :cond_9
    if-eqz v17, :cond_a

    if-nez v16, :cond_a

    .line 4412
    const-string v29, "InCallScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Non-CALL_EMERGENCY Intent "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " attempted to call emergency number "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4415
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .line 4416
    :cond_a
    if-nez v17, :cond_b

    if-eqz v16, :cond_b

    .line 4417
    const-string v29, "InCallScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "Received CALL_EMERGENCY Intent "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " with non-emergency number "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " -- failing call."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4420
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .line 4424
    :cond_b
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getState()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_d

    if-nez v17, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_d

    .line 4426
    :cond_c
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4427
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_d

    const-string v29, "During Out of service ,allow OTA & Emergency Number"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4434
    :cond_d
    if-eqz v17, :cond_f

    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_e

    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->OUT_OF_SERVICE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_f

    .line 4435
    :cond_e
    sget-object v23, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4436
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_f

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Emergency number detected, changing state to: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4441
    :cond_f
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->isEriToneEnabled(Landroid/content/Context;)Z

    move-result v29

    if-eqz v29, :cond_10

    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_10

    .line 4443
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v29

    if-eqz v29, :cond_10

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/EriAudio;->isPlaying()Z

    move-result v29

    if-nez v29, :cond_10

    .line 4445
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/PhoneApp;->getERIAudio()Lcom/android/phone/EriAudio;

    move-result-object v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v30, v0

    invoke-interface/range {v30 .. v30}, Lcom/android/internal/telephony/Phone;->getCdmaEriAlertUri()Landroid/net/Uri;

    move-result-object v30

    const/16 v31, 0x0

    invoke-virtual/range {v29 .. v31}, Lcom/android/phone/EriAudio;->play(Landroid/net/Uri;I)V

    .line 4451
    :cond_10
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_13

    .line 4457
    if-eqz v17, :cond_12

    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-object/from16 v0, v23

    move-object/from16 v1, v29

    if-ne v0, v1, :cond_12

    .line 4458
    new-instance v21, Landroid/content/Intent;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 4459
    .local v21, newIntent:Landroid/content/Intent;
    const-class v29, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v21

    move-object/from16 v1, p0

    move-object/from16 v2, v29

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 4460
    const/high16 v29, 0x1000

    move-object/from16 v0, v21

    move/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4461
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4462
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_11

    const-string v29, "placeCall: starting EmergencyCallHandler, finishing..."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4463
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 4464
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .end local v21           #newIntent:Landroid/content/Intent;
    :cond_12
    move-object/from16 v29, v23

    .line 4466
    goto/16 :goto_2

    .line 4471
    :cond_13
    if-eqz v17, :cond_14

    .line 4472
    invoke-static {}, Lcom/android/phone/PhoneUtils;->lockLibCamera()V

    .line 4476
    :cond_14
    const/4 v9, 0x0

    .line 4477
    .local v9, cdmaInternationalRoaming:Z
    invoke-static {}, Lcom/android/phone/PhoneUtils;->isConvertNumberFlexEnabled()Z

    move-result v11

    .line 4478
    .local v11, convertNumberFlexEnabled:Z
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_15

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "placeCall:PhoneUtils.isConvertNumberFlexEnabled()="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v11

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4479
    :cond_15
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_16

    .line 4480
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Landroid/telephony/ServiceState;->getInternationalRoaming()Z

    move-result v9

    .line 4481
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_16

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "placeCall:CDMA mode and phone.getServiceState().getInternationalRoaming()="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move v1, v9

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4484
    :cond_16
    if-eqz v11, :cond_1e

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_17

    if-nez v9, :cond_18

    :cond_17
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1e

    .line 4489
    :cond_18
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1d

    .line 4490
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_1b

    .line 4492
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v29, v0

    if-eqz v29, :cond_1a

    .line 4493
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils;->mIsSetupMode:Z

    move/from16 v29, v0

    if-eqz v29, :cond_19

    .line 4494
    new-instance v24, Landroid/content/Intent;

    const-string v29, "com.android.phone.InCallScreen.OTA_CALL_ENDED"

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4495
    .local v24, otaEndIntent:Landroid/content/Intent;
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v29, v0

    move-object/from16 v0, v29

    iget-boolean v0, v0, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    move/from16 v29, v0

    if-eqz v29, :cond_1c

    .line 4496
    const-string v29, "com.android.phone.extra.OTA_RESULT"

    const/16 v30, 0x1

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 4500
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    move-object/from16 v29, v0

    invoke-interface/range {v29 .. v29}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 4502
    .end local v24           #otaEndIntent:Landroid/content/Intent;
    :cond_19
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/OtaUtils;->cleanOtaScreenAndClearOtaStaticState()V

    .line 4504
    :cond_1a
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_UNDEFINED:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 4508
    :cond_1b
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->OTA_NETWORK_NOT_SUPPORTED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .line 4498
    .restart local v24       #otaEndIntent:Landroid/content/Intent;
    :cond_1c
    const-string v29, "com.android.phone.extra.OTA_RESULT"

    const/16 v30, 0x0

    move-object/from16 v0, v24

    move-object/from16 v1, v29

    move/from16 v2, v30

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto :goto_3

    .line 4509
    .end local v24           #otaEndIntent:Landroid/content/Intent;
    :cond_1d
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isCallForwardPrefix(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_1e

    .line 4510
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FORWARD_ROAMING_NOT_SUPPORTED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .line 4515
    :cond_1e
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_21

    move-object/from16 v0, v25

    move-object/from16 v1, v22

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_21

    .line 4516
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_1f

    const-string v29, "placeCall: isOtaSpNumber() returns true"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4517
    :cond_1f
    sget-object v29, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4519
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v29, v0

    if-eqz v29, :cond_20

    .line 4520
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/phone/OtaUtils;->mIsProgramStarted:Z

    .line 4521
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_20

    const-string v29, "Set OtaUtils.mIsProgramStarted to false here."

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4524
    :cond_20
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v29, v0

    if-eqz v29, :cond_21

    .line 4525
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    move/from16 v0, v30

    move-object/from16 v1, v29

    iput-boolean v0, v1, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallCommitted:Z

    .line 4535
    :cond_21
    sget-boolean v29, Lcom/android/phone/PhoneApp;->FTR_33076_IPCALL:Z

    if-eqz v29, :cond_22

    .line 4536
    const-string v29, "ip_prefix"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 4537
    .local v15, ip_prefix:Ljava/lang/String;
    if-nez v15, :cond_23

    const-string v29, "INVALID_IP_PREFIX"

    :goto_4
    move-object/from16 v0, v29

    move-object v1, v5

    iput-object v0, v1, Lcom/android/phone/PhoneApp;->ip_prefix:Ljava/lang/String;

    .line 4538
    const-string v29, "FTR33076"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "InCallScreen> ip_prefix = "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->ip_prefix:Ljava/lang/String;

    move-object/from16 v31, v0

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4543
    .end local v15           #ip_prefix:Ljava/lang/String;
    :cond_22
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v10

    .line 4545
    .local v10, contactUri:Landroid/net/Uri;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    if-eqz v29, :cond_24

    if-nez v17, :cond_24

    if-nez v16, :cond_24

    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isRoutableViaGateway(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_24

    .line 4549
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    move-object/from16 v29, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v25

    move-object/from16 v2, v22

    move-object v3, v10

    move-object/from16 v4, v29

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/phone/PhoneUtils;->placeCallVia(Landroid/content/Context;Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;Landroid/net/Uri;)I

    move-result v7

    .line 4628
    .local v7, callStatus:I
    :goto_5
    packed-switch v7, :pswitch_data_0

    .line 4706
    const-string v29, "InCallScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "placeCall: unknown callStatus "

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move v1, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\'."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4708
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .end local v7           #callStatus:I
    .end local v10           #contactUri:Landroid/net/Uri;
    .restart local v15       #ip_prefix:Ljava/lang/String;
    :cond_23
    move-object/from16 v29, v15

    .line 4537
    goto/16 :goto_4

    .line 4552
    .end local v15           #ip_prefix:Ljava/lang/String;
    .restart local v10       #contactUri:Landroid/net/Uri;
    :cond_24
    invoke-static/range {v25 .. v25}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 4553
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->isSpecialNumberEnable(Ljava/lang/String;)Z

    move-result v18

    .line 4554
    .local v18, isSpecialNumber:Z
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_25

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "placeCall:AssistedDialingUtil.isAdFtrOn()="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "; PhoneUtils.isSpecialNumberEnable(number)="

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4557
    :cond_25
    if-eqz v11, :cond_27

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_27

    if-eqz v18, :cond_27

    .line 4558
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->filteredDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4559
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_26

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "placeCall after convert , number:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4560
    :cond_26
    const/16 v29, 0x0

    sput-boolean v29, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    .line 4561
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v7

    .restart local v7       #callStatus:I
    goto/16 :goto_5

    .line 4565
    .end local v7           #callStatus:I
    :cond_27
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v29

    if-nez v29, :cond_28

    if-eqz v11, :cond_32

    if-eqz v18, :cond_32

    :cond_28
    if-nez v17, :cond_32

    .line 4569
    if-eqz v11, :cond_29

    if-eqz v18, :cond_29

    .line 4570
    invoke-static/range {v22 .. v22}, Lcom/android/phone/PhoneUtils;->filteredDialingNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v22

    .line 4573
    :cond_29
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->isAdFtrOn()Z

    move-result v29

    if-nez v29, :cond_2a

    .line 4574
    const/16 v29, 0x0

    sput-boolean v29, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    .line 4575
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v7

    .restart local v7       #callStatus:I
    goto/16 :goto_5

    .line 4580
    .end local v7           #callStatus:I
    :cond_2a
    const-string v29, "called_by"

    move-object/from16 v0, p1

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 4581
    .local v8, calledBy:Ljava/lang/String;
    if-nez v8, :cond_2f

    .line 4582
    const-string v8, "BY_CONTACT"

    .line 4583
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_2b

    const-string v29, "Assisted Dialing: calledBy Intent Extra is BY_CONTACT"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4589
    :cond_2b
    :goto_6
    const-string v29, "+"

    move-object/from16 v0, v22

    move-object/from16 v1, v29

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v29

    if-eqz v29, :cond_2d

    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->toAttmptNBPCD()Z

    move-result v29

    if-eqz v29, :cond_2d

    .line 4591
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_2c

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "toAttmptNBPCD number = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4592
    :cond_2c
    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v29, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_origin_number:Ljava/lang/String;

    .line 4593
    new-instance v29, Ljava/lang/String;

    move-object/from16 v0, v29

    move-object v1, v8

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    sput-object v29, Lcom/android/phone/AssistedDialingUtil;->assisted_dialing_dialed_by:Ljava/lang/String;

    .line 4600
    :cond_2d
    const/16 v19, 0x0

    .line 4601
    .local v19, manipulatedNumber:Ljava/lang/String;
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_30

    .line 4602
    new-instance v14, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;

    invoke-direct {v14}, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;-><init>()V

    .line 4604
    .local v14, fwNumberHandler:Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;
    move-object v0, v14

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;->getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4605
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_2e

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "GSM Assisted Dialing: Manipulated Number is: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4613
    .end local v14           #fwNumberHandler:Lcom/motorola/android/telephony/gsm/GsmNumberHandleForAssistedDialing;
    :cond_2e
    :goto_7
    if-eqz v19, :cond_31

    .line 4614
    const/16 v29, 0x1

    sput-boolean v29, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    .line 4615
    move-object/from16 v0, v25

    move-object/from16 v1, v19

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v7

    .restart local v7       #callStatus:I
    goto/16 :goto_5

    .line 4585
    .end local v7           #callStatus:I
    .end local v19           #manipulatedNumber:Ljava/lang/String;
    :cond_2f
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_2b

    const-string v29, "Assisted Dialing: calledBy Intent Extra is BY_DIALER"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_6

    .line 4608
    .restart local v19       #manipulatedNumber:Ljava/lang/String;
    :cond_30
    new-instance v14, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;

    invoke-direct {v14}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;-><init>()V

    .line 4610
    .local v14, fwNumberHandler:Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
    move-object v0, v14

    move-object/from16 v1, v22

    move-object v2, v8

    invoke-virtual {v0, v1, v2}, Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;->getManipulatedNumber(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 4611
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_2e

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "CDMA Assisted Dialing: Manipulated Number is: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_7

    .line 4617
    .end local v14           #fwNumberHandler:Lcom/motorola/android/telephony/cdma/CdmaNumberHandleForAssistedDialing;
    :cond_31
    const/16 v29, 0x0

    sput-boolean v29, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    .line 4618
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v7

    .restart local v7       #callStatus:I
    goto/16 :goto_5

    .line 4622
    .end local v7           #callStatus:I
    .end local v8           #calledBy:Ljava/lang/String;
    .end local v19           #manipulatedNumber:Ljava/lang/String;
    :cond_32
    const/16 v29, 0x0

    sput-boolean v29, Lcom/android/phone/PhoneUtils;->isManipulated:Z

    .line 4623
    move-object/from16 v0, v25

    move-object/from16 v1, v22

    move-object v2, v10

    invoke-static {v0, v1, v2}, Lcom/android/phone/PhoneUtils;->placeCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v7

    .restart local v7       #callStatus:I
    goto/16 :goto_5

    .line 4630
    .end local v18           #isSpecialNumber:Z
    :pswitch_0
    sget-boolean v29, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v29, :cond_33

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4633
    :cond_33
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_34

    .line 4634
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    move-object/from16 v29, v0

    sget-object v30, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    move-object/from16 v0, v30

    move-object/from16 v1, v29

    iput-object v0, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 4636
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 4643
    :cond_34
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v29, v0

    const/16 v30, 0x0

    invoke-virtual/range {v29 .. v30}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 4655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 4658
    sget-boolean v29, Lcom/android/phone/PhoneApp;->FTR_33129_EMERGENCY_CALL_ON:Z

    const/16 v30, 0x1

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_36

    .line 4659
    if-eqz v17, :cond_36

    .line 4661
    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->restoreUserBacklightSettings()V

    .line 4662
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_35

    const-string v29, "FTR33129: placeCall(), change emergency call display backlight settings"

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4663
    :cond_35
    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->changeBacklightSettings()V

    .line 4668
    :cond_36
    invoke-interface/range {v25 .. v25}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v29

    const/16 v30, 0x2

    move/from16 v0, v29

    move/from16 v1, v30

    if-ne v0, v1, :cond_37

    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v29, v0

    if-eqz v29, :cond_37

    .line 4671
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v29

    sget-object v30, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-object/from16 v0, v29

    move-object/from16 v1, v30

    if-ne v0, v1, :cond_37

    .line 4674
    const/16 v29, 0x0

    invoke-static/range {v29 .. v29}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 4677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const/16 v30, 0x75

    invoke-static/range {v29 .. v30}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v20

    .line 4678
    .local v20, msg:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    move-object/from16 v29, v0

    const-wide/16 v30, 0x7d0

    move-object/from16 v0, v29

    move-object/from16 v1, v20

    move-wide/from16 v2, v30

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 4681
    move-object v0, v5

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    move-object/from16 v29, v0

    const/16 v30, 0x1

    invoke-virtual/range {v29 .. v30}, Lcom/android/phone/CdmaPhoneCallState;->setThreeWayCallOrigState(Z)V

    .line 4684
    invoke-direct/range {p0 .. p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 4688
    .end local v20           #msg:Landroid/os/Message;
    :cond_37
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .line 4690
    :pswitch_1
    sget-boolean v29, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v29, :cond_38

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "placeCall: specified number was an MMI code: \'"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, "\'."

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, p0

    move-object/from16 v1, v29

    invoke-direct {v0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4700
    :cond_38
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->DIALED_MMI:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .line 4702
    :pswitch_2
    const-string v29, "InCallScreen"

    new-instance v30, Ljava/lang/StringBuilder;

    invoke-direct/range {v30 .. v30}, Ljava/lang/StringBuilder;-><init>()V

    const-string v31, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    move-object/from16 v0, v30

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    const-string v31, "\'."

    invoke-virtual/range {v30 .. v31}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v30

    invoke-static/range {v29 .. v30}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4704
    sget-object v29, Lcom/android/phone/InCallScreen$InCallInitStatus;->CALL_FAILED:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_2

    .line 4628
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

    .line 1963
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_1

    .line 1964
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1965
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1966
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1972
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1973
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x74

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1974
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1975
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1976
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x76

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1980
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1981
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1983
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 1985
    :cond_1
    return-void
.end method

.method private setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V
    .locals 10
    .parameter "newMode"

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    const-string v9, "InCallScreen"

    .line 5811
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setInCallScreenMode: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5812
    :cond_0
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    .line 5813
    sget-object v4, Lcom/android/phone/InCallScreen$43;->$SwitchMap$com$android$phone$InCallScreen$InCallScreenMode:[I

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-virtual {v5}, Lcom/android/phone/InCallScreen$InCallScreenMode;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 5947
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 5949
    :goto_1
    return-void

    .line 5816
    :pswitch_0
    const/4 v2, 0x0

    .line 5817
    .local v2, callInConf:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 5818
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 5823
    :cond_2
    :goto_2
    if-nez v2, :cond_4

    .line 5824
    const-string v4, "InCallScreen"

    const-string v4, "MANAGE_CONFERENCE: no conference call!"

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5826
    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5819
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 5820
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    goto :goto_2

    .line 5831
    :cond_4
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 5834
    .local v3, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-eqz v3, :cond_5

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    if-gt v4, v8, :cond_6

    .line 5835
    :cond_5
    const-string v4, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "MANAGE_CONFERENCE: Bogus TRUE from isConferenceCall(); connections = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5839
    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_1

    .line 5848
    :cond_6
    sget-boolean v4, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-nez v4, :cond_7

    .line 5849
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils;->initManageConferencePanel()V

    .line 5851
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v4, v3}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    .line 5855
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v4, v8}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 5862
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Connection;->getDurationMillis()J

    move-result-wide v0

    .line 5863
    .local v0, callDuration:J
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long/2addr v5, v0

    invoke-virtual {v4, v5, v6}, Lcom/android/phone/ManageConferenceUtils;->startConferenceTime(J)V

    .line 5871
    .end local v0           #callDuration:J
    :goto_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 5867
    :cond_7
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_8

    const-string v4, "- setInCallScreenMode: updating multipartycallscreen"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5868
    :cond_8
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->updateMultiPartyCallView(Ljava/util/List;)V

    .line 5869
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mIsAddCallFromMultiPartyList:Z

    goto :goto_3

    .line 5882
    .end local v2           #callInConf:Lcom/android/internal/telephony/Call;
    .end local v3           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :pswitch_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v4, v6}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 5883
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    invoke-virtual {v4, v6}, Lcom/android/phone/MultiPartyCallUtils;->setPanelVisible(Z)V

    .line 5884
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 5886
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    goto/16 :goto_0

    .line 5894
    :pswitch_2
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5895
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v4, v6}, Lcom/android/phone/ManageConferenceUtils;->setPanelVisible(Z)V

    .line 5896
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    invoke-virtual {v4, v6}, Lcom/android/phone/MultiPartyCallUtils;->setPanelVisible(Z)V

    .line 5897
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v4}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    goto/16 :goto_0

    .line 5901
    :pswitch_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->NORMAL:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v4, v5}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 5903
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 5907
    :pswitch_4
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    sget-object v5, Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;->ENDED:Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;

    invoke-virtual {v4, v5}, Lcom/android/phone/OtaUtils;->setCdmaOtaInCallScreenUiState(Lcom/android/phone/OtaUtils$CdmaOtaInCallScreenUiState$State;)V

    .line 5909
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v4, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_0

    .line 5935
    :pswitch_5
    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 5939
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v4, :cond_1

    .line 5940
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v4}, Lcom/android/phone/OtaUtils;->cleanOtaScreenAndClearOtaStaticState()V

    goto/16 :goto_0

    .line 5813
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

.method private static setTextInfoShown()V
    .locals 1

    .prologue
    .line 6715
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InCallScreen;->mTextInfoShown:Z

    .line 6716
    return-void
.end method

.method private setupPopupKeypad()V
    .locals 14

    .prologue
    const/4 v13, 0x2

    const/4 v12, 0x0

    const/4 v11, 0x3

    const/4 v10, 0x1

    const/4 v9, 0x4

    .line 1216
    const v7, 0x7f0700af

    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v6

    .line 1217
    .local v6, root:Landroid/view/View;
    if-eqz v6, :cond_2

    .line 1218
    const/16 v7, 0xc

    new-array v3, v7, [[I

    new-array v7, v9, [I

    fill-array-data v7, :array_0

    aput-object v7, v3, v12

    new-array v7, v9, [I

    fill-array-data v7, :array_1

    aput-object v7, v3, v10

    new-array v7, v9, [I

    fill-array-data v7, :array_2

    aput-object v7, v3, v13

    new-array v7, v9, [I

    fill-array-data v7, :array_3

    aput-object v7, v3, v11

    new-array v7, v9, [I

    fill-array-data v7, :array_4

    aput-object v7, v3, v9

    const/4 v7, 0x5

    new-array v8, v9, [I

    fill-array-data v8, :array_5

    aput-object v8, v3, v7

    const/4 v7, 0x6

    new-array v8, v9, [I

    fill-array-data v8, :array_6

    aput-object v8, v3, v7

    const/4 v7, 0x7

    new-array v8, v9, [I

    fill-array-data v8, :array_7

    aput-object v8, v3, v7

    const/16 v7, 0x8

    new-array v8, v9, [I

    fill-array-data v8, :array_8

    aput-object v8, v3, v7

    const/16 v7, 0x9

    new-array v8, v9, [I

    fill-array-data v8, :array_9

    aput-object v8, v3, v7

    const/16 v7, 0xa

    new-array v8, v9, [I

    fill-array-data v8, :array_a

    aput-object v8, v3, v7

    const/16 v7, 0xb

    new-array v8, v9, [I

    fill-array-data v8, :array_b

    aput-object v8, v3, v7

    .line 1236
    .local v3, keydata:[[I
    move-object v0, v3

    .local v0, arr$:[[I
    array-length v4, v0

    .local v4, len$:I
    const/4 v1, 0x0

    .end local p0
    .local v1, i$:I
    :goto_0
    if-ge v1, v4, :cond_2

    aget-object v5, v0, v1

    .line 1237
    .local v5, r:[I
    aget v7, v5, v12

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 1238
    .local v2, keyView:Landroid/view/View;
    const v7, 0x7f070038

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    aget v7, v5, v13

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1239
    aget v7, v5, v10

    if-nez v7, :cond_1

    .line 1240
    const v7, 0x7f070039

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    aget v7, v5, v11

    invoke-virtual {p0, v7}, Landroid/widget/TextView;->setText(I)V

    .line 1236
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1241
    :cond_1
    aget v7, v5, v10

    if-ne v7, v10, :cond_0

    .line 1242
    const v7, 0x7f07003a

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    aget v7, v5, v11

    invoke-virtual {p0, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_1

    .line 1247
    .end local v0           #arr$:[[I
    .end local v1           #i$:I
    .end local v2           #keyView:Landroid/view/View;
    .end local v3           #keydata:[[I
    .end local v4           #len$:I
    .end local v5           #r:[I
    :cond_2
    return-void

    .line 1218
    nop

    :array_0
    .array-data 0x4
        0x97t 0x0t 0x7t 0x7ft
        0x1t 0x0t 0x0t 0x0t
        0x3et 0x3t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_1
    .array-data 0x4
        0x98t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x3ft 0x3t 0xbt 0x7ft
        0x4at 0x3t 0xbt 0x7ft
    .end array-data

    :array_2
    .array-data 0x4
        0x99t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x40t 0x3t 0xbt 0x7ft
        0x4bt 0x3t 0xbt 0x7ft
    .end array-data

    :array_3
    .array-data 0x4
        0x9at 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x41t 0x3t 0xbt 0x7ft
        0x4ct 0x3t 0xbt 0x7ft
    .end array-data

    :array_4
    .array-data 0x4
        0x9bt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x42t 0x3t 0xbt 0x7ft
        0x4dt 0x3t 0xbt 0x7ft
    .end array-data

    :array_5
    .array-data 0x4
        0x9ct 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x43t 0x3t 0xbt 0x7ft
        0x4et 0x3t 0xbt 0x7ft
    .end array-data

    :array_6
    .array-data 0x4
        0x9dt 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x44t 0x3t 0xbt 0x7ft
        0x4ft 0x3t 0xbt 0x7ft
    .end array-data

    :array_7
    .array-data 0x4
        0x9et 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x45t 0x3t 0xbt 0x7ft
        0x50t 0x3t 0xbt 0x7ft
    .end array-data

    :array_8
    .array-data 0x4
        0x9ft 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x46t 0x3t 0xbt 0x7ft
        0x51t 0x3t 0xbt 0x7ft
    .end array-data

    :array_9
    .array-data 0x4
        0xa0t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x47t 0x3t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data

    :array_a
    .array-data 0x4
        0xa1t 0x0t 0x7t 0x7ft
        0x0t 0x0t 0x0t 0x0t
        0x48t 0x3t 0xbt 0x7ft
        0x52t 0x3t 0xbt 0x7ft
    .end array-data

    :array_b
    .array-data 0x4
        0xa2t 0x0t 0x7t 0x7ft
        0x2t 0x0t 0x0t 0x0t
        0x49t 0x3t 0xbt 0x7ft
        0x0t 0x0t 0x0t 0x0t
    .end array-data
.end method

.method private showGenericErrorDialog(IZIZ)V
    .locals 6
    .parameter "resid"
    .parameter "showTitle"
    .parameter "titleResid"
    .parameter "isStartupError"

    .prologue
    .line 5489
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5490
    .local v3, msg:Ljava/lang/CharSequence;
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "showGenericErrorDialog(\'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\')..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5495
    :cond_0
    if-eqz p4, :cond_2

    .line 5496
    new-instance v1, Lcom/android/phone/InCallScreen$35;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$35;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5500
    .local v1, clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$36;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$36;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5517
    .local v0, cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    :goto_0
    new-instance v2, Lcom/android/phone/InCallScreen$39;

    invoke-direct {v2, p0}, Lcom/android/phone/InCallScreen$39;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5531
    .local v2, keyListener:Landroid/content/DialogInterface$OnKeyListener;
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    const v5, 0x7f0b016e

    invoke-virtual {v4, v5, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5540
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 5543
    if-eqz p2, :cond_1

    .line 5544
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4, p3}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 5546
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 5547
    return-void

    .line 5505
    .end local v0           #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    .end local v1           #clickListener:Landroid/content/DialogInterface$OnClickListener;
    .end local v2           #keyListener:Landroid/content/DialogInterface$OnKeyListener;
    :cond_2
    new-instance v1, Lcom/android/phone/InCallScreen$37;

    invoke-direct {v1, p0}, Lcom/android/phone/InCallScreen$37;-><init>(Lcom/android/phone/InCallScreen;)V

    .line 5509
    .restart local v1       #clickListener:Landroid/content/DialogInterface$OnClickListener;
    new-instance v0, Lcom/android/phone/InCallScreen$38;

    invoke-direct {v0, p0}, Lcom/android/phone/InCallScreen$38;-><init>(Lcom/android/phone/InCallScreen;)V

    .restart local v0       #cancelListener:Landroid/content/DialogInterface$OnCancelListener;
    goto :goto_0
.end method

.method private showPausePromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 6
    .parameter "c"
    .parameter "postDialStrAfterPause"

    .prologue
    .line 3951
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 3952
    .local v2, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3953
    .local v0, buf:Ljava/lang/StringBuilder;
    const v3, 0x7f0b0173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3954
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3956
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v3, :cond_1

    .line 3957
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3958
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->dismiss()V

    .line 3959
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3962
    :cond_1
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-direct {v3, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 3965
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 3967
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x79

    invoke-static {v3, v4}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 3968
    .local v1, msg:Landroid/os/Message;
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3969
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 3873
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3874
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3875
    .local v0, buf:Ljava/lang/StringBuilder;
    const v2, 0x7f0b0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3876
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3878
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 3879
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3880
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3881
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3884
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0174

    new-instance v4, Lcom/android/phone/InCallScreen$30;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$30;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v3, Lcom/android/phone/InCallScreen$29;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$29;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3901
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3903
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3904
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 5
    .parameter "c"
    .parameter "postDialStr"

    .prologue
    .line 3914
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 3915
    .local v1, r:Landroid/content/res/Resources;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 3916
    .local v0, buf:Ljava/lang/StringBuilder;
    const v2, 0x7f0b0172

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 3917
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3919
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_1

    .line 3920
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3921
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3922
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3925
    :cond_1
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0175

    new-instance v4, Lcom/android/phone/InCallScreen$32;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$32;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b0176

    new-instance v4, Lcom/android/phone/InCallScreen$31;

    invoke-direct {v4, p0, p1}, Lcom/android/phone/InCallScreen$31;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 3941
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3943
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3944
    return-void
.end method

.method private showWildPromptDialog(Lcom/android/internal/telephony/Connection;)V
    .locals 4
    .parameter "c"

    .prologue
    .line 4006
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->createWildPromptView()Landroid/view/View;

    move-result-object v0

    .line 4008
    .local v0, v:Landroid/view/View;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_1

    .line 4009
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4010
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 4011
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4014
    :cond_1
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b0174

    new-instance v3, Lcom/android/phone/InCallScreen$34;

    invoke-direct {v3, p0, p1}, Lcom/android/phone/InCallScreen$34;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    new-instance v2, Lcom/android/phone/InCallScreen$33;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InCallScreen$33;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4039
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 4041
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 4043
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mWildPromptText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 4044
    return-void
.end method

.method private syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4261
    const/4 v2, 0x0

    .line 4262
    .local v2, updateSuccessful:Z
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "syncWithPhoneState()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4263
    :cond_0
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 4264
    :cond_1
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_2

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dumpBluetoothState()V

    .line 4271
    :cond_2
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 4273
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_3

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v3, v4, :cond_4

    .line 4278
    :cond_3
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 4294
    :goto_0
    return-object v3

    .line 4283
    :cond_4
    if-ne v1, v5, :cond_7

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_7

    move v0, v5

    .line 4286
    .local v0, hasPendingMmiCodes:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_5

    if-eqz v0, :cond_8

    .line 4288
    :cond_5
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_6

    const-string v3, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4289
    :cond_6
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 4290
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 4283
    .end local v0           #hasPendingMmiCodes:Z
    :cond_7
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 4293
    .restart local v0       #hasPendingMmiCodes:Z
    :cond_8
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_9

    const-string v3, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4294
    :cond_9
    sget-object v3, Lcom/android/phone/InCallScreen$InCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0
.end method

.method private turnOffAirplaneMode(Z)V
    .locals 3
    .parameter "turnOff"

    .prologue
    .line 7380
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "turnOffAirplaneMode(): turnOff is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7382
    :cond_0
    if-eqz p1, :cond_1

    .line 7383
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 7384
    .local v0, intent:Landroid/content/Intent;
    const-class v1, Lcom/android/phone/AirplaneModeHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 7385
    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 7387
    .end local v0           #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 7388
    return-void
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 1988
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 1989
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 1990
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 1991
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 1992
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 1993
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 1994
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 1995
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 1996
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1997
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    .line 1999
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mRegisteredForPhoneStates:Z

    .line 2000
    return-void
.end method

.method private update3CallButtonValue()V
    .locals 14

    .prologue
    .line 558
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 559
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 560
    .local v2, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v9}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    .line 561
    .local v8, ringingCall:Lcom/android/internal/telephony/Call;
    iget-boolean v9, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-eqz v9, :cond_1

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_1

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_1

    .line 564
    const/4 v9, 0x0

    invoke-static {p0, v3, v9, v3}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v0

    .line 566
    .local v0, activeInfo:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v0, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v9, p0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 568
    .local v1, activeName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mEndActiveAnswerIncomingButton:Landroid/widget/Button;

    const-string v10, "%s\n%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0b032d

    invoke-virtual {p0, v13}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v1, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 571
    const/4 v9, 0x0

    invoke-static {p0, v2, v9, v2}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v4

    .line 573
    .local v4, holdInfo:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v4, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v9, p0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    .line 575
    .local v5, holdName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mEndHoldAnswerIncomingButton:Landroid/widget/Button;

    const-string v10, "%s\n%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0b032d

    invoke-virtual {p0, v13}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v5, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 578
    const/4 v9, 0x0

    invoke-static {p0, v8, v9, v8}, Lcom/android/phone/PhoneUtils;->startGetCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Call;Lcom/android/phone/BlurCallerInfoAsyncQuery$OnQueryCompleteListener;Ljava/lang/Object;)Lcom/android/phone/PhoneUtils$CallerInfoToken;

    move-result-object v6

    .line 580
    .local v6, incomingInfo:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    iget-object v9, v6, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    invoke-static {v9, p0}, Lcom/android/phone/PhoneUtils;->getCompactNameFromCallerInfo(Lcom/android/internal/telephony/CallerInfo;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    .line 582
    .local v7, incomingName:Ljava/lang/String;
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mIgnoreButton:Landroid/widget/Button;

    const-string v10, "%s\n%s"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v12, 0x0

    const v13, 0x7f0b00fd

    invoke-virtual {p0, v13}, Lcom/android/phone/InCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v12, 0x1

    aput-object v7, v11, v12

    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 588
    .end local v0           #activeInfo:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v1           #activeName:Ljava/lang/String;
    .end local v4           #holdInfo:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v5           #holdName:Ljava/lang/String;
    .end local v6           #incomingInfo:Lcom/android/phone/PhoneUtils$CallerInfoToken;
    .end local v7           #incomingName:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 585
    :cond_1
    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v9

    if-nez v9, :cond_0

    .line 586
    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mIgnoreButton:Landroid/widget/Button;

    const v10, 0x7f0b00fd

    invoke-virtual {v9, v10}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private updateDialpadVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6046
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 6047
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 6057
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearDigits()V

    .line 6067
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->okToShowDialpad()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 6079
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->usingSlidingDrawer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 6080
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v0, :cond_1

    .line 6081
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_3

    const v1, 0x7f020049

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerView;->setKeysBackgroundResource(I)V

    .line 6086
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 6087
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6097
    :cond_2
    :goto_1
    return-void

    .line 6081
    :cond_3
    const v1, 0x7f020051

    goto :goto_0

    .line 6091
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_2

    .line 6093
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method

.method private updateInCallBackground()V
    .locals 9

    .prologue
    .line 7572
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v6

    .line 7573
    .local v6, hasRingingCall:Z
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v4

    .line 7574
    .local v4, hasActiveCall:Z
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v5

    .line 7575
    .local v5, hasHoldingCall:Z
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7576
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v2

    .line 7578
    .local v2, bluetoothActive:Z
    const v1, 0x7f020012

    .line 7587
    .local v1, backgroundResId:I
    if-eqz v6, :cond_1

    .line 7589
    if-eqz v2, :cond_0

    .line 7590
    const v1, 0x7f02000e

    .line 7635
    :goto_0
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 7636
    return-void

    .line 7592
    :cond_0
    const v1, 0x7f020012

    goto :goto_0

    .line 7594
    :cond_1
    if-eqz v5, :cond_2

    if-nez v4, :cond_2

    .line 7596
    const v1, 0x7f020011

    goto :goto_0

    .line 7600
    :cond_2
    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v7}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v3

    .line 7601
    .local v3, fgState:Lcom/android/internal/telephony/Call$State;
    sget-object v7, Lcom/android/phone/InCallScreen$43;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 7631
    const v1, 0x7f020012

    goto :goto_0

    .line 7605
    :pswitch_0
    if-eqz v2, :cond_3

    .line 7606
    const v1, 0x7f02000e

    goto :goto_0

    .line 7608
    :cond_3
    const v1, 0x7f02000f

    .line 7610
    goto :goto_0

    .line 7613
    :pswitch_1
    const v1, 0x7f020010

    .line 7614
    goto :goto_0

    .line 7618
    :pswitch_2
    if-eqz v2, :cond_4

    .line 7619
    const v1, 0x7f02000e

    goto :goto_0

    .line 7621
    :cond_4
    const v1, 0x7f020012

    .line 7623
    goto :goto_0

    .line 7601
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method private updateManageConferencePanelIfNecessary()V
    .locals 10

    .prologue
    const-string v9, "updateManageConferencePanelIfNecessary: finishing..."

    const-string v8, "InCallScreen"

    const-string v7, "- syncWithPhoneState failed! status = "

    .line 5967
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 5968
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateManageConferencePanel: fgCall "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5970
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_4

    .line 5971
    move-object v0, v2

    .line 5980
    .local v0, confCall:Lcom/android/internal/telephony/Call;
    :goto_0
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 5981
    .local v1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    if-nez v1, :cond_6

    .line 5982
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_1

    const-string v5, "==> no connections on foreground call!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5984
    :cond_1
    sget-object v5, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 5985
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v4

    .line 5986
    .local v4, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v4, v5, :cond_3

    .line 5987
    const-string v5, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- syncWithPhoneState failed! status = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5990
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_2

    const-string v5, "updateManageConferencePanelIfNecessary: finishing..."

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5991
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 6026
    .end local v0           #confCall:Lcom/android/internal/telephony/Call;
    .end local v1           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    .end local v4           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_3
    :goto_1
    return-void

    .line 5972
    :cond_4
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_5

    .line 5973
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .restart local v0       #confCall:Lcom/android/internal/telephony/Call;
    goto :goto_0

    .line 5976
    .end local v0           #confCall:Lcom/android/internal/telephony/Call;
    :cond_5
    const-string v5, "No Conference Call"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 5997
    .restart local v0       #confCall:Lcom/android/internal/telephony/Call;
    .restart local v1       #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 5998
    .local v3, numConnections:I
    const/4 v5, 0x1

    if-gt v3, v5, :cond_9

    .line 5999
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_7

    const-string v5, "==> foreground call no longer a conference!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6001
    :cond_7
    sget-object v5, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 6002
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v4

    .line 6003
    .restart local v4       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v4, v5, :cond_3

    .line 6004
    const-string v5, "InCallScreen"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- syncWithPhoneState failed! status = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6007
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_8

    const-string v5, "updateManageConferencePanelIfNecessary: finishing..."

    invoke-direct {p0, v9}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6008
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    goto :goto_1

    .line 6016
    .end local v4           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_9
    sget-boolean v5, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v5}, Lcom/android/phone/ManageConferenceUtils;->getNumCallersInConference()I

    move-result v5

    if-eq v3, v5, :cond_b

    .line 6017
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_a

    const-string v5, "==> Conference size has changed; need to rebuild UI!"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6018
    :cond_a
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v5, v1}, Lcom/android/phone/ManageConferenceUtils;->updateManageConferencePanel(Ljava/util/List;)V

    goto :goto_1

    .line 6021
    :cond_b
    sget-boolean v5, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    invoke-virtual {v5}, Lcom/android/phone/MultiPartyCallUtils;->getNumCallersInActualConnection()I

    move-result v5

    if-eq v3, v5, :cond_3

    .line 6022
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_c

    const-string v5, "updateManageConferencePanelIfNecessary: updateManageMultiPartyPanel"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6023
    :cond_c
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    invoke-virtual {v5, v1}, Lcom/android/phone/MultiPartyCallUtils;->updateManageMultiPartyPanel(Ljava/util/List;)V

    .line 6024
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsAddCallFromMultiPartyList:Z

    goto/16 :goto_1
.end method

.method private updateMenuButtonHint()V
    .locals 7

    .prologue
    .line 5314
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_0

    const-string v5, "updateMenuButtonHint()..."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5315
    :cond_0
    const/4 v4, 0x1

    .line 5317
    .local v4, hintVisible:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 5318
    .local v2, hasRingingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5319
    .local v0, hasActiveCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5323
    .local v1, hasHoldingCall:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v5, v6, :cond_2

    .line 5325
    const/4 v4, 0x0

    .line 5336
    :cond_1
    :goto_0
    if-eqz v4, :cond_5

    const/4 v5, 0x0

    move v3, v5

    .line 5343
    .local v3, hintVisibility:I
    :goto_1
    return-void

    .line 5326
    .end local v3           #hintVisibility:I
    :cond_2
    if-eqz v2, :cond_4

    if-eqz v0, :cond_3

    if-eqz v1, :cond_4

    .line 5329
    :cond_3
    const/4 v4, 0x0

    goto :goto_0

    .line 5330
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v5

    if-nez v5, :cond_1

    .line 5333
    const/4 v4, 0x0

    goto :goto_0

    .line 5336
    :cond_5
    const/16 v5, 0x8

    move v3, v5

    goto :goto_1
.end method

.method private updateProviderOverlay()V
    .locals 11

    .prologue
    const/16 v10, 0x7a

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 5284
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateProviderOverlay: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5286
    :cond_0
    const v5, 0x7f0700c6

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 5288
    .local v2, overlay:Landroid/view/ViewGroup;
    iget-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    if-eqz v5, :cond_1

    .line 5289
    const v5, 0x7f0b0385

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 5290
    .local v3, template:Ljava/lang/CharSequence;
    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/CharSequence;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    aput-object v6, v5, v9

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    aput-object v7, v5, v6

    invoke-static {v3, v5}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 5293
    .local v4, text:Ljava/lang/CharSequence;
    const v5, 0x7f0700c7

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 5294
    .local v0, message:Landroid/widget/TextView;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v5, v8, v8, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 5295
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5297
    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5301
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v5, v10}, Landroid/os/Handler;->removeMessages(I)V

    .line 5302
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v5, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 5303
    .local v1, msg:Landroid/os/Message;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v6, 0x1388

    invoke-virtual {v5, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 5307
    .end local v0           #message:Landroid/widget/TextView;
    .end local v1           #msg:Landroid/os/Message;
    .end local v3           #template:Ljava/lang/CharSequence;
    .end local v4           #text:Ljava/lang/CharSequence;
    :goto_0
    return-void

    .line 5305
    :cond_1
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 15

    .prologue
    const/4 v14, 0x0

    const/4 v13, 0x1

    .line 4051
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_0

    const-string v11, "updateScreen()..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4052
    :cond_0
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 4053
    .local v4, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 4054
    .local v1, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v10

    .line 4057
    .local v10, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    iget-boolean v12, p0, Lcom/android/phone/InCallScreen;->isEmergencyCallInProgress:Z

    if-nez v12, :cond_2

    move v12, v13

    :goto_0
    invoke-virtual {v11, v12}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 4065
    iget-boolean v11, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    if-nez v11, :cond_3

    .line 4066
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_1

    const-string v11, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4241
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v12, v14

    .line 4057
    goto :goto_0

    .line 4072
    :cond_3
    sget-boolean v11, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-eqz v11, :cond_5

    .line 4073
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_4

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_9

    .line 4075
    :cond_4
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mVaGroup:Landroid/view/View;

    invoke-virtual {v11, v14}, Landroid/view/View;->setVisibility(I)V

    .line 4082
    :cond_5
    :goto_2
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4083
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 4084
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4088
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v12

    invoke-virtual {v11, v12}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 4094
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v11, v12, :cond_6

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v12, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v11, v12, :cond_6

    invoke-static {v4, v1}, Lcom/android/phone/PhoneUtils;->isConferenceCallExclusive(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v11

    if-eqz v11, :cond_6

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v11

    if-ne v11, v13, :cond_6

    .line 4098
    sget-object v11, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 4102
    :cond_6
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4104
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v12, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v11, v12, :cond_a

    .line 4105
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_7

    const-string v11, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4106
    :cond_7
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v11, :cond_1

    .line 4107
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_8

    const-string v11, "- updateScreen: otaUtils is not null, call otaShowProperScreen"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4108
    :cond_8
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v11}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    goto/16 :goto_1

    .line 4077
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_9
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mVaGroup:Landroid/view/View;

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 4111
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_a
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v12, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v11, v12, :cond_11

    .line 4112
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_b

    const-string v11, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4114
    :cond_b
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    .line 4115
    iget-object v11, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v11, v11, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v12, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v11, v12, :cond_e

    .line 4117
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_c

    const-string v11, "- updateScreen: OTA_STATUS_ACTIVATION"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4118
    :cond_c
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v11, :cond_1

    .line 4119
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_d

    const-string v11, "- updateScreen: otaUtils is not null, call otaShowActivationScreen"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4121
    :cond_d
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v11}, Lcom/android/phone/OtaUtils;->otaShowActivateScreen()V

    goto/16 :goto_1

    .line 4124
    :cond_e
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_f

    const-string v11, "- updateScreen: OTA Call end state for Dialogs"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4125
    :cond_f
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v11, :cond_1

    .line 4126
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_10

    const-string v11, "- updateScreen: Show OTA Success Failure dialog"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4127
    :cond_10
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v11}, Lcom/android/phone/OtaUtils;->otaShowSuccessFailure()V

    goto/16 :goto_1

    .line 4131
    :cond_11
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v12, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v11, v12, :cond_13

    .line 4132
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_12

    const-string v11, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4133
    :cond_12
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateManageConferencePanelIfNecessary()V

    .line 4135
    sget-boolean v11, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v11, :cond_15

    .line 4136
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v12, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11, v12}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_1

    .line 4139
    :cond_13
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_19

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_19

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v11, v12, :cond_19

    sget-boolean v11, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v11, :cond_19

    .line 4143
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 4144
    .local v3, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_14

    const-string v11, "- updateScreen: updating multipartycallscreen..1"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4145
    :cond_14
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->updateMultiPartyCallView(Ljava/util/List;)V

    .line 4170
    .end local v3           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_15
    :goto_3
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_16

    const-string v11, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4171
    :cond_16
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v12, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11, v12}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 4173
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v11

    if-nez v11, :cond_17

    .line 4175
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_20

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_20

    .line 4177
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v11

    if-eqz v11, :cond_1f

    .line 4178
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v11, v14}, Landroid/widget/Button;->setEnabled(Z)V

    .line 4196
    :cond_17
    :goto_4
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 4197
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 4198
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateMenuButtonHint()V

    .line 4202
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v11

    if-eqz v11, :cond_22

    .line 4203
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 4240
    :cond_18
    :goto_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->update3CallButtonValue()V

    goto/16 :goto_1

    .line 4148
    :cond_19
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v12, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v11, v12, :cond_1b

    sget-boolean v11, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v11, :cond_1b

    .line 4150
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 4151
    .restart local v3       #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_1a

    const-string v11, "- updateScreen: updating multipartycallscreen..2"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4152
    :cond_1a
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->updateMultiPartyCallView(Ljava/util/List;)V

    goto :goto_3

    .line 4154
    .end local v3           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_1b
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_1d

    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v11, v12, :cond_1d

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v11, v12, :cond_1d

    sget-boolean v11, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v11, :cond_1d

    .line 4158
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v3

    .line 4159
    .restart local v3       #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_1c

    const-string v11, "- updateScreen: updating multipartycallscreen..3"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4160
    :cond_1c
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->updateMultiPartyCallView(Ljava/util/List;)V

    goto/16 :goto_3

    .line 4162
    .end local v3           #connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    :cond_1d
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v12, Lcom/android/phone/InCallScreen$InCallScreenMode;->CALL_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v11, v12, :cond_15

    .line 4163
    sget-boolean v11, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v11, :cond_1e

    const-string v11, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4166
    :cond_1e
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v12, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11, v12}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_1

    .line 4180
    :cond_1f
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v11, :cond_17

    .line 4181
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v11}, Lcom/android/phone/CallCard;->disableSwapButton()V

    goto/16 :goto_4

    .line 4185
    :cond_20
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_17

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v11, v12, :cond_17

    .line 4187
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v11

    if-eqz v11, :cond_21

    .line 4188
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v11, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_4

    .line 4190
    :cond_21
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v11, :cond_17

    .line 4191
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v11}, Lcom/android/phone/CallCard;->enableSwapButton()V

    goto/16 :goto_4

    .line 4208
    :cond_22
    const/4 v9, 0x0

    .line 4209
    .local v9, postDialStr:Ljava/lang/String;
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v5

    .line 4210
    .local v5, fgConnections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v11

    invoke-interface {v11}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    .line 4211
    .local v8, phoneType:I
    const/4 v11, 0x2

    if-ne v8, v11, :cond_26

    .line 4212
    iget-object v11, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v11}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v6

    .line 4213
    .local v6, fgLatestConnection:Lcom/android/internal/telephony/Connection;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v11, :cond_24

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v11

    iget-object v11, v11, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v11}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v11

    sget-object v12, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v11, v12, :cond_24

    .line 4216
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_23
    :goto_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 4217
    .local v2, cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_23

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v11, v12, :cond_23

    .line 4219
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_6

    .line 4222
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_24
    if-eqz v6, :cond_18

    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v11, v12, :cond_18

    .line 4224
    sget-boolean v11, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v11, :cond_25

    const-string v11, "show the Wait dialog for CDMA"

    invoke-direct {p0, v11}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4225
    :cond_25
    invoke-virtual {v6}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v9

    .line 4226
    invoke-direct {p0, v6, v9}, Lcom/android/phone/InCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_5

    .line 4228
    .end local v6           #fgLatestConnection:Lcom/android/internal/telephony/Connection;
    :cond_26
    if-eq v8, v13, :cond_27

    const/4 v11, 0x3

    if-ne v8, v11, :cond_29

    .line 4230
    :cond_27
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_28
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_18

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/Connection;

    .line 4231
    .restart local v2       #cn:Lcom/android/internal/telephony/Connection;
    if-eqz v2, :cond_28

    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v11

    sget-object v12, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v11, v12, :cond_28

    .line 4232
    invoke-virtual {v2}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v9

    .line 4233
    invoke-direct {p0, v2, v9}, Lcom/android/phone/InCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_7

    .line 4237
    .end local v2           #cn:Lcom/android/internal/telephony/Connection;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_29
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
.end method


# virtual methods
.method answerCall()V
    .locals 2

    .prologue
    .line 7288
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "answerCall"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7291
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 7298
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const v1, 0x8000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7300
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->WAITING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_2

    .line 7302
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hideIncoming()V

    .line 7305
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->fixFocus()V

    .line 7306
    return-void
.end method

.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 6467
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6468
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 6469
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 6479
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6480
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    .line 6481
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 6484
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6485
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_1

    .line 6486
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 6488
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    .line 6489
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter "dismissImmediate"

    .prologue
    const/16 v3, 0x70

    .line 6296
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

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

    .line 6298
    :cond_0
    if-eqz p1, :cond_1

    .line 6299
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->closeOptionsMenu()V

    .line 6305
    :goto_0
    return-void

    .line 6301
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6302
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method dumpFocus(Ljava/lang/String;)V
    .locals 4
    .parameter "tag"

    .prologue
    const-string v3, " >>>>>>>>>>>>>>>>>> "

    .line 7277
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getCurrentFocus()Landroid/view/View;

    move-result-object v0

    .line 7278
    .local v0, v:Landroid/view/View;
    if-eqz v0, :cond_1

    .line 7279
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " =======>            Focused View: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Landroid/view/View;->getId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7282
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    if-eqz v1, :cond_0

    .line 7283
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-----> mDTMFDisplay isFocusable? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->isFocusable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7285
    :cond_0
    return-void

    .line 7281
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " >>>>>>>>>>>>>>>>>> "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " =======>            no one focused "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public endInCallScreenSession()V
    .locals 1

    .prologue
    .line 1953
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "endInCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1954
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1955
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1956
    return-void
.end method

.method public exclConfCallElapsedTimeView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 6988
    const v1, 0x7f0700c2

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6989
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 6990
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 6992
    :cond_0
    const v1, 0x7f070105

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public exclConfCallTitleView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 6980
    const v1, 0x7f0700c2

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6981
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 6982
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 6984
    :cond_0
    const v1, 0x7f070104

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public finish()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1899
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "finish()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1903
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 1904
    .local v1, phoneType:I
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1905
    .local v0, app:Lcom/android/phone/PhoneApp;
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenClosing:Z

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v2, v3, :cond_1

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v2, v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v2, v3, :cond_2

    .line 1911
    :cond_1
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mInCallScreenClosing:Z

    .line 1916
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f09000f

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 1918
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->removeDialog(I)V

    .line 1922
    :cond_3
    sget-boolean v2, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v2, :cond_4

    .line 1924
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->isMuteChecked:Z

    .line 1925
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->isSpeakerChecked:Z

    .line 1929
    :cond_4
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->getIsRedialCall()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1930
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->clearIsRedialCall()V

    .line 1934
    :cond_5
    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1936
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mDeviceProvisioned:Z

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mInCallScreenClosing:Z

    if-nez v2, :cond_6

    .line 1937
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->moveTaskToBack(Z)Z

    .line 1943
    :goto_0
    return-void

    .line 1939
    :cond_6
    const-string v2, "Calling_Kpi_Debug"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " InCallScreen finised mDeviceProvisioned:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mDeviceProvisioned:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "mInCallScreenClosing"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mInCallScreenClosing:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1940
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method getDialerDisplay()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 6192
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    return-object v0
.end method

.method public getUpdatedInCallControlState()Lcom/android/phone/InCallControlState;
    .locals 1

    .prologue
    .line 7562
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "getUpdatedInCallControlState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7563
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    invoke-virtual {v0}, Lcom/android/phone/InCallControlState;->update()V

    .line 7564
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallControlState:Lcom/android/phone/InCallControlState;

    return-object v0
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter "id"

    .prologue
    .line 5220
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

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

    .line 5222
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 5270
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleOnscreenButtonClick: unexpected ID "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5273
    :goto_0
    return-void

    .line 5230
    :sswitch_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 5233
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 5238
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    goto :goto_0

    .line 5241
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 5244
    :sswitch_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto :goto_0

    .line 5247
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 5250
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 5253
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    goto :goto_0

    .line 5256
    :sswitch_8
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 5259
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 5262
    :sswitch_a
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 5266
    :sswitch_b
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 5222
    :sswitch_data_0
    .sparse-switch
        0x7f07001e -> :sswitch_0
        0x7f07001f -> :sswitch_1
        0x7f070065 -> :sswitch_9
        0x7f07006a -> :sswitch_6
        0x7f0700d9 -> :sswitch_2
        0x7f0700dc -> :sswitch_3
        0x7f0700de -> :sswitch_b
        0x7f0700e1 -> :sswitch_a
        0x7f0700e2 -> :sswitch_4
        0x7f0700e3 -> :sswitch_5
        0x7f0700e5 -> :sswitch_7
        0x7f0700e6 -> :sswitch_8
    .end sparse-switch
.end method

.method public handleOtaCallEnd()V
    .locals 3

    .prologue
    .line 7409
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7411
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "handleOtaCallEnd entering"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7412
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

    .line 7418
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "handleOtaCallEnd - Set OTA Call End stater"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7419
    :cond_2
    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 7420
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 7422
    :cond_3
    return-void
.end method

.method public hideIncoming()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 6907
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "hideIncoming ... :"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6908
    :cond_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterIncoming:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6910
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v2

    .line 6911
    .local v2, muteState:Z
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v3

    .line 6912
    .local v3, speakerState:Z
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "speaker state="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6913
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_6

    .line 6916
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6917
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6918
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallButtonTwoCallsLand:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6920
    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v4, :cond_5

    .line 6921
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTwoCallsFirstLineActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6922
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mMuteButtonTwoCallsLand:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6923
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSpeakerButtonTwoCallsLand:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6924
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSpeakerButtonTwoCallsLand:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v5

    if-nez v5, :cond_4

    move v5, v8

    :goto_0
    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 6933
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    invoke-virtual {v4}, Landroid/widget/EditText;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6937
    .local v0, lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplayBottomMargin:I

    add-int/lit16 v4, v4, 0x84

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 6938
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    invoke-virtual {v4, v0}, Landroid/widget/EditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6976
    .end local v0           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_3
    :goto_2
    return-void

    :cond_4
    move v5, v6

    .line 6924
    goto :goto_0

    .line 6926
    :cond_5
    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v4, :cond_2

    .line 6927
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTwoCallsFirstLineActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6928
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mTwoCallsKeypadButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_1

    .line 6941
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isDialerOpened()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6942
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 6943
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6949
    :cond_7
    :goto_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    if-eqz v4, :cond_8

    .line 6950
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6952
    :cond_8
    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v4, :cond_9

    .line 6953
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 6954
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v5

    invoke-virtual {v4, v5}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6956
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v2}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6957
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v4, v3}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 6961
    :cond_9
    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v4, :cond_3

    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v4, :cond_3

    .line 6962
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 6963
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHideKeypadButton:Landroid/widget/ImageButton;

    invoke-virtual {v4}, Landroid/widget/ImageButton;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6965
    .restart local v0       #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonTopMargin:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 6966
    iget v4, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonLeftMargin:I

    iput v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6967
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mHideKeypadButton:Landroid/widget/ImageButton;

    invoke-virtual {v4, v0}, Landroid/widget/ImageButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 6969
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4}, Landroid/widget/SlidingDrawer;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 6971
    .local v1, mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    iget v4, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonWidth:I

    iget v5, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonLeftMargin:I

    add-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 6972
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4, v1}, Landroid/widget/SlidingDrawer;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto/16 :goto_2

    .line 6946
    .end local v0           #lp:Landroid/view/ViewGroup$MarginLayoutParams;
    .end local v1           #mlp:Landroid/view/ViewGroup$MarginLayoutParams;
    :cond_a
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6947
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    invoke-virtual {v4, v8}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_3
.end method

.method public hideResumeButton()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0x8

    const/4 v7, 0x0

    .line 6600
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_0

    const-string v5, "hideResumeButton ... :"

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6601
    :cond_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 6602
    .local v3, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6603
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 6604
    .local v4, ringingCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_7

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_7

    move v5, v9

    :goto_0
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 6610
    .local v1, callState:Ljava/lang/Boolean;
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v5

    if-nez v5, :cond_8

    .line 6611
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 6612
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6617
    :goto_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_1

    sget-boolean v5, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v5, :cond_2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_9

    sget-boolean v5, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v5, :cond_9

    iget-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsAddCallFromMultiPartyList:Z

    if-nez v5, :cond_9

    .line 6619
    :cond_2
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 6620
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6646
    :goto_2
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v5

    sget-object v6, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v5, v6, :cond_f

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v5

    if-eqz v5, :cond_f

    .line 6647
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_3

    .line 6648
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6650
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mEndCallQvgaButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 6651
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 6652
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 6653
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v5, v7}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 6654
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6655
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v5, :cond_4

    .line 6656
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 6657
    :cond_4
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v5, :cond_5

    .line 6658
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    invoke-virtual {v5, v7}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6669
    :cond_5
    :goto_3
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_6

    sget-boolean v5, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v5, :cond_6

    iget-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsAddCallFromMultiPartyList:Z

    if-eqz v5, :cond_6

    .line 6670
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 6672
    :cond_6
    return-void

    .end local v1           #callState:Ljava/lang/Boolean;
    :cond_7
    move v5, v7

    .line 6604
    goto/16 :goto_0

    .line 6614
    .restart local v1       #callState:Ljava/lang/Boolean;
    :cond_8
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v5

    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 6615
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_1

    .line 6622
    :cond_9
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_b

    .line 6624
    :cond_a
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 6625
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6626
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 6629
    :cond_b
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    .line 6630
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6632
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_e

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v5, :cond_e

    .line 6634
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v5

    iget-object v5, v5, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v5}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 6635
    .local v2, currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v2, v5, :cond_c

    sget-object v5, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v5, :cond_d

    .line 6636
    :cond_c
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v7}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 6638
    :cond_d
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 6643
    .end local v2           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_e
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v5, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 6661
    :cond_f
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    if-eqz v5, :cond_10

    .line 6662
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v5, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6664
    :cond_10
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v5, v8}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_3
.end method

.method public hideSwitchCallButton()V
    .locals 2

    .prologue
    .line 6593
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "hideSwitchCallButton ...:"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6594
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 6595
    :cond_1
    return-void
.end method

.method ignoreCall()V
    .locals 1

    .prologue
    .line 7309
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ignoreCall"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7310
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 7311
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->fixFocus()V

    .line 7312
    return-void
.end method

.method internalAnswerAndEnd()V
    .locals 2

    .prologue
    .line 5742
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalAnswerAndEnd()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5743
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 5746
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    .line 5747
    return-void
.end method

.method internalAnswerAndEndHolding()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5709
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "internalAnswerAndEndHolding()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5711
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->hangupHoldingCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 5713
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, " success on PhoneUtils.hangupHoldingCall"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5714
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    .line 5715
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 5716
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v0, v2}, Lcom/android/phone/CallNotifier;->setEndingBeforeSwitch(Z)V

    .line 5720
    .end local v0           #notifier:Lcom/android/phone/CallNotifier;
    :cond_2
    :goto_0
    return-void

    .line 5718
    :cond_3
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "end holding failed!"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method internalAnswerCall()V
    .locals 9

    .prologue
    .line 5640
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_0

    const-string v6, "internalAnswerCall()..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5643
    :cond_0
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 5645
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_2

    .line 5646
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 5647
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 5648
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 5649
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_3

    .line 5650
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_1

    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5652
    :cond_1
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 5682
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_2
    :goto_0
    return-void

    .line 5654
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_3
    const/4 v6, 0x1

    if-eq v4, v6, :cond_4

    const/4 v6, 0x3

    if-ne v4, v6, :cond_8

    .line 5660
    :cond_4
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 5661
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 5663
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    .line 5664
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_5

    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5668
    :cond_5
    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v6, v5}, Lcom/android/phone/PhoneUtils;->answerAndEndActive(Lcom/android/internal/telephony/CallManager;Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5674
    :cond_6
    sget-boolean v6, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v6, :cond_7

    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5675
    :cond_7
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 5679
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_8
    new-instance v6, Ljava/lang/IllegalStateException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unexpected phone type: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method internalEndActiveAnswer()Z
    .locals 1

    .prologue
    .line 5687
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalEndActiveAnswer()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5688
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5689
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "  end active & answer waiting: 1"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5690
    :cond_1
    const/4 v0, 0x0

    .line 5693
    :goto_0
    return v0

    .line 5692
    :cond_2
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "  end active & answer waiting: 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5693
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    goto :goto_0
.end method

.method internalEndHoldAnswer()Z
    .locals 2

    .prologue
    .line 5725
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalEndHoldAnswer()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5726
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5727
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "  end hold & answer waiting: 1"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5728
    :cond_1
    const/4 v0, 0x0

    .line 5733
    :goto_0
    return v0

    .line 5730
    :cond_2
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "  end hold & answer waiting: 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5731
    :cond_3
    const-wide/16 v0, 0x3e8

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    .line 5732
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 5733
    const/4 v0, 0x1

    goto :goto_0
.end method

.method internalHangup()V
    .locals 1

    .prologue
    .line 5764
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5765
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 5766
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 5753
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5754
    :cond_0
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 5757
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 5758
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;
    .locals 12
    .parameter "intent"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v11, "multi_party_call"

    const-string v10, "com.android.phone.ShowDialpad"

    const-string v9, "Multi_party_caller_list"

    .line 2068
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_1

    .line 2069
    :cond_0
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2180
    :goto_0
    return-object v5

    .line 2072
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->checkIsOtaCall(Landroid/content/Intent;)Z

    .line 2074
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2075
    .local v0, action:Ljava/lang/String;
    sget-boolean v5, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "internalResolveIntent: action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2082
    :cond_2
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2086
    .local v1, app:Lcom/android/phone/PhoneApp;
    const-string v5, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_5

    .line 2088
    sget-object v5, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 2089
    iget-object v5, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v5, :cond_3

    iget-object v5, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v5, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    if-nez v5, :cond_3

    .line 2091
    iget-object v5, v1, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iput-boolean v8, v5, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->isOtaCallIntentProcessed:Z

    .line 2092
    iget-object v5, v1, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    sget-object v6, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    iput-object v6, v5, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    .line 2096
    :cond_3
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v5, :cond_4

    .line 2097
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iput-boolean v8, v5, Lcom/android/phone/OtaUtils;->mIsSetupMode:Z

    .line 2098
    const-string v5, "Set otaUtils.mIsSetupMode to true here."

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2101
    :cond_4
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2102
    :cond_5
    const-string v5, "android.intent.action.ANSWER"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 2103
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    .line 2104
    invoke-virtual {v1, v7}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2105
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto :goto_0

    .line 2106
    :cond_6
    const-string v5, "android.intent.action.CALL"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    const-string v5, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_f

    .line 2108
    :cond_7
    invoke-virtual {v1, v7}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2111
    sget-boolean v5, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-nez v5, :cond_d

    .line 2112
    const-string v5, "multi_party_call"

    invoke-virtual {p1, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    sput-boolean v5, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    .line 2114
    sget-boolean v5, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v5, :cond_9

    .line 2115
    const-string v5, "Multi_party_caller_list"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 2116
    const-string v5, "Multi_party_caller_list"

    invoke-virtual {p1, v9}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    .line 2117
    .local v2, mpc:Landroid/os/Bundle;
    const-string v5, "MPC_List"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mMultiPartyNumberList:Ljava/util/ArrayList;

    .line 2119
    .end local v2           #mpc:Landroid/os/Bundle;
    :cond_8
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mMultiPartyNumberList:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Lcom/android/phone/MultiPartyCallUtils;->initMultiPartyCallPanel(Ljava/util/ArrayList;)V

    .line 2129
    :cond_9
    :goto_1
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->hasPhoneProviderExtras(Landroid/content/Intent;)Z

    move-result v5

    if-eqz v5, :cond_e

    .line 2130
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderLabel(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/CharSequence;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    .line 2131
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getProviderIcon(Landroid/content/Context;Landroid/content/Intent;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    .line 2132
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->getProviderGatewayUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    .line 2133
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->formatProviderUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    .line 2134
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 2136
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderLabel:Ljava/lang/CharSequence;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderGatewayUri:Landroid/net/Uri;

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mProviderAddress:Ljava/lang/String;

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 2138
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    .line 2143
    :cond_b
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/phone/InCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v4

    .line 2144
    .local v4, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-ne v4, v5, :cond_c

    .line 2147
    invoke-virtual {v1, v8}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    :cond_c
    move-object v5, v4

    .line 2149
    goto/16 :goto_0

    .line 2122
    .end local v4           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_d
    const-string v5, "multi_party_call"

    invoke-virtual {p1, v11, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 2123
    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsAddCallFromMultiPartyList:Z

    goto :goto_1

    .line 2141
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->clearProvider()V

    goto :goto_2

    .line 2150
    :cond_f
    const-string v5, "android.intent.action.MAIN"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_15

    .line 2158
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v5, v6, :cond_10

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v6, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v5, v6, :cond_11

    .line 2161
    :cond_10
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 2162
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 2164
    :cond_11
    const-string v5, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v10}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_13

    .line 2165
    const-string v5, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v10, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v3

    .line 2166
    .local v3, showDialpad:Z
    sget-boolean v5, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v5, :cond_12

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2167
    :cond_12
    if-eqz v3, :cond_14

    .line 2168
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v5, v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 2173
    .end local v3           #showDialpad:Z
    :cond_13
    :goto_3
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 2170
    .restart local v3       #showDialpad:Z
    :cond_14
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v5, v7}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    goto :goto_3

    .line 2174
    .end local v3           #showDialpad:Z
    :cond_15
    const-string v5, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_16

    .line 2175
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0

    .line 2177
    :cond_16
    const-string v5, "InCallScreen"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "internalResolveIntent: unexpected intent action: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    goto/16 :goto_0
.end method

.method internalSwitchActiveHoldEndActiveAnswer()Z
    .locals 1

    .prologue
    .line 5697
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, " : internalSwitchActiveHoldEndActiveAnswer()"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5698
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)V

    .line 5699
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalEndActiveAnswer()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5700
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, " failed  : internalSwitchActiveHoldEndActiveAnswer() "

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5701
    :cond_1
    const/4 v0, 0x0

    .line 5703
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 6380
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_1

    .line 6381
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6382
    :cond_0
    const/4 v1, 0x0

    .line 6386
    :goto_0
    return v1

    .line 6384
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 6385
    .local v0, isAudioOn:Z
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_2

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

    :cond_2
    move v1, v0

    .line 6386
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v8, " msec ago)"

    .line 6400
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6401
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_0
    move v2, v7

    .line 6425
    :goto_0
    return v2

    .line 6409
    :cond_1
    iget-boolean v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v2, :cond_5

    .line 6410
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long v0, v2, v4

    .line 6412
    .local v0, timeSinceRequest:J
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    .line 6413
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_2

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> TRUE (requested "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec ago)"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_2
    move v2, v7

    .line 6415
    goto :goto_0

    .line 6417
    :cond_3
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isBluetoothAudioConnectedOrPending: ==> FALSE (request too old: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " msec ago)"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6419
    :cond_4
    iput-boolean v6, p0, Lcom/android/phone/InCallScreen;->mBluetoothConnectionPending:Z

    move v2, v6

    .line 6420
    goto :goto_0

    .line 6424
    .end local v0           #timeSinceRequest:J
    :cond_5
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_6

    const-string v2, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_6
    move v2, v6

    .line 6425
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    .line 6353
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "isBluetoothAvailable()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6354
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v2, :cond_2

    .line 6356
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_1

    const-string v2, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6357
    :cond_1
    const/4 v2, 0x0

    .line 6373
    :goto_0
    return v2

    .line 6361
    :cond_2
    const/4 v1, 0x0

    .line 6362
    .local v1, isConnected:Z
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v2, :cond_5

    .line 6363
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6364
    .local v0, headset:Landroid/bluetooth/BluetoothDevice;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v3, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6365
    :cond_3
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - headset address: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6366
    :cond_4
    if-eqz v0, :cond_5

    .line 6367
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    .line 6368
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  - isConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6372
    .end local v0           #headset:Landroid/bluetooth/BluetoothDevice;
    :cond_5
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ==> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_6
    move v2, v1

    .line 6373
    goto/16 :goto_0
.end method

.method isDialerOpened()Z
    .locals 1

    .prologue
    .line 6103
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
    .line 1959
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method isKeyEventAcceptableDTMF(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 3061
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
    .line 5955
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

.method public isMultiPartyCallSessionOn()Z
    .locals 1

    .prologue
    .line 591
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    return v0
.end method

.method public isOtaCallInActiveState()Z
    .locals 3

    .prologue
    .line 7392
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7393
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

    .line 7397
    :cond_0
    const/4 v1, 0x1

    .line 7399
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isOtaCallInEndState()Z
    .locals 2

    .prologue
    .line 7425
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

    .line 6280
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    .line 6281
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

.method public multiPartyCallElapsedTimeView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 7006
    const v1, 0x7f0700ce

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 7007
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 7008
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 7010
    :cond_0
    const v1, 0x7f07011f

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public multiPartyCallTitleView()Landroid/widget/TextView;
    .locals 2

    .prologue
    .line 6998
    const v1, 0x7f0700ce

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewStub;

    .line 6999
    .local v0, stub:Landroid/view/ViewStub;
    if-eqz v0, :cond_0

    .line 7000
    invoke-virtual {v0}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    .line 7002
    :cond_0
    const v1, 0x7f07011e

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/TextView;

    return-object p0
.end method

.method public multiPartyCallerCount()I
    .locals 1

    .prologue
    .line 6029
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    invoke-virtual {v0}, Lcom/android/phone/MultiPartyCallUtils;->getNumCallersInActualConnection()I

    move-result v0

    return v0
.end method

.method okToLaunchDTMFDialpad()Z
    .locals 14

    .prologue
    .line 7858
    sget-boolean v12, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v12, :cond_0

    const-string v12, "31934:okToLaunchDTMFDialpad"

    invoke-direct {p0, v12}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7860
    :cond_0
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isTouchPhone()Z

    move-result v7

    .line 7862
    .local v7, isTouchPhone:Z
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->hasKeyBoard()Z

    move-result v2

    .line 7863
    .local v2, hasKeyBoard:Z
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isHardKeyboardHidden()Z

    move-result v4

    .line 7866
    .local v4, isHardKeyboardHidden:Z
    iget-object v12, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    .line 7867
    .local v1, foregroundCall:Lcom/android/internal/telephony/Call;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7868
    .local v0, connection:Lcom/android/internal/telephony/Connection;
    if-nez v0, :cond_1

    const/4 v12, 0x0

    .line 7898
    :goto_0
    return v12

    .line 7869
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getOrigDialString()Ljava/lang/String;

    move-result-object v9

    .line 7870
    .local v9, origNumber:Ljava/lang/String;
    sget-boolean v12, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "original dial num):"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7873
    :cond_2
    if-nez v9, :cond_3

    .line 7874
    const/4 v12, 0x0

    goto :goto_0

    .line 7876
    :cond_3
    const-string v12, ","

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-nez v12, :cond_4

    const-string v12, ";"

    invoke-virtual {v9, v12}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_9

    :cond_4
    const/4 v12, 0x1

    move v3, v12

    .line 7877
    .local v3, hasPauseWait:Z
    :goto_1
    sget-boolean v12, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v12, :cond_5

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "hasPauseWait:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7880
    :cond_5
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v8

    .line 7881
    .local v8, number:Ljava/lang/String;
    sget-boolean v12, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v12, :cond_6

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "address num:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7882
    :cond_6
    invoke-static {v8}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v5

    .line 7883
    .local v5, isPhoneInEcmState:Z
    iget-object v12, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v12, v8}, Lcom/android/internal/telephony/Phone;->isOtaSpNumber(Ljava/lang/String;)Z

    move-result v6

    .line 7885
    .local v6, isPhoneInOtaState:Z
    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->checkShowDialPadSetting(Ljava/lang/String;)Z

    move-result v11

    .line 7887
    .local v11, sdpSettingCheck:Z
    sget-boolean v12, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v12, :cond_7

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "31934:okToLaunchDTMFDialpad,,isTouchPhone: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",hasKeyBoard:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",isHardKeyboardHidden:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",isPhoneInEcmState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",isPhoneInOtaState:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",sdpSettingCheck:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, ",mIsForegroundActivity:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7894
    :cond_7
    if-eqz v7, :cond_a

    if-nez v5, :cond_a

    if-nez v6, :cond_a

    if-nez v3, :cond_a

    if-eqz v11, :cond_a

    const/4 v12, 0x1

    move v10, v12

    .line 7897
    .local v10, result:Z
    :goto_2
    sget-boolean v12, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v12, :cond_8

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "result:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-direct {p0, v12}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    :cond_8
    move v12, v10

    .line 7898
    goto/16 :goto_0

    .line 7876
    .end local v3           #hasPauseWait:Z
    .end local v5           #isPhoneInEcmState:Z
    .end local v6           #isPhoneInOtaState:Z
    .end local v8           #number:Ljava/lang/String;
    .end local v10           #result:Z
    .end local v11           #sdpSettingCheck:Z
    :cond_9
    const/4 v12, 0x0

    move v3, v12

    goto/16 :goto_1

    .line 7894
    .restart local v3       #hasPauseWait:Z
    .restart local v5       #isPhoneInEcmState:Z
    .restart local v6       #isPhoneInOtaState:Z
    .restart local v8       #number:Ljava/lang/String;
    .restart local v11       #sdpSettingCheck:Z
    :cond_a
    const/4 v12, 0x0

    move v10, v12

    goto :goto_2
.end method

.method okToShowDialpad()Z
    .locals 1

    .prologue
    .line 6235
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->okToDialDTMFTones()Z

    move-result v0

    return v0
.end method

.method okToShowInCallTouchUi()Z
    .locals 2

    .prologue
    .line 6266
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 8

    .prologue
    const/4 v7, 0x2

    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 2855
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "onBackPressed()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2865
    :cond_0
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    .line 2866
    .local v2, phoneType:I
    if-ne v2, v7, :cond_7

    .line 2867
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v3

    if-nez v3, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 2869
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    iget-boolean v3, v3, Lcom/android/phone/OtaUtils;->mIsSetupMode:Z

    if-eqz v3, :cond_6

    sget-boolean v3, Lcom/android/phone/PhoneApp;->FTR_35292_AUTO_SEND_OTA_DTMF_ON:Z

    if-eqz v3, :cond_6

    .line 2871
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2872
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "FID:35292 is on, process the BACK hard key."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2873
    :cond_2
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_LISTENING:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v3, v4, :cond_3

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_PROGRESS:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v3, v4, :cond_5

    .line 2877
    :cond_3
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v3, :cond_4

    .line 2878
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 2882
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->setSpeaker(Z)V

    .line 2883
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->handleOtaCallEnd()V

    .line 2970
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_4
    :goto_0
    return-void

    .line 2888
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_5
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->otaShowHome()V

    goto :goto_0

    .line 2893
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_6
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "BACK key while on OTA Call, ignore it"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2900
    :cond_7
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 2904
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f09000d

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 2905
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "BACK key while ringing: reject the call"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2906
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    .line 2911
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 2917
    :cond_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_4

    const-string v3, "BACK key while ringing: ignored"

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 2925
    :cond_a
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 2930
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v3, v5}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 2931
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_b

    sget-boolean v3, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v3, :cond_b

    .line 2932
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v5}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2933
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    const v4, 0x7f0200de

    invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2935
    :cond_b
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 2937
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_d

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 2938
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_c

    const-string v3, "hide keypadButton..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2939
    :cond_c
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    invoke-virtual {v3, v6}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 2941
    :cond_d
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    if-eqz v3, :cond_e

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 2942
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 2945
    :cond_e
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    if-eqz v3, :cond_f

    .line 2946
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 2947
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 2948
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 2949
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2950
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 2951
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_f

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v3

    if-nez v3, :cond_f

    .line 2952
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v3, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 2958
    :cond_f
    if-ne v2, v7, :cond_4

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v3, :cond_4

    .line 2959
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v3, v3, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v3}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 2960
    .local v1, currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v1, v3, :cond_10

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v3, :cond_4

    .line 2961
    :cond_10
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->showSwitchCallButton()V

    goto/16 :goto_0

    .line 2969
    .end local v1           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_11
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto/16 :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "view"

    .prologue
    const-string v5, "InCallScreen"

    .line 4955
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 4956
    .local v1, id:I
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onClick(View "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")..."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4962
    :cond_0
    const/4 v0, 0x1

    .line 4964
    .local v0, dismissMenuImmediate:Z
    sparse-switch v1, :sswitch_data_0

    .line 5063
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v3, v4, :cond_12

    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_12

    .line 5066
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3, v1}, Lcom/android/phone/OtaUtils;->onClickHandler(I)V

    .line 5096
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 5097
    :cond_2
    return-void

    .line 4966
    :sswitch_0
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_3

    const-string v3, "onClick: AnswerAndHold..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4967
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 4971
    :sswitch_1
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_4

    const-string v3, "onClick: AnswerAndEnd..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4972
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerAndEnd()V

    goto :goto_0

    .line 4976
    :sswitch_2
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_5

    const-string v3, "onClick: Answer..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4977
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 4981
    :sswitch_3
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "onClick: Ignore..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4982
    :cond_6
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 4986
    :sswitch_4
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_7

    const-string v3, "onClick: SwapCalls..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4987
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    goto :goto_0

    .line 4991
    :sswitch_5
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_8

    const-string v3, "onClick: MergeCalls..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4992
    :cond_8
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 4996
    :sswitch_6
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_9

    const-string v3, "onClick: ManageConference..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 4998
    :cond_9
    sget-object v3, Lcom/android/phone/InCallScreen$InCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    goto :goto_0

    .line 5002
    :sswitch_7
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_a

    const-string v3, "onClick: Speaker..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5003
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onSpeakerClick()V

    .line 5005
    const/4 v0, 0x0

    .line 5006
    goto :goto_0

    .line 5010
    :sswitch_8
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_b

    const-string v3, "onClick: Bluetooth..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5011
    :cond_b
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onBluetoothClick()V

    .line 5013
    const/4 v0, 0x0

    .line 5014
    goto/16 :goto_0

    .line 5017
    :sswitch_9
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_c

    const-string v3, "onClick: Mute..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5018
    :cond_c
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    .line 5020
    const/4 v0, 0x0

    .line 5021
    goto/16 :goto_0

    .line 5024
    :sswitch_a
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_d

    const-string v3, "onClick: Hold..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5025
    :cond_d
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    .line 5027
    const/4 v0, 0x0

    .line 5028
    goto/16 :goto_0

    .line 5031
    :sswitch_b
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_e

    const-string v3, "onClick: AddCall..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5032
    :cond_e
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto/16 :goto_0

    .line 5036
    :sswitch_c
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_f

    const-string v3, "onClick: EndCall..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 5037
    :cond_f
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->internalHangup()V

    goto/16 :goto_0

    .line 5043
    :sswitch_d
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 5044
    .local v2, mphoneapp:Lcom/android/phone/PhoneApp;
    const-string v3, "InCallScreen"

    const-string v3, "w20080 - Record button clicked!"

    invoke-static {v5, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5045
    iget-boolean v3, p0, Lcom/android/phone/InCallScreen;->mVaPending:Z

    if-nez v3, :cond_2

    .line 5048
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->isVoiceRecordOn()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 5049
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->stopVoiceRecord()V

    goto/16 :goto_0

    .line 5051
    :cond_10
    iget-object v3, v2, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    if-eqz v3, :cond_11

    .line 5052
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->startVoiceRecord()V

    goto/16 :goto_0

    .line 5054
    :cond_11
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/phone/InCallScreen;->mVaPending:Z

    .line 5055
    invoke-virtual {v2}, Lcom/android/phone/PhoneApp;->bindVaService()V

    goto/16 :goto_0

    .line 5068
    .end local v2           #mphoneapp:Lcom/android/phone/PhoneApp;
    :cond_12
    const-string v3, "InCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Got click from unexpected View ID "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (View = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 4964
    :sswitch_data_0
    .sparse-switch
        0x7f070010 -> :sswitch_6
        0x7f070012 -> :sswitch_c
        0x7f070013 -> :sswitch_b
        0x7f070014 -> :sswitch_4
        0x7f070015 -> :sswitch_5
        0x7f070016 -> :sswitch_8
        0x7f070017 -> :sswitch_7
        0x7f070018 -> :sswitch_9
        0x7f070019 -> :sswitch_a
        0x7f07001a -> :sswitch_0
        0x7f07001b -> :sswitch_1
        0x7f07001c -> :sswitch_2
        0x7f07001d -> :sswitch_3
        0x7f070060 -> :sswitch_d
        0x7f07006a -> :sswitch_8
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    const/4 v1, 0x0

    .line 985
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 986
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    if-nez v0, :cond_2

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    .line 991
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsPaused:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    if-nez v0, :cond_1

    .line 992
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->flipStatusChanged()V

    .line 993
    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsPaused:Z

    .line 995
    :cond_1
    return-void

    :cond_2
    move v0, v1

    .line 986
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 12
    .parameter "icicle"

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    const-string v11, "onCreate(): mInCallInitialStatus = "

    const-string v10, "multiparty_call_on"

    const-string v9, "InCallScreen"

    .line 999
    const-string v4, "Calling_Kpi_Debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " InCallScreen onCreate()...  this = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1005
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1006
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1007
    iget-boolean v4, v0, Lcom/android/phone/PhoneApp;->mHdmiMode:Z

    if-ne v4, v7, :cond_e

    .line 1008
    const/4 v4, 0x4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    .line 1014
    :goto_0
    const/high16 v1, 0x8

    .line 1015
    .local v1, flags:I
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->mLastPhoneState:Lcom/android/internal/telephony/Phone$State;

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_0

    .line 1021
    const/high16 v4, 0x40

    or-int/2addr v1, v4

    .line 1025
    :cond_0
    const/high16 v4, 0x2

    or-int/2addr v1, v4

    .line 1027
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1029
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1030
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v4, v4, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1033
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v7, :cond_f

    move v4, v7

    :goto_1
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    .line 1035
    sget-boolean v4, Lcom/android/phone/PhoneApp;->mIsRotator:Z

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsNoEarpieceWhenFlipClose:Z

    .line 1037
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    sget-object v4, Lcom/android/phone/InCallScreen$OptionsMenuPress;->NO_MENU_PRESS:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mMenuOptionPress:Lcom/android/phone/InCallScreen$OptionsMenuPress;

    .line 1040
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 1041
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- mBluetoothHandsfree: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1043
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v4, :cond_2

    .line 1047
    new-instance v4, Landroid/bluetooth/BluetoothHeadset;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1048
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Got BluetoothHeadset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1053
    :cond_2
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 1056
    invoke-virtual {p0, v7}, Lcom/android/phone/InCallScreen;->requestWindowFeature(I)Z

    .line 1058
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-static {v4}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->initConfiguration(Landroid/content/res/Configuration;)V

    .line 1061
    const v4, 0x7f030032

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setContentView(I)V

    .line 1062
    invoke-static {p0}, Lcom/android/phone/InteractionConfig;->init(Landroid/content/Context;)V

    .line 1063
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->setupPopupKeypad()V

    .line 1066
    if-eqz p1, :cond_3

    const-string v4, "multiparty_call_on"

    invoke-virtual {p1, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1067
    const-string v4, "multiparty_call_on"

    invoke-virtual {p1, v10, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    sput-boolean v4, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    .line 1068
    const-string v4, "multiparty_call_list"

    invoke-virtual {p1, v4}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mMultiPartyNumberList:Ljava/util/ArrayList;

    .line 1070
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initInCallScreen()V

    .line 1089
    const v4, 0x7f0700af

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/android/phone/DTMFTwelveKeyDialerView;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 1090
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "- Using SlidingDrawer-based dialpad.  Found dialerView: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1091
    :cond_4
    const v4, 0x7f0700ad

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/SlidingDrawer;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 1092
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_5

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "  ...and the SlidingDrawer: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1096
    :cond_5
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-nez v4, :cond_6

    .line 1097
    const-string v4, "InCallScreen"

    const-string v4, "onCreate: couldn\'t find dialerView"

    new-instance v5, Ljava/lang/IllegalStateException;

    invoke-direct {v5}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v9, v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1100
    :cond_6
    const v4, 0x7f0700cc

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    .line 1101
    const v4, 0x7f0700cd

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    .line 1104
    new-instance v4, Lcom/android/phone/DTMFTwelveKeyDialer;

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    invoke-direct {v4, p0, v5, v6}, Lcom/android/phone/DTMFTwelveKeyDialer;-><init>(Lcom/android/phone/InCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerView;Landroid/widget/SlidingDrawer;)V

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1106
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->registerForPhoneStates()V

    .line 1109
    iget-object v4, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_7

    const-string v4, "ro.mot.eri"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    const-string v4, "ro.mot.eri"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 1111
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getCdmaEriText()Ljava/lang/String;

    move-result-object v4

    sput-object v4, Lcom/android/phone/InCallScreen;->mEriTxt:Ljava/lang/String;

    .line 1116
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "device_provisioned"

    invoke-static {v4, v5, v8}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_10

    move v4, v7

    :goto_2
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mDeviceProvisioned:Z

    .line 1127
    if-nez p1, :cond_11

    .line 1128
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_8

    const-string v4, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1133
    :cond_8
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1134
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sput-object v4, Lcom/android/phone/InCallScreen;->mLastInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1135
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_9

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate(): mInCallInitialStatus = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1136
    :cond_9
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v5, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v4, v5, :cond_a

    .line 1137
    const-string v4, "InCallScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate: status "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from internalResolveIntent()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1141
    :cond_a
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->mDockSpeakerPhone:Z

    .line 1162
    :goto_3
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->proximitySensorModeEnabled()Z

    move-result v4

    if-nez v4, :cond_15

    move v4, v7

    :goto_4
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mUseTouchLockOverlay:Z

    .line 1164
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c0017

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplayBottomMargin:I

    .line 1166
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f5

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 1167
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0200f6

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    .line 1170
    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v4, :cond_c

    .line 1171
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDisplay:Landroid/view/Display;

    if-nez v4, :cond_b

    .line 1172
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1173
    .local v3, wm:Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mDisplay:Landroid/view/Display;

    .line 1175
    .end local v3           #wm:Landroid/view/WindowManager;
    :cond_b
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001c

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonWidth:I

    .line 1176
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonHeight:I

    .line 1177
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDisplay:Landroid/view/Display;

    invoke-virtual {v4}, Landroid/view/Display;->getHeight()I

    move-result v4

    iget v5, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonHeight:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonTopMargin:I

    .line 1178
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0c001e

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    iput v4, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonLeftMargin:I

    .line 1179
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_c

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mDialpadButtonHeight="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonHeight:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDialpadButtonWidth="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonWidth:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDialpadButtonTopMargin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonTopMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " mDialpadButtonLeftMargin="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/phone/InCallScreen;->mDialpadButtonLeftMargin:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1182
    :cond_c
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_d

    const-string v4, "onCreate(): exit"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1189
    :cond_d
    new-instance v2, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1190
    .local v2, intentFilter:Landroid/content/IntentFilter;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v4, v2}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1192
    return-void

    .line 1010
    .end local v1           #flags:I
    .end local v2           #intentFilter:Landroid/content/IntentFilter;
    :cond_e
    const/4 v4, 0x5

    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_0

    .restart local v1       #flags:I
    :cond_f
    move v4, v8

    .line 1033
    goto/16 :goto_1

    :cond_10
    move v4, v8

    .line 1116
    goto/16 :goto_2

    .line 1143
    :cond_11
    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1144
    sget-object v4, Lcom/android/phone/InCallScreen;->mLastInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 1145
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_12

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreate(): mInCallInitialStatus = "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1147
    :cond_12
    const-string v4, "com.android.phone.InCallScreen.disableMuteBtn"

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->isEmergencyCallInProgress:Z

    .line 1150
    const-string v4, "IS_DTMF_DIALER_OPEN"

    invoke-virtual {p1, v4, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_14

    .line 1151
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v4, :cond_14

    .line 1152
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_13

    const-string v4, "restore DTMFTwelveKeyDialer status"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1153
    :cond_13
    iput-boolean v7, p0, Lcom/android/phone/InCallScreen;->isDtmfDialerOpen:Z

    .line 1157
    :cond_14
    const-string v4, "IS_DOCK_SPEAKER_PHONE_ON"

    invoke-virtual {p1, v4, v7}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mDockSpeakerPhone:Z

    goto/16 :goto_3

    :cond_15
    move v4, v8

    .line 1162
    goto/16 :goto_4
.end method

.method protected onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2
    .parameter "id"
    .parameter "args"

    .prologue
    .line 7687
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 7689
    if-nez p1, :cond_0

    .line 7691
    new-instance v0, Lcom/android/phone/VoiceQualityPicker;

    invoke-direct {v0, p0}, Lcom/android/phone/VoiceQualityPicker;-><init>(Landroid/content/Context;)V

    .line 7695
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4
    .parameter "menu"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 7044
    const v0, 0x7f0b0163

    invoke-interface {p1, v2, v3, v2, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020125

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMenuItemHold:Landroid/view/MenuItem;

    .line 7046
    sget-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v0, :cond_0

    .line 7047
    sget-boolean v0, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-eqz v0, :cond_0

    .line 7048
    const/4 v0, 0x7

    const v1, 0x7f0b012b

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020122

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    .line 7051
    :cond_0
    sget-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    if-eqz v0, :cond_1

    .line 7052
    const/16 v0, 0x8

    const v1, 0x7f0b0106

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x3020218

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMenuItemSwitchCalls:Landroid/view/MenuItem;

    .line 7056
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09000f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7058
    const/16 v0, 0x9

    const v1, 0x7f0b0107

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const v1, 0x7f020120

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mMenuItemVoiceQuality:Landroid/view/MenuItem;

    .line 7062
    :cond_2
    return v3
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1823
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onDestroy()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1824
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 1828
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/phone/InCallScreen;->mIsDestroyed:Z

    .line 1830
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1831
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1833
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v1, :cond_1

    .line 1834
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v1, v2}, Lcom/android/phone/CallCard;->setInCallScreenInstance(Lcom/android/phone/InCallScreen;)V

    .line 1835
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    .line 1838
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->clearInCallScreenReference()V

    .line 1839
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    .line 1843
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1846
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->unregisterForPhoneStates()V

    .line 1850
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_2

    .line 1851
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 1852
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1857
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1859
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    if-eqz v1, :cond_3

    .line 1861
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerView;

    .line 1863
    :cond_3
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    .line 1864
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    .line 1865
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mDialerDrawer:Landroid/widget/SlidingDrawer;

    .line 1866
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    .line 1867
    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mMainFrame:Landroid/view/ViewGroup;

    .line 1873
    sget-boolean v1, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v1, :cond_4

    .line 1874
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    .line 1875
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    invoke-virtual {v1}, Lcom/android/phone/MultiPartyCallUtils;->resetMultiPartyCallList()V

    .line 1877
    :cond_4
    return-void
.end method

.method onDialerClose()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6142
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6144
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6148
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 6149
    :cond_1
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "No need to handle any Dialer close logic for OTA Call since OTA use diff dialer"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6186
    :cond_2
    :goto_0
    return-void

    .line 6155
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v2, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v1, v2, :cond_4

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v1, v1, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v2, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-ne v1, v2, :cond_5

    .line 6160
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 6161
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v1, :cond_5

    .line 6162
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v1}, Lcom/android/phone/OtaUtils;->otaShowProperScreen()V

    .line 6168
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 6173
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    if-eqz v1, :cond_6

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 6174
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 6177
    :cond_6
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 6178
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6179
    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 6180
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 6182
    :cond_7
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6185
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    goto :goto_0
.end method

.method onDialerOpen()V
    .locals 2

    .prologue
    .line 6111
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6115
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6116
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "No need to handle any Dialer open logic for OTA Call since OTA use diff dialer"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6135
    :cond_2
    :goto_0
    return-void

    .line 6122
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateDialpadVisibility()V

    .line 6125
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6130
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v0, v1, :cond_2

    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v0, :cond_2

    .line 6133
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v0}, Lcom/android/phone/OtaUtils;->hideOtaScreen()V

    goto :goto_0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v8, "InCallScreen"

    .line 3108
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onKeyDown(keycode "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")..."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3110
    :cond_0
    sparse-switch p1, :sswitch_data_0

    .line 3213
    :cond_1
    :goto_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v4

    if-nez v4, :cond_7

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    if-eqz v4, :cond_7

    move v4, v6

    .line 3217
    :goto_1
    return v4

    .line 3112
    :sswitch_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isLongPress()Z

    move-result v4

    if-eqz v4, :cond_2

    move v4, v6

    .line 3113
    goto :goto_1

    .line 3116
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto :goto_1

    .line 3119
    :sswitch_1
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsNoEarpieceWhenFlipClose:Z

    if-ne v4, v6, :cond_1

    .line 3120
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1

    .line 3121
    const v4, 0x7f0b0137

    invoke-static {p0, v4, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 3129
    :sswitch_2
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->handleCallKey()Z

    move-result v1

    .line 3130
    .local v1, handled:Z
    if-nez v1, :cond_3

    .line 3131
    const-string v4, "InCallScreen"

    const-string v4, "InCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move v4, v6

    .line 3134
    goto :goto_1

    .end local v1           #handled:Z
    :sswitch_3
    move v4, v6

    .line 3146
    goto :goto_1

    .line 3150
    :sswitch_4
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v4, v5, :cond_6

    .line 3161
    const-string v4, "InCallScreen"

    const-string v4, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    iget-object v2, v4, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3167
    .local v2, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 3169
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_4

    const-string v4, "VOLUME key: silence ringer"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3170
    :cond_4
    invoke-virtual {v2}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    :cond_5
    move v4, v6

    .line 3175
    goto :goto_1

    .end local v2           #notifier:Lcom/android/phone/CallNotifier;
    :cond_6
    move v4, v7

    .line 3178
    goto :goto_1

    .line 3182
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onMuteClick()V

    move v4, v6

    .line 3183
    goto :goto_1

    .line 3187
    :sswitch_6
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_1

    .line 3188
    const-string v4, "----------- InCallScreen View dump --------------"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3190
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 3191
    .local v3, w:Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3192
    .local v0, decorView:Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    move v4, v6

    .line 3193
    goto/16 :goto_1

    .line 3197
    .end local v0           #decorView:Landroid/view/View;
    .end local v3           #w:Landroid/view/Window;
    :sswitch_7
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_1

    .line 3198
    const-string v4, "----------- InCallScreen call state dump --------------"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3199
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v4}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    .line 3200
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    move v4, v6

    .line 3201
    goto/16 :goto_1

    .line 3205
    :sswitch_8
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_1

    .line 3207
    const-string v4, "------------ Temp testing -----------------"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    move v4, v6

    .line 3208
    goto/16 :goto_1

    .line 3217
    :cond_7
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v4

    goto/16 :goto_1

    .line 3110
    nop

    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x6 -> :sswitch_1
        0x18 -> :sswitch_4
        0x19 -> :sswitch_4
        0x1b -> :sswitch_3
        0x44 -> :sswitch_8
        0x46 -> :sswitch_7
        0x4c -> :sswitch_6
        0x52 -> :sswitch_0
        0x5b -> :sswitch_5
    .end sparse-switch
.end method

.method public onKeyLongPress(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3224
    const/16 v0, 0x54

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_1

    .line 3225
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    .line 3226
    const-string v0, "InCallScreen"

    const-string v1, "Voice search is not allowed because audio is occupied"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3228
    :cond_0
    const/4 v0, 0x1

    .line 3231
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyLongPress(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v1, 0x1

    .line 3096
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "handling key up event..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3097
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, p2}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v1

    .line 3103
    :goto_0
    return v0

    .line 3099
    :cond_1
    const/4 v0, 0x5

    if-ne p1, v0, :cond_2

    move v0, v1

    .line 3101
    goto :goto_0

    .line 3103
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1
    .parameter "view"

    .prologue
    .line 5102
    const/4 v0, 0x1

    return v0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    const-string v3, "Calling_Kpi_Debug"

    .line 2027
    const-string v0, "Calling_Kpi_Debug"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2040
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 2049
    invoke-virtual {p0, p1}, Lcom/android/phone/InCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2050
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sput-object v0, Lcom/android/phone/InCallScreen;->mLastInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    .line 2051
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v1, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v0, v1, :cond_0

    .line 2052
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

    .line 2060
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_1

    .line 2061
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAnswerIgnoreSlider:Lcom/motorola/android/widget/SlideButton;

    invoke-virtual {v0}, Lcom/motorola/android/widget/SlideButton;->resetDraw()V

    .line 2064
    :cond_1
    const-string v0, "Calling_Kpi_Debug"

    const-string v0, "onNewIntent exit"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 5
    .parameter "item"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 7192
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 7193
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 7242
    :cond_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 7195
    :pswitch_1
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "MENU_ITEM_HOLD"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7196
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->onHoldClick()V

    move v1, v3

    .line 7197
    goto :goto_0

    .line 7200
    :pswitch_2
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_2

    const-string v1, "MENU_ITEM_JOIN"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7201
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    move v1, v3

    .line 7202
    goto :goto_0

    .line 7205
    :pswitch_3
    sget-boolean v1, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v1, :cond_0

    sget-boolean v1, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-eqz v1, :cond_0

    .line 7207
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7208
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->closeDialer(Z)V

    .line 7209
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    const v2, 0x7f0b012b

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 7210
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    const v2, 0x7f020122

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7211
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    move v1, v3

    .line 7218
    goto :goto_0

    .line 7213
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1, v4}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 7214
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    const v2, 0x7f0b012c

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 7215
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    const v2, 0x7f020123

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7216
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 7223
    :pswitch_4
    sget-boolean v1, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    if-eqz v1, :cond_0

    .line 7224
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->internalSwapCalls()V

    move v1, v3

    .line 7225
    goto :goto_0

    .line 7230
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f09000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 7232
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_4

    const-string v1, "MENU_ITEM_VOICE_QUALITY"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7233
    :cond_4
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->showDialog(I)V

    move v1, v3

    .line 7234
    goto/16 :goto_0

    .line 7193
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter "featureId"
    .parameter "menu"

    .prologue
    .line 6314
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

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

    .line 6318
    :cond_0
    if-nez p1, :cond_1

    .line 6323
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6324
    return-void
.end method

.method protected onPause()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1668
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1669
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 1671
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsPaused:Z

    .line 1673
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1678
    iput-boolean v5, p0, Lcom/android/phone/InCallScreen;->mProviderOverlayVisible:Z

    .line 1679
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateProviderOverlay()V

    .line 1681
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1685
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 1689
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mManageConferenceUtils:Lcom/android/phone/ManageConferenceUtils;

    invoke-virtual {v2}, Lcom/android/phone/ManageConferenceUtils;->stopConferenceTime()V

    .line 1693
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 1694
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopTone()V

    .line 1698
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->stopDialerSession()V

    .line 1723
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_2

    .line 1725
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1726
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 1738
    :cond_2
    invoke-virtual {p0, v4}, Lcom/android/phone/InCallScreen;->dismissMenu(Z)V

    .line 1742
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1746
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1749
    sget v2, Lcom/android/phone/PhoneApp;->mGlobalCallingControlsOn:I

    if-ne v2, v4, :cond_3

    .line 1750
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isScreenOn()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_3

    .line 1752
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.STATUSBAR_ANIMATION"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1753
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.statusbar_play_animation"

    invoke-virtual {v1, v2, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1755
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1759
    .end local v1           #intent:Landroid/content/Intent;
    :cond_3
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_4

    const-string v2, "IMMEDIATE ENABLE KeyGuard"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1760
    :cond_4
    invoke-virtual {p0, v5}, Lcom/android/phone/InCallScreen;->updateKeyguardPolicy(Z)V

    .line 1766
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1767
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 12
    .parameter "menu"

    .prologue
    const v11, 0x7f020123

    const v10, 0x7f020122

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 7068
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_6

    move v2, v8

    .line 7069
    .local v2, hasRingingCall:Z
    :goto_0
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_7

    move v1, v8

    .line 7070
    .local v1, hasForegroundCall:Z
    :goto_1
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v5

    if-nez v5, :cond_8

    move v0, v8

    .line 7071
    .local v0, hasBackgroundCall:Z
    :goto_2
    const/4 v3, 0x0

    .line 7072
    .local v3, hideAllMenus:Z
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v5}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 7074
    .local v4, phoneType:I
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7076
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemVoiceQuality:Landroid/view/MenuItem;

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isApAllowed(Landroid/content/Context;)Z

    move-result v6

    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 7080
    :cond_0
    if-ne v4, v9, :cond_a

    .line 7081
    if-nez v2, :cond_1

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v5

    if-nez v5, :cond_1

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v5

    if-eqz v5, :cond_9

    :cond_1
    move v3, v8

    .line 7088
    :goto_3
    if-eqz v3, :cond_d

    .line 7089
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemHold:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7090
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v5, :cond_2

    .line 7091
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-eqz v5, :cond_2

    .line 7092
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7095
    :cond_2
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    if-eqz v5, :cond_3

    .line 7096
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemSwitchCalls:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7100
    :cond_3
    if-ne v4, v9, :cond_5

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v5

    if-nez v5, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7102
    :cond_4
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f09000f

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 7103
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemVoiceQuality:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_5
    move v5, v8

    .line 7182
    :goto_4
    return v5

    .end local v0           #hasBackgroundCall:Z
    .end local v1           #hasForegroundCall:Z
    .end local v2           #hasRingingCall:Z
    .end local v3           #hideAllMenus:Z
    .end local v4           #phoneType:I
    :cond_6
    move v2, v7

    .line 7068
    goto/16 :goto_0

    .restart local v2       #hasRingingCall:Z
    :cond_7
    move v1, v7

    .line 7069
    goto/16 :goto_1

    .restart local v1       #hasForegroundCall:Z
    :cond_8
    move v0, v7

    .line 7070
    goto :goto_2

    .restart local v0       #hasBackgroundCall:Z
    .restart local v3       #hideAllMenus:Z
    .restart local v4       #phoneType:I
    :cond_9
    move v3, v7

    .line 7081
    goto :goto_3

    .line 7083
    :cond_a
    if-nez v2, :cond_b

    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->phoneIsInUse()Z

    move-result v5

    if-nez v5, :cond_c

    :cond_b
    move v3, v8

    :goto_5
    goto :goto_3

    :cond_c
    move v3, v7

    goto :goto_5

    .line 7111
    :cond_d
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v5, v6, :cond_e

    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v5

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v5, v6, :cond_11

    .line 7112
    :cond_e
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemHold:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7113
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v5, :cond_f

    .line 7114
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-eqz v5, :cond_f

    .line 7115
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7118
    :cond_f
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    if-eqz v5, :cond_10

    .line 7119
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemSwitchCalls:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_10
    move v5, v8

    .line 7121
    goto :goto_4

    .line 7125
    :cond_11
    if-ne v4, v9, :cond_16

    .line 7127
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v5, :cond_12

    .line 7128
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-eqz v5, :cond_12

    .line 7129
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7130
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_14

    const v6, 0x7f0b012c

    :goto_6
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 7131
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_15

    move v6, v11

    :goto_7
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7134
    :cond_12
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    if-eqz v5, :cond_13

    .line 7135
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemSwitchCalls:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7138
    :cond_13
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemHold:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move v5, v8

    .line 7139
    goto/16 :goto_4

    .line 7130
    :cond_14
    const v6, 0x7f0b012b

    goto :goto_6

    :cond_15
    move v6, v10

    .line 7131
    goto :goto_7

    .line 7142
    :cond_16
    if-eqz v1, :cond_1b

    if-nez v0, :cond_1b

    .line 7143
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemHold:Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7144
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v5, :cond_17

    .line 7145
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-eqz v5, :cond_17

    .line 7146
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7147
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_19

    const v6, 0x7f0b012c

    :goto_8
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 7148
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_1a

    move v6, v11

    :goto_9
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7151
    :cond_17
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    if-eqz v5, :cond_18

    .line 7152
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemSwitchCalls:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_18
    move v5, v8

    .line 7154
    goto/16 :goto_4

    .line 7147
    :cond_19
    const v6, 0x7f0b012b

    goto :goto_8

    :cond_1a
    move v6, v10

    .line 7148
    goto :goto_9

    .line 7155
    :cond_1b
    if-nez v1, :cond_1e

    if-eqz v0, :cond_1e

    .line 7156
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemHold:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7157
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v5, :cond_1c

    .line 7158
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-eqz v5, :cond_1c

    .line 7159
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7162
    :cond_1c
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    if-eqz v5, :cond_1d

    .line 7163
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemSwitchCalls:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_1d
    move v5, v8

    .line 7165
    goto/16 :goto_4

    .line 7166
    :cond_1e
    if-eqz v1, :cond_23

    if-eqz v0, :cond_23

    .line 7167
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemHold:Landroid/view/MenuItem;

    invoke-interface {v5, v7}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7168
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v5, :cond_1f

    .line 7169
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-eqz v5, :cond_1f

    .line 7170
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 7171
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_21

    const v6, 0x7f0b012c

    :goto_a
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 7172
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemDialpad:Landroid/view/MenuItem;

    iget-object v6, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v6}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v6

    if-eqz v6, :cond_22

    move v6, v11

    :goto_b
    invoke-interface {v5, v6}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7175
    :cond_1f
    sget-boolean v5, Lcom/android/phone/InteractionConfig;->IS_SHOW_MENU_SWITCH_CALLS:Z

    if-eqz v5, :cond_20

    .line 7176
    iget-object v5, p0, Lcom/android/phone/InCallScreen;->mMenuItemSwitchCalls:Landroid/view/MenuItem;

    invoke-interface {v5, v8}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_20
    move v5, v8

    .line 7178
    goto/16 :goto_4

    .line 7171
    :cond_21
    const v6, 0x7f0b012b

    goto :goto_a

    :cond_22
    move v6, v10

    .line 7172
    goto :goto_b

    .line 7181
    :cond_23
    const-string v5, "InCallScreen"

    const-string v6, "onPrepareOptionsMenu - invalid case"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7182
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v5

    goto/16 :goto_4
.end method

.method protected onResume()V
    .locals 15

    .prologue
    const/16 v14, 0x71

    const/4 v13, 0x2

    const/4 v12, 0x1

    const/16 v11, 0x8

    const/4 v10, 0x0

    .line 1264
    const-string v8, "Calling_Kpi_Debug"

    const-string v9, "InCallScreen onResume()..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1265
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 1266
    iget-boolean v8, p0, Lcom/android/phone/InCallScreen;->isDtmfDialerOpen:Z

    if-eqz v8, :cond_0

    .line 1267
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8, v10}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    .line 1268
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->isDtmfDialerOpen:Z

    .line 1270
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1272
    .local v0, app:Lcom/android/phone/PhoneApp;
    iput-boolean v12, p0, Lcom/android/phone/InCallScreen;->mIsForegroundActivity:Z

    .line 1276
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v8

    iput-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z

    .line 1277
    sget-boolean v8, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v8, :cond_1

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Initial headset state = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Lcom/android/phone/InCallScreen;->mIsHeadsetPlugged:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1289
    :cond_1
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v8

    invoke-virtual {v8, v10}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 1292
    sget v8, Lcom/android/phone/PhoneApp;->mGlobalCallingControlsOn:I

    if-ne v8, v12, :cond_2

    .line 1294
    new-instance v5, Landroid/content/Intent;

    const-string v8, "android.intent.action.STATUSBAR_ANIMATION"

    invoke-direct {v5, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1295
    .local v5, intent:Landroid/content/Intent;
    const-string v8, "android.intent.extra.statusbar_play_animation"

    invoke-virtual {v5, v8, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 1297
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 1303
    .end local v5           #intent:Landroid/content/Intent;
    :cond_2
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->startDialerSession()V

    .line 1305
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1306
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_1c

    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v8

    sget-object v9, Lcom/android/phone/PhoneUtils$ScreenSize;->HVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v8, v9, :cond_1c

    .line 1307
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1308
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1309
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8, v11}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1310
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8, v11}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1311
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1312
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1333
    :cond_3
    :goto_0
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1334
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 1338
    :cond_4
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- onResume: initial status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1339
    :cond_5
    const/4 v3, 0x0

    .line 1340
    .local v3, handledStartupError:Z
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v8, v9, :cond_7

    .line 1341
    sget-boolean v8, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v8, :cond_6

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- onResume: failure during startup: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1346
    :cond_6
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->handleStartupError(Lcom/android/phone/InCallScreen$InCallInitStatus;)V

    .line 1347
    const/4 v3, 0x1

    .line 1350
    :cond_7
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    .line 1352
    .local v1, bluetoothConnected:Z
    if-eqz v1, :cond_20

    .line 1353
    const/4 v8, 0x6

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    .line 1358
    :goto_1
    invoke-virtual {p0, v12}, Lcom/android/phone/InCallScreen;->takeKeyEvents(Z)V

    .line 1360
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v13, :cond_21

    move v6, v12

    .line 1362
    .local v6, phoneIsCdma:Z
    :goto_2
    if-eqz v6, :cond_8

    .line 1363
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->initOtaState()V

    .line 1366
    :cond_8
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v8, v9, :cond_c

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v8, v9, :cond_c

    .line 1369
    sget-object v8, Lcom/android/phone/InCallScreen$InCallScreenMode;->NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 1373
    sget-boolean v8, Lcom/android/phone/PhoneApp;->FTR_31934_AUTO_LAUNCH_DIALPAD_ON:Z

    if-eqz v8, :cond_b

    .line 1374
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v8, v9, :cond_9

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_b

    :cond_9
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_b

    .line 1376
    sget-boolean v8, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v8, :cond_a

    const-string v8, "autoLaunchDTMFDialpad for 1st outgoing call"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1377
    :cond_a
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->autoLaunchDTMFDialpad()V

    .line 1381
    :cond_b
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mPreviousCallState:Lcom/android/internal/telephony/Call$State;

    .line 1386
    :cond_c
    if-eqz v6, :cond_e

    .line 1387
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInActiveState()Z

    move-result v8

    if-nez v8, :cond_d

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isOtaCallInEndState()Z

    move-result v8

    if-eqz v8, :cond_22

    .line 1388
    :cond_d
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCallControlHolder:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1399
    :cond_e
    :goto_3
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 1401
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->syncWithPhoneState()Lcom/android/phone/InCallScreen$InCallInitStatus;

    move-result-object v7

    .line 1402
    .local v7, status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    sget-object v8, Lcom/android/phone/InCallScreen$InCallInitStatus;->SUCCESS:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v7, v8, :cond_25

    .line 1403
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_f

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "- onResume: syncWithPhoneState failed! status = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1406
    :cond_f
    if-eqz v3, :cond_23

    .line 1414
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_10

    const-string v8, "  ==> syncWithPhoneState failed, but staying here anyway."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1457
    :cond_10
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v8, v9, :cond_28

    .line 1473
    sget-boolean v8, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v8, :cond_11

    const-string v8, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1474
    :cond_11
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v14}, Landroid/os/Handler;->removeMessages(I)V

    .line 1475
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v8, v14}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1478
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dismissUssdDialog()V

    .line 1492
    :goto_4
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->updateWakeState()V

    .line 1494
    sget-boolean v8, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v8, :cond_29

    .line 1495
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->updateDialpadButton(Z)V

    .line 1513
    :cond_12
    :goto_5
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getRestoreMuteOnInCallResume()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 1515
    invoke-static {}, Lcom/android/phone/PhoneUtils;->restoreMuteState()Ljava/lang/Boolean;

    .line 1516
    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 1518
    :cond_13
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setEnabled(Z)V

    .line 1519
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1520
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1521
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 1526
    sget-boolean v8, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-nez v8, :cond_14

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_14

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    if-eqz v8, :cond_14

    .line 1528
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDTMFDisplay:Landroid/widget/EditText;

    invoke-virtual {v8, v10}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1531
    :cond_14
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->fixFocus()V

    .line 1536
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v9, :cond_15

    .line 1537
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->setDockModePhone()V

    .line 1539
    :cond_15
    iget-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsPaused:Z

    if-eqz v8, :cond_16

    iget-boolean v8, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    if-nez v8, :cond_16

    .line 1540
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->flipStatusChanged()V

    .line 1543
    :cond_16
    iput-boolean v10, p0, Lcom/android/phone/InCallScreen;->mIsPaused:Z

    .line 1545
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1546
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mBluetoothButton:Landroid/widget/ToggleButton;

    invoke-virtual {v8, v10}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 1548
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    invoke-virtual {v8}, Landroid/widget/Button;->getVisibility()I

    move-result v8

    if-eqz v8, :cond_17

    .line 1549
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1552
    :cond_17
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1553
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v8, :cond_2f

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v8

    if-nez v8, :cond_2f

    .line 1555
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v8}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v8

    if-ne v8, v13, :cond_19

    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v8, :cond_19

    .line 1556
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 1557
    .local v2, currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-eq v2, v8, :cond_18

    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v8, :cond_2e

    .line 1559
    :cond_18
    sget-object v8, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v8, :cond_2c

    .line 1560
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1561
    sget-boolean v8, Lcom/android/phone/InCallScreen;->mIsCallMerged:Z

    if-ne v12, v8, :cond_2b

    .line 1562
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v9, 0x7f020025

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 1583
    .end local v2           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_19
    :goto_6
    const-string v8, "Calling_Kpi_Debug"

    const-string v9, "InCallScreen onResume() is done ..."

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    const-string v8, "InCallScreen"

    const-string v9, "w20080 - onResume() - bindVaService()"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1586
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->bindVaService()V

    .line 1587
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isVoiceRecordOn()Z

    move-result v8

    invoke-virtual {p0, v8}, Lcom/android/phone/InCallScreen;->updateVoiceRecordUi(Z)V

    .line 1589
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mVaServiceInfoRecvr:Landroid/content/BroadcastReceiver;

    if-nez v8, :cond_1a

    sget-boolean v8, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-eqz v8, :cond_1a

    .line 1590
    new-instance v8, Lcom/android/phone/InCallScreen$3;

    invoke-direct {v8, p0}, Lcom/android/phone/InCallScreen$3;-><init>(Lcom/android/phone/InCallScreen;)V

    iput-object v8, p0, Lcom/android/phone/InCallScreen;->mVaServiceInfoRecvr:Landroid/content/BroadcastReceiver;

    .line 1601
    new-instance v4, Landroid/content/IntentFilter;

    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 1602
    .local v4, iFilter:Landroid/content/IntentFilter;
    const-string v8, "com.motorola.soundrecorder.stoprecording"

    invoke-virtual {v4, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1603
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mVaServiceInfoRecvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v8, v4}, Lcom/android/phone/InCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1607
    .end local v4           #iFilter:Landroid/content/IntentFilter;
    :cond_1a
    sget-boolean v8, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v8, :cond_1b

    const-string v8, "onResume() done."

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1608
    :cond_1b
    :goto_7
    return-void

    .line 1314
    .end local v1           #bluetoothConnected:Z
    .end local v3           #handledStartupError:Z
    .end local v6           #phoneIsCdma:Z
    .end local v7           #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_1c
    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1315
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mParentMainFrame:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1316
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDTMFFrame:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1317
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_1d

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_1d

    .line 1319
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1320
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1322
    :cond_1d
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_1e

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v8, v9, :cond_1f

    .line 1324
    :cond_1e
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1325
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1326
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 1329
    :cond_1f
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    .line 1330
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_0

    .line 1355
    .restart local v1       #bluetoothConnected:Z
    .restart local v3       #handledStartupError:Z
    :cond_20
    invoke-virtual {p0, v10}, Lcom/android/phone/InCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_1

    :cond_21
    move v6, v10

    .line 1360
    goto/16 :goto_2

    .line 1390
    .restart local v6       #phoneIsCdma:Z
    :cond_22
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCallControlHolder:Landroid/view/ViewGroup;

    invoke-virtual {v8, v10}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto/16 :goto_3

    .line 1428
    .restart local v7       #status:Lcom/android/phone/InCallScreen$InCallInitStatus;
    :cond_23
    sget-boolean v8, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v8, :cond_24

    const-string v8, "  ==> syncWithPhoneState failed; bailing out!"

    invoke-direct {p0, v8}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1429
    :cond_24
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->dismissAllDialogs()V

    .line 1430
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->endInCallScreenSession()V

    goto/16 :goto_7

    .line 1433
    :cond_25
    if-eqz v6, :cond_10

    .line 1434
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-eq v8, v9, :cond_26

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallScreenMode:Lcom/android/phone/InCallScreen$InCallScreenMode;

    sget-object v9, Lcom/android/phone/InCallScreen$InCallScreenMode;->OTA_ENDED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    if-ne v8, v9, :cond_10

    .line 1436
    :cond_26
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8, v10}, Lcom/android/phone/DTMFTwelveKeyDialer;->setHandleVisible(Z)V

    .line 1437
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    if-eqz v8, :cond_27

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    invoke-virtual {v8, v11}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1438
    :cond_27
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1439
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v8}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v8

    sget-object v9, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v8, v9, :cond_1b

    .line 1440
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->setDockModePhone()V

    goto/16 :goto_7

    .line 1490
    :cond_28
    invoke-virtual {v0, v10}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto/16 :goto_4

    .line 1497
    :cond_29
    sget-boolean v8, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v8, :cond_12

    .line 1498
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    iget-object v9, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v9}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v9

    if-eqz v9, :cond_2a

    const v9, 0x7f020123

    :goto_8
    invoke-virtual {v8, v9}, Landroid/widget/ImageButton;->setImageResource(I)V

    goto/16 :goto_5

    :cond_2a
    const v9, 0x7f0200de

    goto :goto_8

    .line 1564
    .restart local v2       #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2b
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v9, 0x7f020089

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1567
    :cond_2c
    iget-object v8, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v8}, Lcom/android/phone/CdmaPhoneCallState;->isThreeWayCallOrigStateDialing()Z

    move-result v8

    if-nez v8, :cond_2d

    .line 1568
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v8, v10}, Landroid/widget/Button;->setVisibility(I)V

    .line 1570
    :cond_2d
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v9, 0x7f020021

    invoke-virtual {v8, v9}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_6

    .line 1575
    :cond_2e
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6

    .line 1579
    .end local v2           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2f
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v8, :cond_19

    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v8}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v8

    if-eqz v8, :cond_19

    .line 1580
    iget-object v8, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v8, v11}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .parameter "outState"

    .prologue
    .line 1637
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "onSaveInstanceState()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1638
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1644
    const-string v0, "com.android.phone.InCallScreen.disableMuteBtn"

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->isEmergencyCallInProgress:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1646
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_1

    .line 1647
    const-string v0, "IS_DTMF_DIALER_OPEN"

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1651
    :cond_1
    const-string v0, "IS_DOCK_SPEAKER_PHONE_ON"

    iget-boolean v1, p0, Lcom/android/phone/InCallScreen;->mDockSpeakerPhone:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1657
    sget-boolean v0, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    if-eqz v0, :cond_2

    .line 1658
    const-string v0, "multiparty_call_on"

    sget-boolean v1, Lcom/android/phone/InCallScreen;->mMultiPartyCallSessionOn:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1659
    const-string v0, "multiparty_call_list"

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mMultiPartyNumberList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1661
    :cond_2
    return-void
.end method

.method protected onStop()V
    .locals 5

    .prologue
    .line 1771
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_0

    const-string v3, "onStop()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1772
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 1774
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->stopTimer()V

    .line 1777
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x1f40

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 1779
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mVaServiceInfoRecvr:Landroid/content/BroadcastReceiver;

    if-eqz v3, :cond_1

    .line 1780
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mVaServiceInfoRecvr:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v3}, Lcom/android/phone/InCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1781
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/phone/InCallScreen;->mVaServiceInfoRecvr:Landroid/content/BroadcastReceiver;

    .line 1785
    :cond_1
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    .line 1786
    .local v2, state:Lcom/android/internal/telephony/Phone$State;
    sget-boolean v3, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v3, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onStop: state = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1788
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_5

    .line 1789
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1793
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    if-eqz v3, :cond_5

    .line 1795
    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_ACTIVATION:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v3, v4, :cond_7

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState;

    iget-object v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaScreenState;->otaScreenState:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    sget-object v4, Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;->OTA_STATUS_SUCCESS_FAILURE_DLG:Lcom/android/phone/OtaUtils$CdmaOtaScreenState$OtaScreenState;

    if-eq v3, v4, :cond_7

    iget-object v3, v0, Lcom/android/phone/PhoneApp;->cdmaOtaProvisionData:Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;

    iget-boolean v3, v3, Lcom/android/phone/OtaUtils$CdmaOtaProvisionData;->inOtaSpcState:Z

    if-nez v3, :cond_7

    .line 1802
    sget-boolean v3, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v3, :cond_3

    const-string v3, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v3}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1803
    :cond_3
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->mInCallInitialStatus:Lcom/android/phone/InCallScreen$InCallInitStatus;

    sget-object v4, Lcom/android/phone/InCallScreen$InCallInitStatus;->POWER_OFF:Lcom/android/phone/InCallScreen$InCallInitStatus;

    if-eq v3, v4, :cond_4

    .line 1804
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->finish()V

    .line 1806
    :cond_4
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_5

    .line 1807
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreenAndClearOtaStaticState()V

    .line 1816
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    :cond_5
    :goto_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    iget-object v1, v3, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1817
    .local v1, notifier:Lcom/android/phone/CallNotifier;
    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->isRetryAlertDialogNull()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->setRetryAlertDialogNull()V

    .line 1819
    :cond_6
    return-void

    .line 1809
    .end local v1           #notifier:Lcom/android/phone/CallNotifier;
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    :cond_7
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    if-eqz v3, :cond_5

    .line 1810
    iget-object v3, p0, Lcom/android/phone/InCallScreen;->otaUtils:Lcom/android/phone/OtaUtils;

    invoke-virtual {v3}, Lcom/android/phone/OtaUtils;->cleanOtaScreen()V

    goto :goto_0
.end method

.method onSuppServiceCompleted(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    .line 3311
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3312
    .local v0, service:Lcom/android/internal/telephony/Phone$SuppService;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceCompleted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3314
    :cond_0
    sget-object v1, Lcom/android/phone/InCallScreen$43;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 3321
    :pswitch_0
    return-void

    .line 3314
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 5
    .parameter "r"

    .prologue
    const/4 v4, 0x0

    .line 3240
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3241
    .local v1, service:Lcom/android/internal/telephony/Phone$SuppService;
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSuppServiceFailed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3244
    :cond_0
    sget-object v2, Lcom/android/phone/InCallScreen$43;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 3285
    const v0, 0x7f0b0319

    .line 3293
    .local v0, errorMessageResId:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v2, :cond_2

    .line 3294
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_1

    const-string v2, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3295
    :cond_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->dismiss()V

    .line 3297
    iput-object v4, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3300
    :cond_2
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const v3, 0x7f0b016e

    invoke-virtual {v2, v3, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3305
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 3307
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 3308
    return-void

    .line 3248
    .end local v0           #errorMessageResId:I
    :pswitch_0
    const v0, 0x7f0b031a

    .line 3249
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3254
    .end local v0           #errorMessageResId:I
    :pswitch_1
    const v0, 0x7f0b031b

    .line 3255
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3261
    .end local v0           #errorMessageResId:I
    :pswitch_2
    const v0, 0x7f0b031c

    .line 3262
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3267
    .end local v0           #errorMessageResId:I
    :pswitch_3
    const v0, 0x7f0b031d

    .line 3268
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3273
    .end local v0           #errorMessageResId:I
    :pswitch_4
    const v0, 0x7f0b031e

    .line 3274
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3278
    .end local v0           #errorMessageResId:I
    :pswitch_5
    const v0, 0x7f0b031f

    .line 3279
    .restart local v0       #errorMessageResId:I
    goto :goto_0

    .line 3244
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
    .locals 1
    .parameter "v"
    .parameter "event"

    .prologue
    .line 6493
    const/4 v0, 0x1

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter "hasFocus"

    .prologue
    .line 3081
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

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

    .line 3082
    :cond_0
    if-eqz p1, :cond_1

    .line 3083
    const-string v0, "Calling_Kpi_Debug"

    const-string v1, "onWindowFocusChanged to true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3085
    :cond_1
    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    if-eqz v0, :cond_3

    .line 3086
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_2

    const-string v0, "- onWindowFocusChanged: faking onDialerKeyUp()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 3087
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialer;->onDialerKeyUp(Landroid/view/KeyEvent;)Z

    .line 3089
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->fixFocus()V

    .line 3090
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mHasWindowFocus:Z

    .line 3091
    return-void
.end method

.method public openDialerforKeyboard()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2791
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Opening DTMF Dialpad for the hard-key activity"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 2792
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_2

    .line 2812
    :cond_1
    :goto_0
    return-void

    .line 2799
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    if-eqz v0, :cond_3

    .line 2800
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 2801
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mKeypadButtonAndDialer:Landroid/view/View;

    const/high16 v1, -0x4e00

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 2804
    :cond_3
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v0, v1, :cond_4

    .line 2805
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 2808
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHideKeypadButton:Landroid/widget/ImageButton;

    if-eqz v0, :cond_5

    .line 2809
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHideKeypadButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200e0

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 2810
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->openDialer(Z)V

    goto :goto_0
.end method

.method requestCloseOtaFailureNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 6502
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

    .line 6503
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x78

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6511
    return-void
.end method

.method requestCloseSpcErrorNotice(J)V
    .locals 2
    .parameter "timeout"

    .prologue
    .line 6519
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

    .line 6520
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x77

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 6521
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x73

    .line 6433
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6437
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6438
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6439
    return-void
.end method

.method requestUpdateTouchUi()V
    .locals 2

    .prologue
    const/16 v1, 0x7b

    .line 6246
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "requestUpdateTouchUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6248
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6249
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6250
    return-void
.end method

.method public resetInCallScreenMode()V
    .locals 1

    .prologue
    .line 7639
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "resetInCallScreenMode - InCallScreenMode set to UNDEFINED"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7640
    :cond_0
    sget-object v0, Lcom/android/phone/InCallScreen$InCallScreenMode;->UNDEFINED:Lcom/android/phone/InCallScreen$InCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->setInCallScreenMode(Lcom/android/phone/InCallScreen$InCallScreenMode;)V

    .line 7641
    return-void
.end method

.method public setDockModePhone()V
    .locals 1

    .prologue
    .line 1201
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "setDockModePhone()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1202
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->isInDockMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mDockSpeakerPhone:Z

    if-eqz v0, :cond_2

    .line 1203
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isBluetoothAudioConnected()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1204
    :cond_1
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "In dock mode :isHeadsetPlugged or BluetoothAudioConnected"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1211
    :cond_2
    :goto_0
    return-void

    .line 1206
    :cond_3
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_4

    const-string v0, "In dock mode: no headset and blue tooth enable speaker"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1207
    :cond_4
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->updateScreenForDock(Z)V

    .line 1208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mDockSpeakerPhone:Z

    goto :goto_0
.end method

.method public setEndingBeforeSwitch(Z)V
    .locals 0
    .parameter "flag"

    .prologue
    .line 596
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mEndingBeforeSwitch:Z

    .line 597
    return-void
.end method

.method public setKeypadButtonEnabled(Z)V
    .locals 1
    .parameter "status"

    .prologue
    .line 7680
    sget-boolean v0, Lcom/android/phone/InteractionConfig;->IS_SHOW_DIALPAD_BUTTON:Z

    if-eqz v0, :cond_0

    .line 7681
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 7683
    :cond_0
    return-void
.end method

.method protected setMute(Z)V
    .locals 2
    .parameter "state"

    .prologue
    .line 7015
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setMute : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7016
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-ne p1, v0, :cond_2

    .line 7017
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "no change. returning"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7021
    :cond_1
    :goto_0
    return-void

    .line 7020
    :cond_2
    invoke-static {p1}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    goto :goto_0
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 0
    .parameter "phone"

    .prologue
    .line 1259
    iput-object p1, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1260
    return-void
.end method

.method protected setSpeaker(Z)V
    .locals 4
    .parameter "state"

    .prologue
    const/4 v3, 0x1

    .line 7024
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 7025
    .local v0, context:Landroid/content/Context;
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSpeaker : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7026
    :cond_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-ne p1, v1, :cond_2

    .line 7027
    sget-boolean v1, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "no change. returning"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7039
    :cond_1
    :goto_0
    return-void

    .line 7031
    :cond_2
    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 7032
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->disconnectBluetoothAudio()V

    .line 7033
    invoke-static {v3}, Lcom/android/phone/PhoneUtils;->updateRestoreBtAudio(Z)V

    .line 7038
    :cond_3
    :goto_1
    invoke-static {v0, p1, v3}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 7034
    :cond_4
    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/phone/PhoneUtils;->getRestoreBtAudio()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7035
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->connectBluetoothAudio()V

    .line 7036
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->updateRestoreBtAudio(Z)V

    goto :goto_1
.end method

.method public setUpdateScreen(ZZ)V
    .locals 2
    .parameter "flag"
    .parameter "immediateCardUpdate"

    .prologue
    .line 600
    iput-boolean p1, p0, Lcom/android/phone/InCallScreen;->mUpdateScreen:Z

    .line 601
    if-eqz p2, :cond_1

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_1

    .line 602
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "Intermediate CallCardUpdate"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 603
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    .line 606
    :cond_1
    return-void
.end method

.method public showIncoming()V
    .locals 9

    .prologue
    const v8, 0x7f0b012e

    const/4 v5, 0x1

    const/4 v7, 0x0

    const/16 v6, 0x8

    .line 6720
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_0

    const-string v4, "showIncoming ... :"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6721
    :cond_0
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v3

    .line 6722
    .local v3, ringingCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    .line 6723
    .local v2, fgCall:Lcom/android/internal/telephony/Call;
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v4}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 6724
    .local v0, bgCall:Lcom/android/internal/telephony/Call;
    sget-object v4, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_1

    .line 6725
    sget-object v4, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    .line 6726
    const/4 v4, 0x0

    sput-object v4, Lcom/android/phone/PhoneUtils;->mMMIDialog:Landroid/app/AlertDialog;

    .line 6729
    :cond_1
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6730
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 6731
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6733
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    iget v4, v4, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    if-ne v4, v5, :cond_8

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    .line 6735
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsNoEarpieceWhenFlipClose:Z

    if-ne v4, v5, :cond_b

    .line 6737
    iget-boolean v4, p0, Lcom/android/phone/InCallScreen;->mIsFlipOpen:Z

    if-nez v4, :cond_9

    .line 6739
    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_b

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_b

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_b

    .line 6742
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    if-eqz v4, :cond_3

    .line 6744
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6746
    :cond_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    if-eqz v4, :cond_4

    .line 6747
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6749
    :cond_4
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    if-eqz v4, :cond_5

    .line 6750
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6751
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEmptyMarginLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6753
    :cond_5
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlLocked:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6754
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInfoTextArea:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_6

    .line 6755
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInfoTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6756
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInfoTextArea:Landroid/widget/LinearLayout;

    const v5, -0xe6e6e7

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 6757
    invoke-static {}, Lcom/android/phone/InCallScreen;->setTextInfoShown()V

    .line 6759
    :cond_6
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterIncoming:Landroid/view/View;

    if-eqz v4, :cond_7

    .line 6760
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterIncoming:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6890
    :cond_7
    :goto_1
    return-void

    :cond_8
    move v4, v7

    .line 6733
    goto :goto_0

    .line 6768
    :cond_9
    sget-boolean v4, Lcom/android/phone/InCallScreen;->mTextInfoShown:Z

    if-ne v4, v5, :cond_a

    invoke-virtual {v3}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 6770
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6771
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 6775
    :cond_a
    sput-boolean v7, Lcom/android/phone/InCallScreen;->mTextInfoShown:Z

    .line 6780
    :cond_b
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInfoTextArea:Landroid/widget/LinearLayout;

    if-eqz v4, :cond_c

    .line 6781
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mInfoTextArea:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6789
    :cond_c
    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_SHOW_INCOMING_CALL_WITH_TWO_CALLS_CONNECTED:Z

    if-eqz v4, :cond_12

    .line 6791
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_11

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_11

    .line 6794
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIgnoreButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6795
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndActiveAnswerIncomingButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6796
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndHoldAnswerIncomingButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6797
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 6798
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6800
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    .line 6825
    :goto_2
    invoke-static {v2, v0}, Lcom/android/phone/PhoneUtils;->isSingleCall(Lcom/android/internal/telephony/Call;Lcom/android/internal/telephony/Call;)Z

    move-result v4

    if-eqz v4, :cond_14

    move v1, v7

    .line 6830
    .local v1, endCallAndAnswerButtonVisibility:I
    :goto_3
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    const/4 v5, 0x2

    if-ne v4, v5, :cond_15

    .line 6831
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    if-eqz v4, :cond_d

    .line 6832
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6833
    :cond_d
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEmptyMarginLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6834
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButton:Landroid/widget/Button;

    if-eqz v4, :cond_e

    .line 6835
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 6853
    :cond_e
    :goto_4
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->inTableTopMode()Z

    move-result v4

    if-eqz v4, :cond_1b

    .line 6854
    sget-boolean v4, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v4, :cond_f

    const-string v4, "table top mode..."

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6855
    :cond_f
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v4

    if-nez v4, :cond_19

    .line 6858
    sget-boolean v4, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v4, :cond_10

    const-string v4, "Phone not in use"

    invoke-direct {p0, v4}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6859
    :cond_10
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6865
    :goto_5
    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_SHOW_INCOMING_CALL_WITH_TWO_CALLS_CONNECTED:Z

    if-eqz v4, :cond_1a

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 6867
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6889
    :goto_6
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterIncoming:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1

    .line 6803
    .end local v1           #endCallAndAnswerButtonVisibility:I
    :cond_11
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndHoldAnswerIncomingButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 6804
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndActiveAnswerIncomingButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 6805
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6806
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    .line 6810
    :cond_12
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_13

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_13

    .line 6812
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndHoldAnswerIncomingButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6813
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndActiveAnswerIncomingButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6814
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIgnoreButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    .line 6815
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 6816
    invoke-static {p0, v8, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_2

    .line 6818
    :cond_13
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndHoldAnswerIncomingButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 6819
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndActiveAnswerIncomingButton:Landroid/widget/Button;

    invoke-virtual {v4, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 6820
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerButton:Landroid/widget/Button;

    invoke-virtual {v4, v7}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_2

    :cond_14
    move v1, v6

    .line 6825
    goto/16 :goto_3

    .line 6838
    .restart local v1       #endCallAndAnswerButtonVisibility:I
    :cond_15
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    if-eqz v4, :cond_17

    .line 6839
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButtonHolder:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 6840
    if-ne v1, v6, :cond_16

    .line 6841
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEmptyMarginLayout:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 6844
    :cond_16
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEmptyMarginLayout:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4

    .line 6846
    :cond_17
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButton:Landroid/widget/Button;

    if-eqz v4, :cond_18

    .line 6847
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mEndCallAndAnswerButton:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto/16 :goto_4

    .line 6849
    :cond_18
    const-string v4, "InCallScreen"

    const-string v5, "ERROR: both EndCallAndAnswerButtonHolder and EndCallAndAnswerButton are null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    .line 6861
    :cond_19
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_5

    .line 6869
    :cond_1a
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6870
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlLocked:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 6873
    :cond_1b
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mAnswerOnSpkrButtonHolder:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6874
    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-eqz v4, :cond_1c

    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/phone/PhoneApp;->showIncomingCallLockedUI()Z

    move-result v4

    if-eqz v4, :cond_1c

    .line 6876
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    .line 6877
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlLocked:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 6880
    :cond_1c
    sget-boolean v4, Lcom/android/phone/InteractionConfig;->IS_SHOW_INCOMING_CALL_WITH_TWO_CALLS_CONNECTED:Z

    if-eqz v4, :cond_1d

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1d

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v4

    if-nez v4, :cond_1d

    .line 6882
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6

    .line 6884
    :cond_1d
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlNormal:Landroid/view/View;

    invoke-virtual {v4, v7}, Landroid/view/View;->setVisibility(I)V

    .line 6885
    iget-object v4, p0, Lcom/android/phone/InCallScreen;->mIncomingCallCtrlLocked:Landroid/view/View;

    invoke-virtual {v4, v6}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_6
.end method

.method public showResumeButton()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v2, 0x8

    .line 6525
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    const-string v0, "showResumeButton ... :"

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6526
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->getScreenSize(Landroid/content/Context;)Lcom/android/phone/PhoneUtils$ScreenSize;

    move-result-object v0

    sget-object v1, Lcom/android/phone/PhoneUtils$ScreenSize;->QVGA:Lcom/android/phone/PhoneUtils$ScreenSize;

    if-ne v0, v1, :cond_6

    invoke-static {}, Lcom/android/phone/InCallScreen$ConfigurationHelper;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 6527
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 6528
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6530
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 6531
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v2}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 6532
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 6533
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6534
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mEndCallQvgaButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6535
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 6536
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 6537
    :cond_2
    sget-boolean v0, Lcom/android/phone/InteractionConfig;->IS_PHYSICAL_QWERTY_MODE2:Z

    if-nez v0, :cond_3

    .line 6538
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mKeypadButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 6550
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->HOLDING:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_5

    .line 6552
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6554
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    if-ne v0, v4, :cond_5

    .line 6555
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMergeCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 6556
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6561
    :cond_5
    return-void

    .line 6540
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_7

    .line 6541
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6543
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mResumeButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6544
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6545
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 6546
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method public showSwapButton()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 6676
    sget-boolean v2, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "showSwapButton ... :"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6677
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    .line 6678
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6680
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 6681
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 6682
    .local v1, currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_5

    .line 6683
    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/phone/InCallScreen;->mIsCallMerged:Z

    if-ne v2, v3, :cond_4

    .line 6684
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 6685
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f0b03e1

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 6686
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->hideSwitchCallButton()V

    .line 6691
    :goto_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    .line 6699
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    if-eqz v2, :cond_2

    .line 6700
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mFirstLineActionBar:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6703
    :cond_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialer;

    invoke-virtual {v2}, Lcom/android/phone/DTMFTwelveKeyDialer;->isOpened()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 6704
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6709
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mMuteButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 6710
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSpeakerButton:Landroid/widget/ToggleButton;

    invoke-virtual {v2, v4}, Landroid/widget/ToggleButton;->setVisibility(I)V

    .line 6711
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 6712
    return-void

    .line 6688
    .restart local v0       #app:Lcom/android/phone/PhoneApp;
    .restart local v1       #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_4
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f020089

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 6689
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f0b0106

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 6692
    :cond_5
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_1

    .line 6693
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f020021

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 6694
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f0b0334

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 6695
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mAddCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1

    .line 6706
    .end local v0           #app:Lcom/android/phone/PhoneApp;
    .end local v1           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_6
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v2, :cond_3

    .line 6707
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2
.end method

.method public showSwitchCallButton()V
    .locals 4

    .prologue
    .line 6569
    sget-boolean v2, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v2, :cond_0

    const-string v2, "showSwitchCallButton ...:"

    invoke-direct {p0, v2}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 6570
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 6572
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6573
    .local v0, app:Lcom/android/phone/PhoneApp;
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    if-eqz v2, :cond_2

    .line 6574
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v1

    .line 6575
    .local v1, currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_4

    .line 6576
    const/4 v2, 0x1

    sget-boolean v3, Lcom/android/phone/InCallScreen;->mIsCallMerged:Z

    if-ne v2, v3, :cond_3

    .line 6577
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f020025

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 6586
    .end local v1           #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_2
    :goto_0
    return-void

    .line 6579
    .restart local v1       #currState:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f020089

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0

    .line 6581
    :cond_4
    sget-object v2, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v1, v2, :cond_2

    .line 6582
    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mSwitchButton:Landroid/widget/Button;

    const v3, 0x7f020021

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method startTimer()V
    .locals 1

    .prologue
    .line 2190
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->startTimer()V

    .line 2191
    :cond_0
    return-void
.end method

.method protected startVoiceRecord()V
    .locals 11

    .prologue
    const-string v10, "InCallScreen"

    .line 7972
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v7

    .line 7973
    .local v7, app:Lcom/android/phone/PhoneApp;
    sget-boolean v0, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-nez v0, :cond_1

    .line 7996
    :cond_0
    :goto_0
    return-void

    .line 7976
    :cond_1
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    if-eqz v0, :cond_0

    .line 7979
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InCallScreen;->mVaPending:Z

    .line 7982
    :try_start_0
    const-string v0, "InCallScreen"

    const-string v1, "w20080 - starting recording ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7983
    iget-object v0, v7, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    const/4 v1, 0x3

    const-string v2, "com.android.phone.InCallScreen"

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    const-string v6, ""

    invoke-interface/range {v0 .. v6}, Lcom/motorola/soundrecorder/ISoundRecorderService;->startRecording(ILjava/lang/String;JLjava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 7985
    .local v9, result:I
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaTime:Landroid/widget/TextView;

    const-string v1, "00:00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7986
    if-ltz v9, :cond_2

    .line 7988
    const-string v0, "InCallScreen"

    const-string v1, "w20080 - updating UI ..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7989
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InCallScreen;->updateVoiceRecordUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7993
    .end local v9           #result:I
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 7994
    .local v8, e:Landroid/os/RemoteException;
    const-string v0, "InCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startRecording failed - "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7991
    .end local v8           #e:Landroid/os/RemoteException;
    .restart local v9       #result:I
    :cond_2
    :try_start_1
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startRecording failed - result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method stopTimer()V
    .locals 1

    .prologue
    .line 2185
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0}, Lcom/android/phone/CallCard;->stopTimer()V

    .line 2186
    :cond_0
    return-void
.end method

.method protected stopVoiceRecord()V
    .locals 5

    .prologue
    const-string v4, "InCallScreen"

    .line 7999
    sget-boolean v2, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-nez v2, :cond_1

    .line 8013
    :cond_0
    :goto_0
    return-void

    .line 8002
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 8003
    .local v0, app:Lcom/android/phone/PhoneApp;
    const-string v2, "InCallScreen"

    const-string v2, "w20080 - stop recording!"

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8005
    :try_start_0
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    if-eqz v2, :cond_0

    .line 8008
    iget-object v2, v0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    invoke-interface {v2}, Lcom/motorola/soundrecorder/ISoundRecorderService;->stopRecording()V

    .line 8009
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/phone/InCallScreen;->updateVoiceRecordUi(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 8010
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 8011
    .local v1, e:Landroid/os/RemoteException;
    const-string v2, "InCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "stop voice recording error : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateAfterRadioTechnologyChange()V
    .locals 4

    .prologue
    .line 2003
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "InCallScreen"

    const-string v1, "updateAfterRadioTechnologyChange()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2012
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->resetInCallScreenMode()V

    .line 2015
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 2016
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7e

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2023
    :goto_0
    return-void

    .line 2018
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForServiceStateChanged(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method updateCallCardOnly()V
    .locals 2

    .prologue
    .line 7947
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 7948
    return-void
.end method

.method public updateDialpadButton(Z)V
    .locals 4
    .parameter "dialpadVisible"

    .prologue
    const/4 v3, 0x0

    .line 1611
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateDialpadButton, state is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1612
    :cond_0
    if-eqz p1, :cond_2

    .line 1614
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0201b4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1615
    .local v0, dimBg:Landroid/graphics/drawable/Drawable;
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallControlHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1616
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_1

    const-string v1, "set dim background"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1619
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    const v2, 0x7f0b032f

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1620
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mHideDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1633
    .end local v0           #dimBg:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-void

    .line 1625
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCallControlHolder:Landroid/view/ViewGroup;

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1626
    sget-boolean v1, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v1, :cond_3

    const-string v1, "set null background"

    invoke-direct {p0, v1}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 1629
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    const v2, 0x7f0b032e

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(I)V

    .line 1630
    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mToggleDTMFKeypadButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/phone/InCallScreen;->mShowDialpadIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method

.method updateInCallScreen()V
    .locals 2

    .prologue
    const/16 v1, 0x7d

    .line 7716
    sget-boolean v0, Lcom/android/phone/InCallScreen;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "updateInCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V

    .line 7717
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    .line 7718
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 7719
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 7721
    :cond_1
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter "dismissKeyguard"

    .prologue
    const/high16 v1, 0x40

    .line 7700
    if-eqz p1, :cond_0

    .line 7701
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 7705
    :goto_0
    return-void

    .line 7703
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateMultiPartyCallView(Ljava/util/List;)V
    .locals 2
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/Connection;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4244
    .local p1, connections:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/Connection;>;"
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    invoke-virtual {v0, p1}, Lcom/android/phone/MultiPartyCallUtils;->updateManageMultiPartyPanel(Ljava/util/List;)V

    .line 4245
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mMultiPartyCallUtils:Lcom/android/phone/MultiPartyCallUtils;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/phone/MultiPartyCallUtils;->setPanelVisible(Z)V

    .line 4246
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mInCallPanel:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4247
    return-void
.end method

.method updateNoCall()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 7246
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterActive:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7247
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterIncoming:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7248
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 7249
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCardFooterTwoCallsLand:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 7250
    :cond_0
    return-void
.end method

.method updateRotarySelectorHint(II)V
    .locals 2
    .parameter "hintTextResId"
    .parameter "hintColorResId"

    .prologue
    .line 7664
    sget-boolean v0, Lcom/android/phone/InCallScreen;->VDBG:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateRotarySelectorHint("

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

    .line 7665
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    if-eqz v0, :cond_1

    .line 7666
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    invoke-virtual {v0, p1, p2}, Lcom/android/phone/CallCard;->setRotarySelectorHint(II)V

    .line 7667
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mCallCard:Lcom/android/phone/CallCard;

    iget-object v1, p0, Lcom/android/phone/InCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallCard;->updateState(Lcom/android/internal/telephony/CallManager;)V

    .line 7677
    :cond_1
    return-void
.end method

.method public updateScreenForDock(Z)V
    .locals 1
    .parameter "dockMode"

    .prologue
    .line 1195
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 1196
    invoke-direct {p0}, Lcom/android/phone/InCallScreen;->updateScreen()V

    .line 1197
    return-void
.end method

.method public updateVoiceRecordUi(Z)V
    .locals 4
    .parameter "recording"

    .prologue
    const/16 v3, 0x1f40

    .line 8016
    const-string v0, "InCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateVoiceRecordUi("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 8017
    sget-boolean v0, Lcom/android/phone/PhoneApp;->FEATURE_VOICE_RECORD_ENABLED:Z

    if-eqz v0, :cond_0

    .line 8018
    iget-boolean v0, p0, Lcom/android/phone/InCallScreen;->mVaPending:Z

    if-eqz v0, :cond_1

    .line 8019
    invoke-virtual {p0}, Lcom/android/phone/InCallScreen;->startVoiceRecord()V

    .line 8033
    :cond_0
    :goto_0
    return-void

    .line 8020
    :cond_1
    if-eqz p1, :cond_2

    .line 8021
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d6

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 8022
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaHint:Landroid/widget/TextView;

    const v1, 0x7f0b03f5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8023
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaTime:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8024
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8025
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 8027
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaButton:Landroid/widget/ImageButton;

    const v1, 0x7f0200d4

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V

    .line 8028
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaHint:Landroid/widget/TextView;

    const v1, 0x7f0b03f4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 8029
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 8030
    iget-object v0, p0, Lcom/android/phone/InCallScreen;->mVaTime:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
