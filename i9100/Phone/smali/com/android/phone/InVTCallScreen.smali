.class public Lcom/android/phone/InVTCallScreen;
.super Landroid/app/Activity;
.source "InVTCallScreen.java"

# interfaces
.implements Landroid/pim/ContactsAsyncHelper$OnImageLoadCompleteListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/phone/CallTime$OnTickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/phone/InVTCallScreen$51;,
        Lcom/android/phone/InVTCallScreen$SwitchAnimationTask;,
        Lcom/android/phone/InVTCallScreen$BrightZoomTimer;,
        Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;,
        Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;
    }
.end annotation


# static fields
.field protected static disconnectDueToLowBattery:Z

.field private static farend_pressed:Z

.field private static isVTManagerAlreadyStarted:Z

.field private static mBackPressed:Z

.field private static mHomePressed:Z

.field protected static mImageSelectedFromGalary:Landroid/net/Uri;

.field private static mLongPressMenuEnabled:Z

.field private static mLongPressMoveCount:I

.field protected static mVideoSelectedFromGalary:Landroid/net/Uri;

.field private static nearend_pressed:Z


# instance fields
.field private final COUNTDOWN_INTERVAL:I

.field private CallStopLayoutImage:Landroid/widget/LinearLayout;

.field private final DURINGCALL:I

.field private final DURINGCALL_LOCK:I

.field private final DURINGCALL_UNLOCK:I

.field private final INCOMING_CALL:I

.field private final INCOMING_LOCK:I

.field private final INCOMING_UNLOCK:I

.field private ImgProj:[Ljava/lang/String;

.field private KeyGuard:Z

.field private final MILLIS_IN_FUTURE:I

.field private final OUTGOING_CALL:I

.field private final OUTGOING_LOCK:I

.field private final OUTGOING_UNLOCK:I

.field private final PROGRESS_MAX:I

.field private SeekBarLayout:Landroid/widget/LinearLayout;

.field private VideoProj:[Ljava/lang/String;

.field private bLowBat:Z

.field private bitmap:Landroid/graphics/Bitmap;

.field private brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

.field private dialpadLayout:Landroid/widget/LinearLayout;

.field private disconnectMsg:Landroid/os/Message;

.field private duringEndCalllayout:Landroid/widget/LinearLayout;

.field private farEndImage:Landroid/widget/ImageView;

.field protected far_endsurhldr:Landroid/view/SurfaceHolder;

.field protected far_endsurview:Landroid/view/SurfaceView;

.field private filePath:Ljava/lang/String;

.field protected incomingContactImage:Landroid/widget/ImageView;

.field private isCallConnected:Z

.field private isCaptureFarEnd:Z

.field private isFarEndCapture:Z

.field private isFarEndRecord:Z

.field private isFrontCameraEnabled:Z

.field private isMO_Disconnect:Z

.field private isNearEndRecord:Z

.field private isNearEndRecording:Z

.field private isPresetImageEnabled:Z

.field private isPresetImageSelectedFromOption:Z

.field private isSurfaceViewSwipe:Z

.field public isSwitchCameraClicked:Z

.field private isVTCallAlreadyStop:Z

.field private keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAuxiDialogCameraPopup:Z

.field private mAuxiDialogList:Z

.field private mBackgroundCall:Lcom/android/internal/telephony/Call;

.field private mBeforeMakingCall:Z

.field private mBirthRemainedDays:Landroid/widget/TextView;

.field private mBirthdayIcon:Landroid/widget/ImageView;

.field private mBirthdayLayout:Landroid/widget/LinearLayout;

.field private mBluetoothConnectionPending:Z

.field private mBluetoothConnectionRequestTime:J

.field private mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

.field private mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

.field private mBlurPosition:I

.field private mBlur_Off:Z

.field protected mBrightSB:Landroid/widget/SeekBar;

.field mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

.field private mBrightSBPosition:I

.field private mCM:Lcom/android/internal/telephony/CallManager;

.field private mCallEndTime:Ljava/lang/String;

.field private mCallEndTimeBlinkCount:I

.field private mCallLostDialog:Landroid/app/AlertDialog;

.field private mCallTime:Lcom/android/phone/CallTime;

.field private mCallTimer:Landroid/widget/TextView;

.field private mCallerName:Landroid/widget/TextView;

.field private mCallerNumber:Landroid/widget/TextView;

.field private mCallerUppos:[Ljava/lang/String;

.field private mCancel:Landroid/view/MenuItem;

.field private mCapture:Landroid/view/MenuItem;

.field private mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private final mConfigurationChangedFilter:Landroid/content/IntentFilter;

.field private final mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mContextMenuDailog:Landroid/app/Dialog;

.field private mContextMenuStrArrayId:[Ljava/lang/String;

.field mCreateButton:Landroid/widget/Button;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mDesableOutGoingMenu:Z

.field private final mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

.field private mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

.field private mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

.field private mDisp_Small:Z

.field private mDownUppos:[Ljava/lang/String;

.field private mDownUpposBlurOff:[Ljava/lang/String;

.field private mEndCall:Landroid/widget/Button;

.field private mEndCallButtonFrame:Landroid/view/View;

.field protected mFaceBookIcon:Landroid/widget/ImageView;

.field private mFaceBookStatus:Landroid/widget/TextView;

.field private mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

.field private mFirstFarEndViewClicked:Z

.field private mFirstNearEndViewClicked:Z

.field private mForegroundCall:Lcom/android/internal/telephony/Call;

.field private mGenericErrorDialog:Landroid/app/AlertDialog;

.field private mHandler:Landroid/os/Handler;

.field private mHide:Landroid/widget/Button;

.field private mHideCheck:Z

.field private mHideDialPad:Landroid/widget/Button;

.field private mHideMe:Landroid/view/MenuItem;

.field protected mImageCaptureAnimationImageView:Landroid/widget/ImageView;

.field private mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

.field private mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

.field private mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

.field private mIsBatteryLow:Z

.field private mIsDestroyed:Z

.field private mIsForegroundActivity:Z

.field private mIsShowMenu:Z

.field private mIsplayVideo:Z

.field private mKeyLockStatus:I

.field private mKeyPad:Landroid/view/MenuItem;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private final mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private mLowMemoryStopRecording:Z

.field private mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

.field private mMenuSelected:I

.field protected mMinusBright:Landroid/widget/ImageView;

.field private mMissingVoicemailDialog:Landroid/app/AlertDialog;

.field private mMmiStartedDialog:Landroid/app/Dialog;

.field private mMute:Landroid/widget/ToggleButton;

.field private mNeedShowCallLostDialog:Z

.field private mOrientation:I

.field private mOutGoingImage:[Ljava/lang/String;

.field private mOutGoingImageHideMe:[Ljava/lang/String;

.field private mOutGoingWithPresetImage:[Ljava/lang/String;

.field private mOutImg:Landroid/view/MenuItem;

.field private mPauseInProgress:Z

.field private mPausePromptDialog:Landroid/app/AlertDialog;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field protected mPlusBright:Landroid/widget/ImageView;

.field private mProviderOverlayVisible:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field protected mRecordFarEndView:Landroid/widget/ImageView;

.field protected mRecordNearEndView:Landroid/widget/ImageView;

.field private mRecordTimeFarEnd:J

.field private mRecordTimeNearEnd:J

.field private mRecord_stop:Z

.field private mRecording:Landroid/view/MenuItem;

.field private mRecordingAlert:Z

.field private mRecordingFileName:Ljava/lang/String;

.field private mRegisteredForPhoneStates:Z

.field private mRingingCall:Lcom/android/internal/telephony/Call;

.field private final mRingingCallAnimationDuration:I

.field private mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

.field private mSC:Landroid/widget/Button;

.field private mSPKTV:Landroid/widget/ToggleButton;

.field mSaveButtonFrame:Landroid/view/View;

.field private mSeekBarSelection:I

.field mSendMsgButton:Landroid/widget/Button;

.field private mShowCallLogAfterDisconnect:Z

.field private mShowMe:Landroid/view/MenuItem;

.field private mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

.field private mSpeaker:Landroid/view/MenuItem;

.field private mStop:Landroid/view/MenuItem;

.field private mStopRecording:Landroid/widget/Button;

.field private mSuccessToastNotRequired:Z

.field private mSuppServiceFailureDialog:Landroid/app/AlertDialog;

.field private mSwitchHDSet:Landroid/view/MenuItem;

.field private mSwitchPHSet:Landroid/view/MenuItem;

.field private mToast:Landroid/widget/Toast;

.field private mToastExecuteOnceForDevicePolicyManager:Z

.field mUpdateButton:Landroid/widget/Button;

.field private mVTManager:Lsiso/vt/VTManager;

.field private mVTStatusText:Landroid/widget/TextView;

.field private mVTcalltype:I

.field private mVideoCallButton:Landroid/widget/Button;

.field private mVideoCallType:Z

.field private mVideoFileName:Ljava/lang/String;

.field private mVideoPlayer:Landroid/media/MediaPlayer;

.field private mVideoRecordTime:Landroid/widget/TextView;

.field private mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

.field private mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

.field private mVideoRecordTimeNearEnd:Landroid/widget/TextView;

.field private mVideofilePath:Ljava/lang/String;

.field private mVoiceCallButton:Landroid/widget/Button;

.field private mVoiceCallMessage:Ljava/lang/String;

.field private mWaitPromptDialog:Landroid/app/AlertDialog;

.field private mWildPromptDialog:Landroid/app/AlertDialog;

.field protected mZoomSB:Landroid/widget/SeekBar;

.field private mZoomSBPosition:I

.field private mainLayout:Landroid/widget/LinearLayout;

.field private muteFrame:Landroid/widget/FrameLayout;

.field myListener:Lsiso/vt/VTManager$VTStackStateListener;

.field private nearEndImage:Landroid/widget/ImageView;

.field nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

.field protected near_endsurhldr:Landroid/view/SurfaceHolder;

.field protected near_endsurview:Landroid/view/SurfaceView;

.field private nvBottomYPos:I

.field private nvTopYPos:I

.field protected outgoingContactImage:Landroid/widget/ImageView;

.field private phoneForCallNumber:Ljava/lang/String;

.field private rightVerticalLayout:Landroid/widget/LinearLayout;

.field private sdcardState:Ljava/lang/String;

.field private selectImg:Z

.field private selectVideo:Z

.field private showcamera:Z

.field private stopRecordingLayout:Landroid/widget/LinearLayout;

.field private svBottomYPos:I

.field private svTopYPos:I

.field private timerHandler:Landroid/os/Handler;

.field whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

.field whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 497
    sput-object v2, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 498
    sput-object v2, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    .line 665
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    .line 775
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->farend_pressed:Z

    .line 783
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    .line 1298
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 3098
    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 3099
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 7838
    sput-boolean v1, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    .line 7839
    sput v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return-void
.end method

.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v5, -0x1

    const/4 v1, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 196
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 214
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 215
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    .line 219
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    .line 224
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    .line 225
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    .line 229
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    .line 233
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 235
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    .line 236
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    .line 238
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 239
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 243
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 246
    const/16 v0, 0xc8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallAnimationDuration:I

    .line 252
    const/16 v0, 0x3e8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->MILLIS_IN_FUTURE:I

    .line 253
    const/16 v0, 0x64

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->COUNTDOWN_INTERVAL:I

    .line 254
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->PROGRESS_MAX:I

    .line 255
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 403
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    .line 449
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    .line 493
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 495
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 521
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    .line 564
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    .line 565
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 569
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mPauseInProgress:Z

    .line 588
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mFakeCallVoicePlayer:Landroid/media/MediaPlayer;

    .line 592
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_CALL:I

    .line 593
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_CALL:I

    .line 594
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_LOCK:I

    .line 595
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->INCOMING_UNLOCK:I

    .line 596
    const/4 v0, 0x5

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_LOCK:I

    .line 597
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->OUTGOING_UNLOCK:I

    .line 598
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL:I

    .line 599
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_LOCK:I

    .line 600
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->DURINGCALL_UNLOCK:I

    .line 603
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 604
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 605
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 607
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 608
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 613
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->CallStopLayoutImage:Landroid/widget/LinearLayout;

    .line 614
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    .line 630
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 634
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 636
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 637
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 638
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 640
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    .line 642
    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mZoomSBPosition:I

    .line 644
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoPlayer:Landroid/media/MediaPlayer;

    .line 646
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    .line 648
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    .line 650
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 652
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 667
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 731
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    .line 733
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mZoomSB:Landroid/widget/SeekBar;

    .line 735
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    .line 740
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    .line 746
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 750
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    const-string v1, "mime_type"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    .line 755
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 757
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 758
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    .line 759
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 760
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    .line 763
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 764
    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "_data"

    aput-object v1, v0, v2

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    .line 765
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 766
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->sdcardState:Ljava/lang/String;

    .line 767
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 768
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 769
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 770
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    .line 771
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 780
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    .line 781
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 782
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 792
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 793
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 794
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 795
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoFileName:Ljava/lang/String;

    .line 796
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    .line 798
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 801
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    .line 802
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    .line 805
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    .line 808
    new-instance v0, Lcom/android/phone/InVTCallScreen$1;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$1;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 833
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    .line 835
    new-instance v0, Lcom/android/phone/InVTCallScreen$2;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$2;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    .line 1218
    new-instance v0, Lcom/android/phone/InVTCallScreen$3;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$3;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 1241
    new-instance v0, Lcom/android/phone/InVTCallScreen$4;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$4;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    .line 1262
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    .line 1263
    new-instance v0, Lcom/android/phone/InVTCallScreen$5;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$5;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    .line 2721
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 8180
    new-instance v0, Lcom/android/phone/InVTCallScreen$24;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$24;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 8425
    new-instance v0, Lcom/android/phone/InVTCallScreen$25;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$25;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    .line 9197
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isCaptureFarEnd:Z

    .line 10084
    new-instance v0, Lcom/android/phone/InVTCallScreen$47;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$47;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    .line 10574
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecording:Z

    .line 10894
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    .line 10899
    new-instance v0, Lcom/android/phone/InVTCallScreen$50;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$50;-><init>(Lcom/android/phone/InVTCallScreen;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-void
.end method

.method private DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V
    .locals 0

    .prologue
    .line 6220
    return-void
.end method

.method private DisplayWaitingCallDialogWhenHaveHoldingCall()V
    .locals 10

    .prologue
    const v7, 0x7f0d02b8

    const-string v6, ")"

    const-string v5, "("

    const-string v8, " "

    .line 6226
    const-string v0, "InVTCallScreen: Waiting Call Dialog 2"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6229
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6231
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 6232
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d02be

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 6234
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6236
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6237
    if-nez v2, :cond_5

    .line 6238
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6264
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6266
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/String;

    .line 6267
    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    .line 6269
    const/4 v1, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    .line 6271
    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0d02bd

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 6272
    new-instance v0, Lcom/android/phone/InVTCallScreen$18;

    invoke-direct {v0, p0}, Lcom/android/phone/InVTCallScreen$18;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v2, v3, v0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 6292
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f030046

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 6294
    const v0, 0x7f08014d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6296
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02c3

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6298
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog$Builder;->setCustomTitle(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 6299
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 6300
    return-void

    .line 6240
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6242
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getForegroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6244
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6245
    if-nez v1, :cond_4

    .line 6246
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6247
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getBackgroundCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 6248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0d02bf

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    .line 6251
    goto/16 :goto_0

    .line 6253
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 6255
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/CallerInfo;

    .line 6257
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6258
    iget-object v3, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 6259
    if-nez v2, :cond_3

    .line 6260
    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    .line 6261
    :goto_2
    if-nez v3, :cond_2

    .line 6262
    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    goto/16 :goto_0

    :cond_2
    move-object v1, v0

    move-object v0, v3

    goto/16 :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_2

    :cond_4
    move-object v0, v1

    goto :goto_1

    :cond_5
    move-object v0, v2

    goto/16 :goto_0
.end method

.method private GetValidFileName(Z)Ljava/lang/String;
    .locals 6
    .parameter

    .prologue
    const-string v5, "yyyy-MM-dd kk.mm.ss"

    const-string v4, "VT"

    const-string v3, "/"

    .line 10440
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 10441
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    .line 10443
    if-eqz p1, :cond_0

    .line 10444
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".3gp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 10447
    :goto_0
    const-string v1, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "File Name : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10448
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 10446
    :cond_0
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "VT"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "yyyy-MM-dd kk.mm.ss"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v5, v2, v3}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, ".jpg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    return-void
.end method

.method static synthetic access$10000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->switchCamera()V

    return-void
.end method

.method static synthetic access$10100(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$10102(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return p1
.end method

.method static synthetic access$10108(Lcom/android/phone/InVTCallScreen;)I
    .locals 2
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTimeBlinkCount:I

    return v0
.end method

.method static synthetic access$102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    return p1
.end method

.method static synthetic access$10200(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$10300(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$1300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/phone/InVTCallScreen;)Landroid/os/Message;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object v0
.end method

.method static synthetic access$1502(Lcom/android/phone/InVTCallScreen;Landroid/os/Message;)Landroid/os/Message;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    return-object p1
.end method

.method static synthetic access$1602(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    return p0
.end method

.method static synthetic access$1702(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    return p0
.end method

.method static synthetic access$1800(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    return v0
.end method

.method static synthetic access$1900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    return-void
.end method

.method static synthetic access$2100()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return v0
.end method

.method static synthetic access$2102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    return p0
.end method

.method static synthetic access$2200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->continueOnDisconnection()V

    return-void
.end method

.method static synthetic access$2300(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onDisconnect(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/android/phone/InVTCallScreen;)Lsiso/vt/VTManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object v0
.end method

.method static synthetic access$2402(Lcom/android/phone/InVTCallScreen;Lsiso/vt/VTManager;)Lsiso/vt/VTManager;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    return-object p1
.end method

.method static synthetic access$2500(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onMMIInitiate(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMMICancel()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/CallManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    return-object v0
.end method

.method static synthetic access$2800(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;C)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 196
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handlePostOnDialChars(Landroid/os/AsyncResult;C)V

    return-void
.end method

.method static synthetic access$2900(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    return-void
.end method

.method static synthetic access$3100(Lcom/android/phone/InVTCallScreen;)Landroid/app/AlertDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3102(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$3202(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mProviderOverlayVisible:Z

    return p1
.end method

.method static synthetic access$3300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->bailOutAfterErrorDialog()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedImageFromGallery()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateSelectedVideoFromGallery()V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return v0
.end method

.method static synthetic access$3702(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    return p1
.end method

.method static synthetic access$3800(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsDestroyed:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return v0
.end method

.method static synthetic access$4102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    return p1
.end method

.method static synthetic access$4200(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    return p1
.end method

.method static synthetic access$4402(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    return p1
.end method

.method static synthetic access$4500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return v0
.end method

.method static synthetic access$4502(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    return p1
.end method

.method static synthetic access$4600(Lcom/android/phone/InVTCallScreen;)Landroid/graphics/drawable/AnimationDrawable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    return-object v0
.end method

.method static synthetic access$4700(Lcom/android/phone/InVTCallScreen;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/phone/InVTCallScreen;)Landroid/app/admin/DevicePolicyManager$MiscPolicy;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    return-void
.end method

.method static synthetic access$5102(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    return p1
.end method

.method static synthetic access$5200(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->performBatteryLowProcess()V

    return-void
.end method

.method static synthetic access$5300(Lcom/android/phone/InVTCallScreen;)Landroid/bluetooth/BluetoothHeadset;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    return-object v0
.end method

.method static synthetic access$5400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/ToggleButton;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSPKTV:Landroid/widget/ToggleButton;

    return-object v0
.end method

.method static synthetic access$5502(Lcom/android/phone/InVTCallScreen;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$5800(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return v0
.end method

.method static synthetic access$5802(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstFarEndViewClicked:Z

    return p1
.end method

.method static synthetic access$5900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return v0
.end method

.method static synthetic access$5902(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mFirstNearEndViewClicked:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method static synthetic access$6000()I
    .locals 1

    .prologue
    .line 196
    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$6002(I)I
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    sput p0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return p0
.end method

.method static synthetic access$6008()I
    .locals 2

    .prologue
    .line 196
    sget v0, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    add-int/lit8 v1, v0, 0x1

    sput v1, Lcom/android/phone/InVTCallScreen;->mLongPressMoveCount:I

    return v0
.end method

.method static synthetic access$6100()Z
    .locals 1

    .prologue
    .line 196
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return v0
.end method

.method static synthetic access$6102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->mLongPressMenuEnabled:Z

    return p0
.end method

.method static synthetic access$6200(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return v0
.end method

.method static synthetic access$6202(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svTopYPos:I

    return p1
.end method

.method static synthetic access$6300(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return v0
.end method

.method static synthetic access$6302(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->svBottomYPos:I

    return p1
.end method

.method static synthetic access$6400(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return v0
.end method

.method static synthetic access$6402(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvTopYPos:I

    return p1
.end method

.method static synthetic access$6500(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return v0
.end method

.method static synthetic access$6502(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->nvBottomYPos:I

    return p1
.end method

.method static synthetic access$6600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->swipeSurfaceView()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    return v0
.end method

.method static synthetic access$6802(Lcom/android/phone/InVTCallScreen;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$6900(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/phone/InVTCallScreen;Landroid/os/AsyncResult;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->onPhoneStateChanged(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static synthetic access$7000(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDownUpposBlurOff:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7102(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    sput-boolean p0, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    return p0
.end method

.method static synthetic access$7200(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    return v0
.end method

.method static synthetic access$7300(Lcom/android/phone/InVTCallScreen;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/phone/InVTCallScreen;)Landroid/widget/TextView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    return v0
.end method

.method static synthetic access$7600(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    return-void
.end method

.method static synthetic access$7700(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    return-void
.end method

.method static synthetic access$7800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$7900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Button;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$8000(Lcom/android/phone/InVTCallScreen;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    return p1
.end method

.method static synthetic access$8100(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    return v0
.end method

.method static synthetic access$8200(Lcom/android/phone/InVTCallScreen;)Lcom/android/internal/telephony/Call;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    return-object v0
.end method

.method static synthetic access$8300(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    return-void
.end method

.method static synthetic access$8400(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    return-void
.end method

.method static synthetic access$8500(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return v0
.end method

.method static synthetic access$8502(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    return p1
.end method

.method static synthetic access$8600(Lcom/android/phone/InVTCallScreen;)Landroid/widget/Toast;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$8602(Lcom/android/phone/InVTCallScreen;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$8700(Lcom/android/phone/InVTCallScreen;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    return-void
.end method

.method static synthetic access$8800(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return v0
.end method

.method static synthetic access$8802(Lcom/android/phone/InVTCallScreen;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput-boolean p1, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    return p1
.end method

.method static synthetic access$8900(Lcom/android/phone/InVTCallScreen;)Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/phone/InVTCallScreen;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    return v0
.end method

.method static synthetic access$9000(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    return-void
.end method

.method static synthetic access$9100(Lcom/android/phone/InVTCallScreen;)Landroid/app/Dialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    return-object v0
.end method

.method static synthetic access$9200(Lcom/android/phone/InVTCallScreen;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->contextMenuSelected(I)V

    return-void
.end method

.method static synthetic access$9300(Lcom/android/phone/InVTCallScreen;)Landroid/media/AudioManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    return-object v0
.end method

.method static synthetic access$9400(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    return-void
.end method

.method static synthetic access$9500(Lcom/android/phone/InVTCallScreen;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return v0
.end method

.method static synthetic access$9502(Lcom/android/phone/InVTCallScreen;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 196
    iput p1, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    return p1
.end method

.method static synthetic access$9600(Lcom/android/phone/InVTCallScreen;)Lcom/android/phone/InVTCallScreen$BrightZoomTimer;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    return-object v0
.end method

.method static synthetic access$9700(Lcom/android/phone/InVTCallScreen;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->brightOwnImage()V

    return-void
.end method

.method static synthetic access$9800(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$9900(Lcom/android/phone/InVTCallScreen;)Landroid/widget/LinearLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 196
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method private bailOutAfterErrorDialog()V
    .locals 1

    .prologue
    .line 6024
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 6026
    const-string v0, "bailOutAfterErrorDialog: DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6027
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6028
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6031
    :cond_0
    const-string v0, "bailOutAfterErrorDialog(): end InVTCallScreen session..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6032
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_1

    .line 6033
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6039
    :goto_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 6040
    return-void

    .line 6035
    :cond_1
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 6037
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_0
.end method

.method private batteryCheck()Z
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 1743
    .line 1744
    const-string v0, "/sys/class/power_supply/battery/charging_source"

    .line 1747
    const/16 v0, 0xa

    new-array v0, v0, [B

    .line 1751
    const-string v1, "batteryCheck !!!"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1754
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    const-string v2, "/sys/class/power_supply/battery/charging_source"

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1761
    :goto_0
    if-eqz v1, :cond_5

    .line 1762
    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 1763
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    move v1, v2

    .line 1766
    :goto_1
    if-eqz v1, :cond_0

    .line 1767
    new-instance v2, Ljava/lang/String;

    sub-int/2addr v1, v5

    invoke-direct {v2, v0, v4, v1}, Ljava/lang/String;-><init>([BII)V

    move-object v0, v2

    .line 1772
    :goto_2
    if-nez v0, :cond_1

    move v0, v5

    .line 1806
    :goto_3
    return v0

    .line 1755
    :catch_0
    move-exception v1

    .line 1756
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "charging_source FileNotFoundException : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1758
    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    move-object v1, v6

    goto :goto_0

    .line 1769
    :cond_0
    const-string v0, "batteryCheck : read in length is 0.."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move-object v0, v6

    goto :goto_2

    .line 1775
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1777
    if-nez v0, :cond_4

    .line 1778
    const-string v0, "Charging source is a battery"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v4

    move v1, v4

    .line 1781
    :goto_4
    const/4 v2, 0x5

    if-ge v0, v2, :cond_2

    .line 1782
    :try_start_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->getVoltage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    add-int/2addr v1, v2

    .line 1781
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 1784
    :catch_1
    move-exception v0

    .line 1785
    const-string v2, "IOException error"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1787
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1790
    :cond_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x10e000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 1793
    div-int/lit8 v1, v1, 0x5

    if-gt v1, v0, :cond_3

    .line 1794
    const-string v0, "Low battery"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v4

    .line 1795
    goto :goto_3

    .line 1798
    :cond_3
    const-string v0, "It\'s an enough battery to use a VT"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 1800
    goto :goto_3

    .line 1804
    :cond_4
    const-string v0, "Charging source is a TA or USB"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 1806
    goto :goto_3

    :cond_5
    move v1, v4

    goto/16 :goto_1
.end method

.method private brightOwnImage()V
    .locals 3

    .prologue
    .line 9859
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This is inside brightOwnImage and brightening by factor -->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBPosition:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9863
    return-void
.end method

.method private button_initialize()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x4

    const/4 v6, 0x0

    const-string v9, "InVTCallScreen"

    const-string v8, ""

    .line 7470
    const-string v0, "InVTCallScreen"

    const-string v0, "Enter button_initialize"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7471
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    sparse-switch v0, :sswitch_data_0

    .line 7833
    :cond_0
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit button_initialize"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7834
    return-void

    .line 7474
    :sswitch_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 7475
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setRingingCallFrameAni()V

    .line 7477
    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 7478
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d02f8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7483
    const v0, 0x7f08013c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 7484
    const v0, 0x7f08013d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    .line 7485
    const v0, 0x7f08013b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    .line 7488
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    .line 7489
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 7490
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 7491
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    .line 7509
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7510
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7513
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7514
    if-eqz v0, :cond_2

    .line 7515
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 7517
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7519
    if-eqz v0, :cond_4

    .line 7520
    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_3

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 7521
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v1, :pswitch_data_0

    .line 7533
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7534
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7536
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7537
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7550
    :goto_2
    if-eqz v0, :cond_1

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_1

    .line 7551
    iget-wide v1, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    .line 7552
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "%d"

    aput-object v2, v1, v6

    .line 7553
    new-array v2, v10, [Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 7554
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    long-to-int v4, v4

    aget-object v3, v3, v4

    .line 7555
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v3, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7556
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7557
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7561
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const v3, 0x7f02011d

    invoke-static {v1, v2, v0, v3}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 7596
    :cond_2
    :goto_3
    const-string v0, "InVTCallScreen"

    const-string v0, "Incomming Lock Screen Draw"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7597
    const v0, 0x7f080143

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/IncomingSlidingWidget;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    .line 7598
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, p0}, Lcom/android/phone/IncomingSlidingWidget;->initialize(Ljava/lang/Object;)V

    .line 7601
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0, v1, v10}, Lcom/android/phone/IncomingSlidingWidget;->updateState(Lcom/android/internal/telephony/CallManager;I)V

    .line 7602
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mIncomingSlidingWidget:Lcom/android/phone/IncomingSlidingWidget;

    invoke-virtual {v0, v6}, Lcom/android/phone/IncomingSlidingWidget;->setVisibility(I)V

    goto/16 :goto_0

    .line 7524
    :pswitch_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7525
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f02028d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 7527
    :pswitch_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7528
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f02028e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 7530
    :pswitch_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7531
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f02028f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_1

    .line 7539
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7540
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7541
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7542
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 7583
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7585
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 7588
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7589
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7590
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    .line 7608
    :sswitch_1
    const v0, 0x7f080145

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    .line 7609
    const v0, 0x7f080146

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    .line 7610
    const v0, 0x7f080144

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    .line 7613
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 7614
    const v0, 0x7f080139

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    .line 7615
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTStatusText:Landroid/widget/TextView;

    const v1, 0x7f0d0309

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 7616
    const v0, 0x7f080141

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    .line 7617
    const v0, 0x7f080142

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    .line 7619
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 7620
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 7622
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7623
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7624
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_7

    .line 7625
    const-string v0, "InVTCallScreen"

    const-string v0, "In Locked outgoing condn"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7669
    :cond_5
    :goto_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7670
    if-eqz v0, :cond_0

    .line 7672
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 7674
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7675
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-eqz v1, :cond_c

    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_c

    .line 7676
    const-string v1, "calling birthday icon for outgoing call"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7677
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_6

    iget-wide v1, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    if-eqz v1, :cond_6

    .line 7678
    const-string v1, "calling birthday icon for outgoing call"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7680
    new-array v1, v10, [Ljava/lang/String;

    const-string v2, "%d"

    aput-object v2, v1, v6

    .line 7681
    new-array v2, v10, [Ljava/lang/String;

    iget-wide v3, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    .line 7682
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070007

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    long-to-int v4, v4

    aget-object v3, v3, v4

    .line 7683
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v3, v1, v2}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7684
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7685
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v6}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7688
    :cond_6
    iget v1, v0, Lcom/android/internal/telephony/CallerInfo;->snsAccountType:I

    packed-switch v1, :pswitch_data_1

    .line 7700
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7701
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7703
    :goto_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7704
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->snsStatus:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7711
    :goto_6
    iget-object v1, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 7713
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v4, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v3, v4, v5}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    const v3, 0x7f02011d

    invoke-static {v1, v2, v0, v3}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    goto/16 :goto_0

    .line 7632
    :cond_7
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_5

    .line 7634
    const-string v0, "InVTCallScreen"

    const-string v0, "In unLocked outgoing condn"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7635
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_8

    .line 7636
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 7638
    :cond_8
    const v0, 0x7f08014a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    .line 7639
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    if-eqz v0, :cond_a

    .line 7641
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7642
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7643
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-nez v0, :cond_9

    .line 7645
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0d02d8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 7647
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 7650
    :cond_a
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    .line 7651
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_b

    .line 7653
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7654
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7657
    :cond_b
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    .line 7658
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_5

    .line 7660
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7661
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7662
    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 7663
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_4

    .line 7691
    :pswitch_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7692
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f02028d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 7694
    :pswitch_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7695
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f02028e

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 7697
    :pswitch_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7698
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    const v2, 0x7f02028f

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto/16 :goto_5

    .line 7706
    :cond_c
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7707
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v1, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7708
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 7709
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 7735
    :cond_d
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 7736
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7737
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7738
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mFaceBookStatus:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7751
    :sswitch_2
    iput v6, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 7752
    const-string v0, "InVTCallScreen"

    const-string v0, "In DURINGCALL condn button initialize"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7753
    const v0, 0x7f080113

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    .line 7754
    const v0, 0x7f080127

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    .line 7755
    const v0, 0x7f08012c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    .line 7756
    const v0, 0x7f08012a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    .line 7757
    const v0, 0x7f080128

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    .line 7758
    const v0, 0x7f080068

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ToggleButton;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    .line 7759
    const v0, 0x7f08012b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    .line 7761
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 7762
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 7763
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    .line 7765
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7766
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7770
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 7771
    if-eqz v0, :cond_e

    .line 7772
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V

    .line 7776
    :cond_e
    const v0, 0x7f080129

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    .line 7778
    const v0, 0x7f08012d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    .line 7779
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7781
    const v0, 0x7f08011a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    .line 7782
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7787
    const v0, 0x7f080119

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    .line 7788
    const v0, 0x7f080120

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    .line 7789
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7790
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 7791
    const v0, 0x7f08011b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    .line 7792
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7793
    const v0, 0x7f080122

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    .line 7794
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 7796
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_f

    .line 7797
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 7801
    :cond_f
    const v0, 0x7f080121

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    .line 7802
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7803
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7804
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7805
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_10

    .line 7806
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7807
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7812
    :cond_10
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_11

    .line 7813
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7814
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7816
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 7817
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 7819
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v0, :cond_12

    .line 7820
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7821
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, p0}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7823
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 7824
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v0, v10}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 7826
    :cond_12
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_13

    .line 7827
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 7829
    :cond_13
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit DURINGCALL condn button initialize"

    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7471
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 7521
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 7688
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method private cancelRecordingFarEndView()V
    .locals 3

    .prologue
    const/16 v2, 0x7e

    .line 10563
    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10564
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10565
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    .line 10567
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    .line 10568
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10569
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10570
    const v0, 0x7f0d031c

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 10571
    return-void
.end method

.method private cancelRecordingNearEndView()V
    .locals 2

    .prologue
    .line 10602
    const-string v0, "InVTCallScreen"

    const-string v1, "In cancelRecordingNearEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10603
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10604
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->CancelRecording()V

    .line 10605
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10606
    return-void
.end method

.method private capture_farend_view(J)V
    .locals 8
    .parameter

    .prologue
    const/16 v6, 0x7e

    const/4 v5, 0x0

    const/4 v4, 0x1

    const-string v7, "InVTCallScreen"

    .line 10487
    const-string v0, "InVTCallScreen"

    const-string v0, "In capture_farend_view method"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10488
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10489
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 10491
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->imageCaptureAnimation()V

    .line 10492
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10493
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10494
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 10495
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10496
    const v0, 0x7f0d02f5

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 10497
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 10498
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Capture File Name : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10499
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 10500
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 10501
    const-string v0, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 10502
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 10503
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v6, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10506
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    .line 10508
    new-array v0, v4, [Ljava/lang/String;

    .line 10509
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v5

    .line 10510
    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$49;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$49;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 10519
    :goto_0
    return-void

    .line 10517
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private capture_nearend_view(J)V
    .locals 5
    .parameter

    .prologue
    const/4 v4, 0x0

    .line 10458
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->imageCaptureAnimation()V

    .line 10459
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10460
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x80

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10461
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 10462
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10463
    const-string v0, "InVTCallScreen"

    const-string v1, "In capture_nearend_view method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10464
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 10465
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10466
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 10467
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 10468
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 10469
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v0, v1, v4}, Lsiso/vt/VTManager;->CaptureImage(Ljava/lang/String;Z)V

    .line 10471
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 10472
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    aput-object v1, v0, v4

    .line 10473
    const/4 v1, 0x0

    new-instance v2, Lcom/android/phone/InVTCallScreen$48;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$48;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-static {p0, v0, v1, v2}, Landroid/media/MediaScannerConnection;->scanFile(Landroid/content/Context;[Ljava/lang/String;[Ljava/lang/String;Landroid/media/MediaScannerConnection$OnScanCompletedListener;)V

    .line 10480
    :cond_0
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    .line 10481
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 10484
    return-void
.end method

.method private changeImgSize(I)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    const-string v1, "InVTCallScreen"

    .line 9866
    packed-switch p1, :pswitch_data_0

    .line 9905
    :cond_0
    :goto_0
    return-void

    .line 9868
    :pswitch_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 9869
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside ChangeImage for Caller Image with Small size -- "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9873
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9874
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 9875
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v2}, Landroid/view/SurfaceView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHeight()I

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9883
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 9884
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside ChangeImage for Caller Image with Large size --"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9887
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 9888
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9889
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 9890
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x16b

    const/16 v3, 0x110

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9894
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9895
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 9896
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x1b4

    const/16 v3, 0x146

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 9866
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkForCleanupState()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 5203
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 5204
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    .line 5216
    :goto_0
    return v0

    :cond_0
    move v0, v2

    .line 5207
    goto :goto_0

    .line 5209
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_3

    .line 5210
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    .line 5211
    goto :goto_0

    :cond_2
    move v0, v2

    .line 5213
    goto :goto_0

    :cond_3
    move v0, v2

    .line 5216
    goto :goto_0
.end method

.method private checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 3
    .parameter "state"

    .prologue
    .line 5180
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkIfOkToInitiateOutgoingCall: ServiceState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5182
    packed-switch p1, :pswitch_data_0

    .line 5198
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

    .line 5185
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5196
    :goto_0
    return-object v0

    .line 5189
    :pswitch_1
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5196
    :pswitch_2
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5182
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private checkStorageMemorySpace(Z)Z
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 10403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10404
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10405
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 10406
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockSize()I

    move-result v0

    int-to-long v2, v0

    .line 10407
    invoke-virtual {v1}, Landroid/os/StatFs;->getBlockCount()I

    move-result v0

    int-to-long v4, v0

    .line 10408
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    int-to-long v0, v0

    .line 10409
    mul-long/2addr v2, v4

    const-wide/16 v4, 0x400

    div-long/2addr v2, v4

    .line 10410
    const-string v2, "InVTCallScreen"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Memory Size Avialable is in Kb : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10411
    if-eqz p1, :cond_1

    .line 10412
    const-wide/16 v2, 0x3c

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    move v0, v7

    .line 10434
    :goto_0
    return v0

    :cond_0
    move v0, v6

    .line 10422
    goto :goto_0

    .line 10425
    :cond_1
    const-wide/16 v2, 0x2

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    move v0, v7

    .line 10426
    goto :goto_0

    :cond_2
    move v0, v6

    .line 10434
    goto :goto_0
.end method

.method private contextMenuSelected(I)V
    .locals 9
    .parameter

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, "InVTCallScreen"

    .line 9199
    const-string v0, "InVTCallScreen"

    const-string v0, "In CallVtScreen contextMenuSelected method"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9200
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 9201
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9203
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "this is inside contextMenuSelected and selected item is -->"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, v1, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9226
    aget-object v2, v1, p1

    const v3, 0x7f0d02e6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 9228
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9229
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    .line 9383
    :cond_0
    :goto_0
    return-void

    .line 9230
    :cond_1
    aget-object v2, v1, p1

    const v3, 0x7f0d02e7

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 9232
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v2, :cond_3

    .line 9235
    add-int/lit8 v2, p1, 0x1

    aget-object v2, v1, v2

    const v3, 0x7f0d02e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 9237
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9238
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9239
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9240
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 9241
    :cond_2
    add-int/lit8 v2, p1, 0x1

    aget-object v1, v1, v2

    const v2, 0x7f0d02e9

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9244
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9245
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9246
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9247
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 9250
    :cond_3
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9251
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 9253
    :cond_4
    aget-object v2, v1, p1

    const v3, 0x7f0d02e8

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 9255
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_0

    .line 9256
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9257
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9258
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9259
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v8}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto :goto_0

    .line 9264
    :cond_5
    aget-object v2, v1, p1

    const v3, 0x7f0d02e9

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 9266
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9267
    iput v4, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9268
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9269
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v7, v4}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 9270
    :cond_6
    aget-object v2, v1, p1

    const v3, 0x7f0d02eb

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_7

    aget-object v2, v1, p1

    const v3, 0x7f0d02ec

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 9274
    :cond_7
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 9275
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 9276
    :cond_8
    aget-object v2, v1, p1

    const v3, 0x7f0d02ed

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    aget-object v2, v1, p1

    const v3, 0x7f0d02ee

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 9280
    :cond_9
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mDisp_Small:Z

    .line 9281
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->changeImgSize(I)V

    goto/16 :goto_0

    .line 9282
    :cond_a
    aget-object v2, v1, p1

    const v3, 0x7f0d02ef

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-nez v2, :cond_b

    .line 9284
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside capture context menu selected"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9288
    const-string v0, "InVTCallScreen"

    const-string v0, "Capture Image called for Farend view"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9289
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_farend_view(J)V

    goto/16 :goto_0

    .line 9296
    :cond_b
    aget-object v2, v1, p1

    const v3, 0x7f0d02f0

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 9298
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside record video for far end "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9300
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 9301
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 9305
    :cond_c
    aget-object v2, v1, p1

    const v3, 0x7f0d030b

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 9307
    const-string v0, "InVTCallScreen"

    const-string v0, "In image option item"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9308
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 9310
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectImageFromMyFiles()V

    goto/16 :goto_0

    .line 9314
    :cond_d
    aget-object v2, v1, p1

    const v3, 0x7f0d030c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 9316
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsplayVideo:Z

    .line 9317
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 9319
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "videoAlertShowNeverAgain"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 9320
    if-nez v0, :cond_e

    .line 9321
    const-string v0, "InVTCallScreen"

    const-string v0, "selectVideoFromMyFiles:: Video Dialog Shown"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9322
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 9324
    :cond_e
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->selectVideoFromMyFiles()V

    goto/16 :goto_0

    .line 9327
    :cond_f
    aget-object v2, v1, p1

    const v3, 0x7f0d030d

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    sget-boolean v2, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    if-eqz v2, :cond_10

    .line 9329
    const-string v0, "InVTCallScreen"

    const-string v0, "This is inside capt_img context menu selected"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9331
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 9332
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 9333
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 9334
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 9336
    const-string v0, "InVTCallScreen"

    const-string v0, "Capture Image called for Nearend view"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->capture_nearend_view(J)V

    goto/16 :goto_0

    .line 9341
    :cond_10
    aget-object v2, v1, p1

    const v3, 0x7f0d030e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 9343
    iput v5, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9344
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    goto/16 :goto_0

    .line 9346
    :cond_11
    aget-object v2, v1, p1

    const v3, 0x7f0d030f

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 9348
    const-string v0, "InVTCallScreen"

    const-string v0, "Preset Image is being called"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9349
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 9352
    :cond_12
    aget-object v2, v1, p1

    const v3, 0x7f0d0310

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 9355
    const-string v0, "InVTCallScreen"

    const-string v0, "Show camera is called"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9356
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->showcamera:Z

    .line 9357
    const-string v0, "InVTCallScreen"

    const-string v0, "Calling surfaceview_init"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9358
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto/16 :goto_0

    .line 9363
    :cond_13
    aget-object v2, v1, p1

    const v3, 0x7f0d02e5

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_14

    .line 9364
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 9365
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 9368
    :cond_14
    aget-object v1, v1, p1

    const v2, 0x7f0d02e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 9369
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_15

    .line 9370
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9378
    :goto_1
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_0

    .line 9372
    :cond_15
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_16

    .line 9373
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 9375
    :cond_16
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1
.end method

.method private continueOnDisconnection()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1343
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v0, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 1346
    .local v0, notifier:Lcom/android/phone/CallNotifier;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->disconnectMsg:Landroid/os/Message;

    iget-object p0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/AsyncResult;

    invoke-virtual {v0, p0, v2}, Lcom/android/phone/CallNotifier;->continueDisconnectionAfterVTStackCleanup(Landroid/os/AsyncResult;Z)V

    .line 1348
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1357
    return-void
.end method

.method private createDefaultImages()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    .line 1641
    .line 1647
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1649
    const v1, 0x7f0202fc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_8

    move-result-object v1

    .line 1651
    :try_start_1
    new-instance v2, Ljava/io/File;

    const-string v3, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1653
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1655
    const-string v2, "video_call_recording_start.jpg"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v2

    .line 1663
    :try_start_2
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 1665
    invoke-virtual {v1, v3}, Ljava/io/InputStream;->read([B)I

    .line 1667
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_3

    .line 1679
    :goto_0
    :try_start_3
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V

    .line 1683
    :cond_0
    const v2, 0x7f0202fa

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    move-result-object v0

    .line 1685
    :try_start_4
    new-instance v2, Ljava/io/File;

    const-string v3, "data/data/com.android.phone/files/video_call_capture.jpg"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1687
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1689
    const-string v2, "video_call_capture.jpg"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/android/phone/InVTCallScreen;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5

    move-result-object v2

    .line 1697
    :try_start_5
    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v3, v3, [B

    .line 1699
    invoke-virtual {v0, v3}, Ljava/io/InputStream;->read([B)I

    .line 1701
    invoke-virtual {v2, v3}, Ljava/io/OutputStream;->write([B)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_5} :catch_6

    .line 1713
    :goto_1
    :try_start_6
    invoke-virtual {v2}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 1727
    :cond_1
    if-eqz v1, :cond_2

    :try_start_7
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 1729
    :cond_2
    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_9

    .line 1739
    :cond_3
    :goto_2
    return-void

    .line 1669
    :catch_0
    move-exception v3

    .line 1671
    :try_start_8
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1

    goto :goto_0

    .line 1717
    :catch_1
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    .line 1719
    :goto_3
    :try_start_9
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 1727
    if-eqz v2, :cond_4

    :try_start_a
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1729
    :cond_4
    if-eqz v1, :cond_3

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_2

    goto :goto_2

    .line 1731
    :catch_2
    move-exception v0

    goto :goto_2

    .line 1673
    :catch_3
    move-exception v3

    .line 1675
    :try_start_b
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_1

    goto :goto_0

    .line 1725
    :catchall_0
    move-exception v0

    move-object v2, v1

    move-object v1, v4

    .line 1727
    :goto_4
    if-eqz v2, :cond_5

    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 1729
    :cond_5
    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_7

    .line 1735
    :cond_6
    :goto_5
    throw v0

    .line 1703
    :catch_4
    move-exception v3

    .line 1705
    :try_start_d
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 1717
    :catch_5
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_3

    .line 1707
    :catch_6
    move-exception v3

    .line 1709
    invoke-virtual {v3}, Landroid/content/res/Resources$NotFoundException;->printStackTrace()V
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_5

    goto :goto_1

    .line 1725
    :catchall_1
    move-exception v2

    move-object v5, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_4

    .line 1731
    :catch_7
    move-exception v1

    goto :goto_5

    .line 1725
    :catchall_2
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_4

    :catchall_3
    move-exception v0

    goto :goto_4

    .line 1717
    :catch_8
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    goto :goto_3

    .line 1731
    :catch_9
    move-exception v0

    goto :goto_2
.end method

.method private delayedCleanupAfterDisconnect()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5237
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delayedCleanupAfterDisconnect()...  Phone state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5249
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 5251
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5254
    const-string v0, "- delayedCleanupAfterDisconnect: phone is idle..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5280
    const-string v0, "After internalHangup call the calllog -Exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5281
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 5282
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 5283
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 5294
    :goto_0
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 5295
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 5299
    return-void

    .line 5288
    :cond_0
    const-string v0, "- delayedCleanupAfterDisconnect: staying on the InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5290
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->dumpCallState(Lcom/android/internal/telephony/Phone;)V

    goto :goto_0
.end method

.method private dismissAllDialogs()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 6050
    const-string v0, "dismissAllDialogs()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6057
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 6059
    const-string v0, "- DISMISSING mMissingVoicemailDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6060
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6061
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMissingVoicemailDialog:Landroid/app/AlertDialog;

    .line 6063
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 6065
    const-string v0, "- DISMISSING mMmiStartedDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6066
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 6067
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    .line 6069
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_2

    .line 6071
    const-string v0, "- DISMISSING mGenericErrorDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6072
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6073
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 6075
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3

    .line 6077
    const-string v0, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6078
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6079
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 6081
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_4

    .line 6083
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6084
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6085
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 6087
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_5

    .line 6089
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6090
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6091
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 6093
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_6

    .line 6095
    const-string v0, "- DISMISSING mCallLostDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6096
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6097
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 6099
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_7

    .line 6104
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_8

    .line 6106
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6107
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6108
    iput-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 6110
    :cond_8
    return-void
.end method

.method private dismissContextDailogBox()V
    .locals 1

    .prologue
    .line 3598
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3599
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 3600
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 3602
    :cond_0
    return-void
.end method

.method private displayToast(I)V
    .locals 1
    .parameter "aResId"

    .prologue
    .line 8772
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 8773
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    .line 8774
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 8776
    :cond_0
    return-void
.end method

.method private dumpBluetoothState()V
    .locals 3

    .prologue
    .line 6944
    const-string v1, "============== dumpBluetoothState() ============="

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6945
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAvailable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6946
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAudioConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6947
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= isBluetoothAudioConnectedOrPending: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnectedOrPending()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6949
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

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6951
    const-string v1, "="

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6952
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_2

    .line 6953
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHandsfree.isAudioOn: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v2}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6955
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_1

    .line 6956
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6957
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

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6958
    if-eqz v0, :cond_0

    .line 6959
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "= BluetoothHeadset.isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6968
    .end local v0           #headset:Landroid/bluetooth/BluetoothDevice;
    :cond_0
    :goto_0
    return-void

    .line 6963
    :cond_1
    const-string v1, "= mBluetoothHeadset is null"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6966
    :cond_2
    const-string v1, "= mBluetoothHandsfree is null; device is not BT capable"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableHideMeState()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const-string v7, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    .line 10836
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mSuccessToastNotRequired:Z

    .line 10837
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_name"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10841
    .local v1, preset_Name:Ljava/lang/String;
    if-eqz v1, :cond_2

    const-string v5, "photo"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_2

    .line 10843
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_path"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 10846
    .local v0, presetImageSrc:Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableHideMeState ::preset_Name is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10847
    if-eqz v0, :cond_1

    .line 10848
    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 10888
    .end local v0           #presetImageSrc:Ljava/lang/String;
    :goto_0
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 10889
    const/4 v5, 0x0

    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 10890
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 10891
    iget-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 10893
    return-void

    .line 10850
    .restart local v0       #presetImageSrc:Ljava/lang/String;
    :cond_1
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 10852
    .end local v0           #presetImageSrc:Ljava/lang/String;
    :cond_2
    if-eqz v1, :cond_6

    const-string v5, "video"

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v5

    if-nez v5, :cond_6

    .line 10853
    const-string v5, "enableHideMeState ::preset_Name is video"

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10855
    const/4 v4, 0x0

    .line 10856
    .local v4, videoUri:Landroid/net/Uri;
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "preset_video_path"

    invoke-static {v5, v6}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 10857
    .local v2, uriString:Ljava/lang/String;
    if-eqz v2, :cond_5

    .line 10859
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 10860
    if-eqz v4, :cond_4

    .line 10862
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    .line 10863
    .local v3, videoPath:Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 10865
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    goto :goto_0

    .line 10869
    :cond_3
    const-string v5, "enableHideMeState :: video path is null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10870
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 10875
    .end local v3           #videoPath:Ljava/lang/String;
    :cond_4
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 10876
    const-string v5, "enableHideMeState :: video Uri for video file is Null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 10879
    :cond_5
    const-string v5, "enableHideMeState :: uri String for video file is Null, so setting Default Image "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10880
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0

    .line 10884
    .end local v2           #uriString:Ljava/lang/String;
    .end local v4           #videoUri:Landroid/net/Uri;
    :cond_6
    const-string v5, "enableHideMeState ::preset_Name is Null "

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10885
    const-string v5, "data/data/com.sec.android.app.callsetting/files/preset_defaultimage.png"

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private enableKeyGuardLock()V
    .locals 3

    .prologue
    .line 2755
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-nez v0, :cond_1

    .line 2766
    :cond_0
    :goto_0
    return-void

    .line 2758
    :cond_1
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "value of KeyGuard"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2759
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    if-eqz v0, :cond_0

    .line 2761
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 2762
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->reenableKeyguard()V

    .line 2763
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 2764
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    goto :goto_0
.end method

.method private fillMenuArrayList()V
    .locals 8

    .prologue
    const v7, 0x7f0d030b

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1596
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1597
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0d02ef

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d02f0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    .line 1602
    new-array v1, v5, [Ljava/lang/String;

    const v2, 0x7f0d02e5

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d02e1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDownUppos:[Ljava/lang/String;

    .line 1607
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d030d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0d030c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    const v2, 0x7f0d030f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v6

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    .line 1613
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d030c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0d030f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    .line 1619
    new-array v1, v6, [Ljava/lang/String;

    invoke-virtual {v0, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v3

    const v2, 0x7f0d030f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const v2, 0x7f0d030c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v5

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    .line 1625
    return-void
.end method

.method private formatTimeString(J)Ljava/lang/String;
    .locals 10
    .parameter

    .prologue
    .line 10370
    .line 10371
    const-string v0, "%%0%dd"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10372
    const-wide/16 v1, 0x3e8

    div-long v1, p1, v1

    .line 10373
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    const-wide/16 v5, 0x3c

    rem-long v5, v1, v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 10375
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    const-wide/16 v6, 0xe10

    rem-long v6, v1, v6

    const-wide/16 v8, 0x3c

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v0, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 10377
    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    const-wide/16 v7, 0xe10

    div-long/2addr v1, v7

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v5, v6

    invoke-static {v0, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 10379
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10380
    return-object v0
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

    .line 4913
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 4915
    .local v0, action:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 4916
    const/4 v1, 0x0

    .line 4924
    :goto_0
    return-object v1

    .line 4919
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

    .line 4921
    const-string v1, "android.intent.extra.PHONE_NUMBER"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 4924
    :cond_1
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getNumberFromIntent(Landroid/content/Context;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method private getVideoFileNameFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 8
    .parameter

    .prologue
    const/4 v6, 0x0

    const-string v3, "_data"

    .line 10802
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside getVideoFileNameFromUri condition and file Uri is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10805
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/String;

    const/4 v0, 0x0

    const-string v1, "_data"

    aput-object v3, v2, v0

    .line 10809
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 10810
    if-eqz v0, :cond_4

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_4

    .line 10812
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 10813
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 10814
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getVideoFileNameFromUri condition and file path is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_2

    .line 10827
    :goto_0
    if-eqz v0, :cond_0

    .line 10828
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    move-object v0, v1

    .line 10831
    :goto_1
    return-object v0

    .line 10817
    :catch_0
    move-exception v0

    move-object v0, v6

    .line 10827
    :goto_2
    if-eqz v0, :cond_1

    .line 10828
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    move-object v0, v6

    goto :goto_1

    .line 10821
    :catch_1
    move-exception v0

    move-object v0, v6

    .line 10827
    :goto_3
    if-eqz v0, :cond_2

    .line 10828
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    move-object v0, v6

    goto :goto_1

    .line 10827
    :catchall_0
    move-exception v0

    move-object v1, v6

    :goto_4
    if-eqz v1, :cond_3

    .line 10828
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    .line 10827
    :catchall_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_4

    .line 10821
    :catch_2
    move-exception v1

    goto :goto_3

    .line 10817
    :catch_3
    move-exception v1

    goto :goto_2

    :cond_4
    move-object v1, v6

    goto :goto_0
.end method

.method private getVoltage()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1810
    const-string v0, "/sys/class/power_supply/battery/capacity"

    .line 1811
    .local v0, BATT_FILE:Ljava/lang/String;
    const/4 v3, 0x0

    .line 1812
    .local v3, in:Ljava/io/InputStream;
    const/16 v7, 0xa

    new-array v1, v7, [B

    .line 1813
    .local v1, buffer:[B
    const/4 v6, 0x0

    .line 1814
    .local v6, value:Ljava/lang/String;
    const/4 v5, 0x0

    .line 1817
    .local v5, length:I
    :try_start_0
    new-instance v4, Ljava/io/FileInputStream;

    new-instance v7, Ljava/io/File;

    const-string v8, "/sys/class/power_supply/battery/capacity"

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1818
    .end local v3           #in:Ljava/io/InputStream;
    .local v4, in:Ljava/io/InputStream;
    :try_start_1
    invoke-virtual {v4, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 1819
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v3, v4

    .line 1827
    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    :goto_0
    if-eqz v5, :cond_0

    .line 1828
    new-instance v6, Ljava/lang/String;

    .end local v6           #value:Ljava/lang/String;
    const/4 v7, 0x0

    const/4 v8, 0x1

    sub-int v8, v5, v8

    invoke-direct {v6, v1, v7, v8}, Ljava/lang/String;-><init>([BII)V

    .line 1832
    .restart local v6       #value:Ljava/lang/String;
    :cond_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getVoltage value = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1834
    return-object v6

    .line 1820
    :catch_0
    move-exception v7

    move-object v2, v7

    .line 1821
    .local v2, e:Ljava/io/FileNotFoundException;
    :goto_1
    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 1824
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "FileNotFoundException = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v7}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1820
    .end local v2           #e:Ljava/io/FileNotFoundException;
    .end local v3           #in:Ljava/io/InputStream;
    .restart local v4       #in:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    move-object v2, v7

    move-object v3, v4

    .end local v4           #in:Ljava/io/InputStream;
    .restart local v3       #in:Ljava/io/InputStream;
    goto :goto_1
.end method

.method private handleCallKey()Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 3187
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 3188
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 3189
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 3191
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v3

    .line 3192
    const/4 v4, 0x2

    if-ne v3, v4, :cond_3

    .line 3197
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    .line 3198
    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    .line 3200
    if-eqz v0, :cond_1

    .line 3204
    const-string v0, "answerCall: First Incoming and Call Waiting scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3205
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    .line 3277
    :cond_0
    :goto_0
    return v5

    .line 3208
    :cond_1
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->THRWAY_ACTIVE:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_2

    if-eqz v1, :cond_2

    .line 3212
    const-string v0, "answerCall: Merge 3-way call scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3214
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 3215
    :cond_2
    sget-object v0, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v0, :cond_0

    .line 3220
    const-string v0, "answerCall: Switch btwn 2 calls scenario"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3223
    :cond_3
    if-ne v3, v5, :cond_7

    .line 3224
    if-eqz v0, :cond_4

    .line 3235
    const-string v0, "InVTCallScreen"

    const-string v1, "handleCallKey: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3244
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 3245
    :cond_4
    if-eqz v1, :cond_5

    if-eqz v2, :cond_5

    .line 3248
    const-string v0, "handleCallKey: both lines in use ==> swap calls."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3250
    :cond_5
    if-eqz v2, :cond_6

    .line 3254
    const-string v0, "handleCallKey: call on hold ==> unhold."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3255
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->switchHoldingAndActive(Lcom/android/internal/telephony/Call;)Z

    goto :goto_0

    .line 3267
    :cond_6
    const-string v0, "handleCallKey: call in foregound ==> ignoring."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3271
    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private handleDialerKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 3091
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

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3095
    const/4 v0, 0x0

    return v0
.end method

.method private handlePostOnDialChars(Landroid/os/AsyncResult;C)V
    .locals 4
    .parameter
    .parameter

    .prologue
    .line 4523
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4525
    if-eqz v0, :cond_0

    .line 4526
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/Connection$PostDialState;

    .line 4529
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

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4531
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    .line 4532
    sget-object v2, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Connection$PostDialState:[I

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection$PostDialState;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 4584
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 4549
    :pswitch_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    goto :goto_0

    .line 4532
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V
    .locals 6
    .parameter

    .prologue
    const v4, 0x7f0d0197

    const/4 v3, 0x0

    const/4 v2, 0x1

    const-string v5, "InVTCallScreen"

    .line 5819
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError(): status = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5833
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallInitStatus:[I

    invoke-virtual {p1}, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 5923
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleStartupError: unexpected status code "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5925
    invoke-direct {p0, v4, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    .line 5931
    :goto_0
    :pswitch_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq p1, v0, :cond_0

    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne p1, v0, :cond_1

    .line 5935
    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 5937
    :cond_1
    return-void

    .line 5850
    :pswitch_1
    const v0, 0x7f0d0192

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5857
    :pswitch_2
    const-string v0, "EMERGENCY_ONLY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5858
    const v0, 0x7f0d0193

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5864
    :pswitch_3
    const-string v0, "InVTCallScreen"

    const-string v0, "handleStartupError: unexpected PHONE_NOT_IN_USE status"

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 5872
    :pswitch_4
    const v0, 0x7f0d0196

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5885
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 5886
    const v0, 0x7f0d0198

    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5889
    :cond_2
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_3

    .line 5890
    sput-boolean v2, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5896
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    goto :goto_0

    .line 5892
    :cond_3
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5894
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_1

    .line 5904
    :pswitch_6
    invoke-direct {p0, v4, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto :goto_0

    .line 5909
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "usecall_fail_option"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 5912
    if-eqz v0, :cond_4

    .line 5913
    const v0, 0x7f0d02fe

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 5914
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 5915
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0

    .line 5918
    :cond_4
    const v0, 0x7f0d0313

    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_0

    .line 5833
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
    .end packed-switch
.end method

.method private hideEndcallbuttonlayout()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 9968
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside hideEndcallbuttonlayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9969
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of duringEndCalllayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9970
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->duringEndCalllayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9972
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of SeekBarLayout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9973
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->SeekBarLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9974
    const-string v0, "InVTCallScreen"

    const-string v0, "Outside hideEndcallbuttonlayout"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9975
    return-void
.end method

.method private imageCaptureAnimation()V
    .locals 2

    .prologue
    const-string v1, "InVTCallScreen"

    .line 10184
    const-string v0, "InVTCallScreen"

    const-string v0, "imageCaptureAnimation() :: Inside capture image animation"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10186
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-eqz v0, :cond_3

    .line 10189
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v0, "imageCaptureAnimation : : capturing near end "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10190
    const v0, 0x7f080124

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    .line 10202
    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    .line 10203
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->prepareCaptureAnimation()V

    .line 10205
    return-void

    .line 10192
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_5

    :cond_4
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndCapture:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_2

    .line 10194
    :cond_5
    const-string v0, "InVTCallScreen"

    const-string v0, "imageCaptureAnimation : : capturing far end "

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10196
    const v0, 0x7f080117

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mImageCaptureAnimationImageView:Landroid/widget/ImageView;

    goto :goto_0
.end method

.method private initInVTCallScreen()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 2982
    const-string v0, "initInVTCallScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2983
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside initInVTCallScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2984
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 2985
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 2986
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 2989
    :cond_0
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2990
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mAudioManager:Landroid/media/AudioManager;

    .line 3013
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 3014
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_1

    .line 3015
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3016
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_1

    .line 3017
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    .line 3078
    :goto_0
    return-void

    .line 3022
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-nez v0, :cond_3

    .line 3023
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    .line 3077
    :cond_2
    :goto_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Exit initInVTCallScreen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 3024
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_4

    .line 3025
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateEndCallButton()V

    goto :goto_1

    .line 3026
    :cond_4
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_5

    .line 3028
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtoutgoing_main_unlock"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3029
    const v0, 0x7f030045

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3030
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtoutgoing_main_unlock : After Inflating screen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3033
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3034
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3035
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    .line 3043
    :cond_5
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    .line 3051
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtincoming_main_lock"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3052
    const v0, 0x7f030044

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3053
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtincoming_main_lock : After Inflating screen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3054
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3055
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3056
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    goto :goto_1

    .line 3060
    :cond_6
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 3062
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyLockStatus:I

    .line 3063
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtduringcall_main"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3064
    const v0, 0x7f030042

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3065
    const-string v0, "InVTCallScreen"

    const-string v0, "In vtduringcall_main : After Inflating screen"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3066
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->surfaceview_initialize()V

    .line 3067
    const-string v0, "After SurfaceView_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3068
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->button_initialize()V

    .line 3069
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setupDTMFDialer()V

    .line 3070
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->startDialerSession()V

    .line 3071
    const-string v0, "After Button_Initialization."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3072
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    .line 3073
    const-string v0, "After StartVTCall "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1
.end method

.method private initvtstack()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const-string v4, "InVTCallScreen"

    .line 2165
    const-string v0, "Init VT Stack get called "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2166
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_0

    .line 2167
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 2169
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 2170
    const-string v0, "Init VT Stack State Listener Registered"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2171
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 2172
    const-string v1, "Videocalltype"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    .line 2174
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    if-ne v3, v0, :cond_1

    .line 2175
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Incoming VideoCall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2176
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 2183
    :goto_0
    return-void

    .line 2179
    :cond_1
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Outgoing VideoCall"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2180
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    goto :goto_0
.end method

.method private is2GNetwork()Z
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 3877
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 3878
    .local v0, currnetRadioTech:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Currently connected netwokr Tech. type is = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3879
    if-eq v0, v3, :cond_0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    move v1, v3

    .line 3886
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private launchBrightSB(I)V
    .locals 6
    .parameter

    .prologue
    .line 10057
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside launchBrightSB"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10058
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->hideEndcallbuttonlayout()V

    .line 10059
    new-instance v0, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    const-wide/16 v2, 0x7d0

    const-wide/16 v4, 0x1f4

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;-><init>(Lcom/android/phone/InVTCallScreen;JJ)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    .line 10060
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->brzoomCntDwn:Lcom/android/phone/InVTCallScreen$BrightZoomTimer;

    invoke-virtual {v0}, Lcom/android/phone/InVTCallScreen$BrightZoomTimer;->start()Landroid/os/CountDownTimer;

    .line 10061
    const v0, 0x7f08006b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    .line 10062
    const v0, 0x7f080069

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    .line 10063
    const v0, 0x7f08006a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    .line 10065
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 10066
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10067
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 10068
    if-nez p1, :cond_1

    .line 10069
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10070
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10071
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020061

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10072
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020060

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10080
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSBChangeListener:Landroid/widget/SeekBar$OnSeekBarChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 10082
    :cond_0
    return-void

    .line 10074
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 10075
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lsiso/vt/VTManager;->GetCameraParams(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 10076
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPlusBright:Landroid/widget/ImageView;

    const v1, 0x7f020062

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 10077
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMinusBright:Landroid/widget/ImageView;

    const v1, 0x7f020063

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 10172
    const-string v0, "InVTCallScreen"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10173
    return-void
.end method

.method private onBluetoothClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5673
    const-string v0, "onBluetoothClick()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5675
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 5676
    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5678
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5679
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    .line 5680
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5713
    :goto_0
    return-void

    .line 5688
    :cond_0
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5693
    const/4 v0, 0x0

    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5694
    const-string v0, "BT: turnOnSpeaker()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5696
    :cond_1
    const-string v0, "BT: connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5697
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->connectBluetoothAudio()V

    goto :goto_0

    .line 5702
    :cond_2
    const-string v0, "InVTCallScreen"

    const-string v1, "Got onBluetoothClick, but bluetooth is unavailable"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.bluetooth.devicepicker.action.LAUNCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 5706
    const-string v1, "android.bluetooth.devicepicker.extra.NEED_AUTH"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5710
    const-string v1, "android.bluetooth.FromHeadsetActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 5711
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private onDisconnect(Landroid/os/AsyncResult;)V
    .locals 13
    .parameter

    .prologue
    const/4 v12, 0x4

    const-wide/16 v10, 0x1194

    const/16 v9, 0x6c

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 3906
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 3907
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getDisconnectCause()Lcom/android/internal/telephony/Connection$DisconnectCause;

    move-result-object v2

    .line 3909
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

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3910
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 3911
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v1

    if-nez v1, :cond_1

    move v3, v8

    .line 3913
    :goto_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    move v1, v8

    .line 3914
    :goto_1
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v4}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    if-ne v4, v8, :cond_3

    move v4, v8

    .line 3936
    :goto_2
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v5, :cond_0

    .line 3937
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v5}, Lcom/android/phone/CallTime;->stopMinuteMinderAlarm()V

    .line 3940
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 3941
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v6, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v5, v6, :cond_4

    .line 3943
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 3944
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4449
    :goto_3
    return-void

    :cond_1
    move v3, v7

    .line 3911
    goto :goto_0

    :cond_2
    move v1, v7

    .line 3913
    goto :goto_1

    :cond_3
    move v4, v7

    .line 3914
    goto :goto_2

    .line 3946
    :cond_4
    iget-object v5, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v6, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v5, v6, :cond_5

    .line 3949
    const-string v0, "onDisconnect: OTA Call end already handled"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 3964
    :cond_5
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getNetworkType()V

    .line 4006
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "usecall_fail_option"

    invoke-static {v5, v6, v8}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 4009
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v6

    if-eqz v6, :cond_8

    .line 4011
    if-eqz v5, :cond_6

    .line 4012
    const v0, 0x7f0d02fe

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4013
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    .line 4448
    :goto_4
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    goto :goto_3

    .line 4015
    :cond_6
    const v0, 0x7f0d0313

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4016
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_7

    .line 4017
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4019
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 4024
    :cond_8
    iget-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-eqz v6, :cond_9

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_9

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_9

    .line 4026
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 4029
    :cond_9
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_c

    .line 4031
    if-eqz v5, :cond_a

    .line 4032
    const v0, 0x7f0d02fc

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4033
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_4

    .line 4035
    :cond_a
    const v0, 0x7f0d0311

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4036
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_b

    .line 4037
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4040
    :cond_b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_4

    .line 4045
    :cond_c
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_f

    .line 4049
    if-eqz v5, :cond_d

    .line 4050
    const v0, 0x7f0d02fa

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4051
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_4

    .line 4054
    :cond_d
    const v0, 0x7f0d0314

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4055
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_e

    .line 4056
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4058
    :cond_e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4063
    :cond_f
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_12

    .line 4065
    if-eqz v5, :cond_10

    .line 4066
    const v0, 0x7f0d02fd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4067
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4069
    :cond_10
    const v0, 0x7f0d0312

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4070
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_11

    .line 4071
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4073
    :cond_11
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4078
    :cond_12
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_15

    .line 4080
    if-eqz v5, :cond_13

    .line 4081
    const v0, 0x7f0d02fd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4082
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4084
    :cond_13
    const v0, 0x7f0d0312

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4085
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_14

    .line 4086
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4088
    :cond_14
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4092
    :cond_15
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NO_ANSWER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_18

    .line 4094
    if-eqz v5, :cond_16

    .line 4095
    const v0, 0x7f0d02fb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4096
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4099
    :cond_16
    const v0, 0x7f0d0315

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4100
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_17

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_17

    .line 4101
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4103
    :cond_17
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4107
    :cond_18
    iget-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    if-nez v6, :cond_1b

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_1b

    .line 4110
    if-eqz v5, :cond_19

    .line 4111
    const v0, 0x7f0d02fd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4112
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4114
    :cond_19
    const v0, 0x7f0d0312

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4115
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1a

    .line 4116
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4118
    :cond_1a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4122
    :cond_1b
    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOST_SIGNAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_1c

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->LIMIT_EXCEEDED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_1c

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->CDMA_REORDER:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v6, :cond_1c

    sget-object v6, Lcom/android/internal/telephony/Connection$DisconnectCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v6, :cond_1f

    .line 4127
    :cond_1c
    const-string v0, "onDisconnect: Call failed Voice call dialog shown"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4128
    if-eqz v5, :cond_1d

    .line 4129
    const v0, 0x7f0d02fd

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4130
    invoke-virtual {p0, v12}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto/16 :goto_4

    .line 4132
    :cond_1d
    const v0, 0x7f0d0312

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4133
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_1e

    .line 4134
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4136
    :cond_1e
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9, v10, v11}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    .line 4142
    :cond_1f
    const-string v5, "onDisconnect: do normal operation."

    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4143
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CALL_BARRED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_20

    .line 4144
    const v0, 0x7f0d001b

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4146
    :cond_20
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->FDN_BLOCKED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_21

    .line 4147
    const v0, 0x7f0d001a

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4149
    :cond_21
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_22

    .line 4150
    const v0, 0x7f0d001c

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4153
    :cond_22
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_EMERGENCY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_23

    .line 4154
    const v0, 0x7f0d001d

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4157
    :cond_23
    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->CS_RESTRICTED_NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v5, :cond_24

    .line 4158
    const v0, 0x7f0d001e

    invoke-direct {p0, v0, v7}, Lcom/android/phone/InVTCallScreen;->showGenericErrorDialog(IZ)V

    goto/16 :goto_3

    .line 4163
    :cond_24
    if-eqz v1, :cond_25

    .line 4164
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousCdmaCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4166
    sget-object v5, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_2c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_2c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_2c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_2c

    sget-object v5, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v5, :cond_2c

    .line 4171
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4201
    :cond_25
    :goto_5
    if-eqz v4, :cond_26

    .line 4202
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v1}, Lcom/android/phone/CallNotifier;->getPreviousGsmCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 4204
    sget-object v4, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_30

    sget-object v4, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v4, :cond_30

    .line 4211
    const v1, 0x7f0d002a

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4263
    :cond_26
    :goto_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getCall()Lcom/android/internal/telephony/Call;

    move-result-object v4

    .line 4264
    if-eqz v4, :cond_29

    .line 4273
    invoke-virtual {v4}, Lcom/android/internal/telephony/Call;->getConnections()Ljava/util/List;

    move-result-object v1

    .line 4274
    if-eqz v1, :cond_28

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-le v5, v8, :cond_28

    .line 4275
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_27
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_28

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/Connection;

    .line 4276
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    sget-object v6, Lcom/android/internal/telephony/Call$State;->ACTIVE:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v6, :cond_27

    .line 4287
    const-string v1, "- Still-active conf call; clearing DISCONNECTED..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4299
    :cond_28
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    .line 4304
    :cond_29
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "emergency_call_retry_count"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 4315
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->isIncoming()Z

    move-result v0

    if-nez v0, :cond_36

    move v0, v8

    :goto_7
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mShowCallLogAfterDisconnect:Z

    .line 4321
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v0, :cond_2a

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v0, :cond_2a

    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_37

    if-lez v1, :cond_37

    :cond_2a
    if-eqz v3, :cond_37

    move v0, v8

    .line 4325
    :goto_8
    if-eqz v0, :cond_38

    .line 4327
    const-string v0, "- onDisconnect: bailOutImmediately..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4332
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    .line 4336
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->OUT_OF_SERVICE:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_2b

    if-lez v1, :cond_2b

    .line 4338
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-class v1, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 4446
    :cond_2b
    :goto_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x74

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    goto/16 :goto_4

    .line 4172
    :cond_2c
    sget-object v5, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v5, :cond_2d

    sget-object v5, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v5, :cond_25

    :cond_2d
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_25

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_25

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_25

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_25

    .line 4178
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_2e

    .line 4182
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4183
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 4185
    :cond_2e
    if-nez v7, :cond_2f

    .line 4189
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->showCallLostDialog()V

    .line 4190
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 4196
    :cond_2f
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_5

    .line 4214
    :cond_30
    sget-object v4, Lcom/android/internal/telephony/Call$State;->DIALING:Lcom/android/internal/telephony/Call$State;

    if-eq v1, v4, :cond_31

    sget-object v4, Lcom/android/internal/telephony/Call$State;->ALERTING:Lcom/android/internal/telephony/Call$State;

    if-ne v1, v4, :cond_34

    :cond_31
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_MISSED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_34

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->NORMAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_34

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_34

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->INCOMING_REJECTED:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_34

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_34

    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-eq v2, v1, :cond_34

    .line 4222
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    if-eqz v1, :cond_32

    .line 4226
    const v1, 0x7f0d002a

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4228
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 4230
    :cond_32
    if-nez v7, :cond_33

    .line 4234
    const v1, 0x7f0d002a

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 4236
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 4242
    :cond_33
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    goto/16 :goto_6

    .line 4245
    :cond_34
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->BUSY:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v1, :cond_35

    .line 4246
    const v1, 0x7f0d000d

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    .line 4248
    :cond_35
    sget-object v1, Lcom/android/internal/telephony/Connection$DisconnectCause;->CONGESTION:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v1, :cond_26

    .line 4249
    const v1, 0x7f0d000e

    invoke-static {p0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto/16 :goto_6

    :cond_36
    move v0, v7

    .line 4315
    goto/16 :goto_7

    :cond_37
    move v0, v7

    .line 4321
    goto/16 :goto_8

    .line 4343
    :cond_38
    const-string v0, "- onDisconnect: delayed bailout..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4351
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4355
    if-eqz v3, :cond_3a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedFgCall()Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasDisconnectedBgCall()Z

    move-result v0

    if-eqz v0, :cond_3a

    .line 4357
    :cond_39
    const-string v0, "- onDisconnect: switching to \'Call ended\' state..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4358
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 4363
    :cond_3a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 4364
    if-nez v0, :cond_3d

    .line 4366
    const-string v0, "- onDisconnect: cleaning up after FG call disconnect..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4370
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3b

    .line 4372
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4373
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4375
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4377
    :cond_3b
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3c

    .line 4379
    const-string v0, "- DISMISSING mWildPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4380
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4382
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWildPromptDialog:Landroid/app/AlertDialog;

    .line 4384
    :cond_3c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_3d

    .line 4386
    const-string v0, "- DISMISSING mPausePromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4387
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4389
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPausePromptDialog:Landroid/app/AlertDialog;

    .line 4412
    :cond_3d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3e

    .line 4413
    if-nez v3, :cond_3e

    .line 4420
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->clearDisconnected()V

    .line 4425
    const-string v0, "onDisconnect: Call Collision case - staying on InVTCallScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4427
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    goto/16 :goto_3

    .line 4436
    :cond_3e
    sget-object v0, Lcom/android/internal/telephony/Connection$DisconnectCause;->LOCAL:Lcom/android/internal/telephony/Connection$DisconnectCause;

    if-ne v2, v0, :cond_3f

    const/16 v0, 0xdac

    .line 4438
    :goto_a
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 4439
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    int-to-long v2, v0

    invoke-virtual {v1, v9, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_9

    .line 4436
    :cond_3f
    const/16 v0, 0xdac

    goto :goto_a
.end method

.method private onMMICancel()V
    .locals 1

    .prologue
    .line 4493
    const-string v0, "onMMICancel()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4496
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->cancelMmiCode(Lcom/android/internal/telephony/Phone;)Z

    .line 4508
    const-string v0, "onMMICancel: finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4509
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 4511
    return-void
.end method

.method private onMMIInitiate(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter

    .prologue
    .line 4456
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onMMIInitiate()...  AsyncResult r = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4463
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 4465
    const-string v0, "Activity not in foreground! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4482
    :goto_0
    return-void

    .line 4473
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 4475
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/MmiCode;

    .line 4477
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - MmiCode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4479
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x35

    invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v1

    .line 4480
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    invoke-static {p0, v0, v1, v2}, Lcom/android/phone/PhoneUtils;->displayMMIInitiate(Landroid/content/Context;Lcom/android/internal/telephony/MmiCode;Landroid/os/Message;Landroid/app/Dialog;)Landroid/app/Dialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMmiStartedDialog:Landroid/app/Dialog;

    goto :goto_0
.end method

.method private onMuteClick()V
    .locals 2

    .prologue
    .line 5663
    const-string v1, "onMuteClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5664
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    move v0, v1

    .line 5665
    .local v0, newMuteState:Z
    :goto_0
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    .line 5666
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    if-eqz v1, :cond_0

    .line 5667
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mMute:Landroid/widget/ToggleButton;

    invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setChecked(Z)V

    .line 5669
    :cond_0
    return-void

    .line 5664
    .end local v0           #newMuteState:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private onPhoneStateChanged(Landroid/os/AsyncResult;)V
    .locals 3
    .parameter "r"

    .prologue
    const/4 v2, 0x1

    .line 3789
    const-string v0, "onPhoneStateChanged()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3791
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3815
    :goto_0
    return-void

    .line 3798
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_1

    .line 3799
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 3805
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_2

    .line 3806
    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 3808
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    goto :goto_0
.end method

.method private onShowHideDialpad()V
    .locals 1

    .prologue
    .line 5717
    const-string v0, "onShowHideDialpad()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5723
    return-void
.end method

.method private onSpeakerClick()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 5634
    const-string v1, "onSpeakerClick()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5639
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    move v0, v2

    .line 5640
    .local v0, newSpeakerState:Z
    :goto_0
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5642
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->disconnectBluetoothAudio()V

    .line 5644
    :cond_0
    invoke-static {p0, v0, v2}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    .line 5659
    return-void

    .line 5639
    .end local v0           #newSpeakerState:Z
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method private performBatteryLowProcess()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 1300
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsBatteryLow:Z

    if-eqz v0, :cond_0

    .line 1301
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->phoneIsInUse()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1302
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and phone is in use"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1303
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    .line 1304
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 1305
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 1306
    const v0, 0x7f0d031e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1311
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1313
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_1

    .line 1314
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and VT Already started, so calling stopVT"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 1316
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    .line 1335
    :cond_0
    :goto_0
    return-void

    .line 1319
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and VT not started so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1320
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isIdle()Z

    move-result v0

    if-nez v0, :cond_2

    .line 1321
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1322
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1323
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and incomming call rejected so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1324
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 1326
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1327
    const-string v0, "InVTCallScreen"

    const-string v0, "Low battery and during or MO call rejected  so calling internal hangup "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1328
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 1329
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0
.end method

.method private phoneIsInUse()Z
    .locals 2

    .prologue
    .line 3086
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

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

.method private placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 7
    .parameter

    .prologue
    const-string v6, "\'."

    const-string v5, "InVTCallScreen"

    .line 4938
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall()...  intent = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4945
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 4949
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 4950
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 4951
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 4960
    :cond_0
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getServiceState()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->checkIfOkToInitiateOutgoingCall(I)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 4977
    if-nez v1, :cond_3

    .line 4978
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "placeCall: couldn\'t get a phone number from Intent "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4981
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->NO_PHONE_NUMBER_SUPPLIED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5160
    :cond_1
    :goto_0
    return-object v0

    .line 4962
    :catch_0
    move-exception v1

    .line 4967
    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_2

    .line 4969
    const-string v1, "Voicemail number not reachable in current SIM card state."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4973
    :cond_2
    const-string v0, "VoiceMailNumberMissingException from getInitialNumber()"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4974
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->VOICEMAIL_NUMBER_MISSING:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4984
    :cond_3
    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v2

    .line 4985
    const-string v3, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 4988
    if-eqz v2, :cond_4

    if-nez v3, :cond_4

    .line 4989
    const-string v0, "InVTCallScreen"

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

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4991
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4992
    :cond_4
    if-nez v2, :cond_5

    if-eqz v3, :cond_5

    .line 4993
    const-string v0, "InVTCallScreen"

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

    invoke-static {v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4996
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 5002
    :cond_5
    if-eqz v2, :cond_6

    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->EMERGENCY_ONLY:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v3, :cond_6

    .line 5004
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 5006
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Emergency number detected, changing state to: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5010
    :cond_6
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v3, :cond_7

    .line 5016
    if-eqz v2, :cond_1

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->POWER_OFF:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v1, :cond_1

    .line 5018
    const-class v0, Lcom/android/phone/EmergencyCallHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 5021
    const-string v0, "placeCall: starting EmergencyCallHandler, finishing InVTCallScreen..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5022
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 5023
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5034
    :cond_7
    if-nez v2, :cond_8

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->is2GNetwork()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 5035
    const-string v0, "The current connected network may not be able to support video call..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5036
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->OUT_OF_3G_NETWORK:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5038
    :cond_8
    const-string v0, "The current connected network may be able to support video call..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5040
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 5041
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 5053
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mNeedShowCallLostDialog:Z

    .line 5060
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    .line 5076
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v2, v1, v0}, Lcom/android/phone/PhoneUtils;->dialVideoCall(Lcom/android/internal/telephony/Phone;Ljava/lang/String;Landroid/net/Uri;)I

    move-result v0

    .line 5083
    packed-switch v0, :pswitch_data_0

    .line 5157
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "placeCall: unknown callStatus "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from PhoneUtils.placeCall() for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5160
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5086
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() succeeded for regular call \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5134
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5137
    :pswitch_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: specified number was an MMI code: \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5148
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->DIALED_MMI:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5150
    :pswitch_2
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "placeCall: PhoneUtils.placeCall() FAILED for number \'"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\'."

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5155
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->CALL_FAILED:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 5083
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private prepareCaptureAnimation()V
    .locals 7

    .prologue
    const v6, 0x7f020300

    const v5, 0x7f0202ff

    const v4, 0x7f0202fe

    const/16 v3, 0x32

    const/16 v2, 0x64

    .line 10213
    const-string v0, "InVTCallScreen"

    const-string v1, "prepareCaptureAnimation() :: Inside prepare image animation"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10214
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 10215
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10217
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10219
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10221
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10223
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10225
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10227
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCaptureImageAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 10228
    return-void
.end method

.method private registerBatteryListener()V
    .locals 2

    .prologue
    .line 1627
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1628
    .local v0, intentFilterBattery:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_LOW"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1629
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1630
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1631
    return-void
.end method

.method private registerDevicePolicyManagerReceiver()V
    .locals 2

    .prologue
    .line 1634
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1635
    .local v0, intentFilterSecurity:Landroid/content/IntentFilter;
    const-string v1, "android.app.action.DEVICE_POLICY_MANAGER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1636
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1637
    return-void
.end method

.method private registerForPhoneStates()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2770
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    if-nez v0, :cond_0

    .line 2771
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPreciseCallStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2772
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x66

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForDisconnect(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2773
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x33

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiInitiate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2779
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x34

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForMmiComplete(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2780
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x73

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCallWaiting(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2781
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x68

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2782
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x6e

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForSuppServiceFailed(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2783
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x75

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/CallManager;->registerForCdmaOtaStatusChange(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 2784
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    .line 2786
    :cond_0
    return-void
.end method

.method private releaseKeyGuardLock()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 2727
    const-string v0, "inside KeyGuard Release"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2728
    const-string v0, "keyguard"

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 2729
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    .line 2730
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of KeyGuard"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2731
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->KeyGuard:Z

    if-eqz v0, :cond_0

    .line 2732
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v1, Lcom/android/phone/InVTCallScreen$8;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$8;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->exitKeyguardSecurely(Landroid/app/KeyguardManager$OnKeyguardExitResult;)V

    .line 2744
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    const-string v1, "Removing Keygard Lock Inside InVTCallscreen"

    invoke-virtual {v0, v1}, Landroid/app/KeyguardManager;->newKeyguardLock(Ljava/lang/String;)Landroid/app/KeyguardManager$KeyguardLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    .line 2745
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->keyguardLock:Landroid/app/KeyguardManager$KeyguardLock;

    invoke-virtual {v0}, Landroid/app/KeyguardManager$KeyguardLock;->disableKeyguard()V

    .line 2747
    :cond_0
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "value of KeyGuard before inflation is"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v1}, Landroid/app/KeyguardManager;->inKeyguardRestrictedInputMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2748
    return-void
.end method

.method private removesurfaceview()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 10609
    const-string v0, "InVTCallScreen"

    const-string v0, "In removesurfaceview"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10611
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 10613
    const-string v0, "InVTCallScreen"

    const-string v0, "In  not null condition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10614
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 10615
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0, v3}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 10616
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    const v1, 0x7f02007f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 10617
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCall:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setClickable(Z)V

    .line 10618
    const-string v0, "InVTCallScreen"

    const-string v0, "Out not null condition"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10620
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v0, "Out removesurfaceview"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10621
    return-void
.end method

.method private selectImageFromMyFiles()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const-string v1, "InVTCallScreen"

    .line 9908
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectImageFromMyFiles method"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9910
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 9911
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 9913
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    .line 9914
    const-string v0, "InVTCallScreen"

    const-string v0, "External Media is present"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9915
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9916
    const-string v1, "senderIsVideoCall"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9917
    const-string v1, "imageSelected"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9918
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9920
    return-void
.end method

.method private selectVideoFromMyFiles()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const-string v3, "InVTCallScreen"

    .line 9930
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideoFromMyFiles method"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9931
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 9932
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/PickImageFromGallery;->registerForImageGalleryResponse(Landroid/os/Handler;)V

    .line 9933
    const-string v0, "InVTCallScreen"

    const-string v0, "External Media is present"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9934
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/phone/PickImageFromGallery;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 9935
    const-string v1, "senderIsVideoCall"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9936
    const-string v1, "imageSelected"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 9937
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    .line 9938
    const-string v0, "InVTCallScreen"

    const-string v0, "Out selectMyVideofile method"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9940
    return-void
.end method

.method private setHideOrShowMeState()V
    .locals 5

    .prologue
    const v4, 0x7f0d02d8

    const v3, 0x7f0202e5

    const/4 v2, 0x0

    .line 9621
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 9623
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    .line 9627
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 9628
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 9643
    :goto_0
    return-void

    .line 9631
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_2

    .line 9633
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f02022d

    invoke-virtual {v0, v2, v1, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 9634
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    const v1, 0x7f0d02d7

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    goto :goto_0

    .line 9638
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v2, v3, v2, v2}, Landroid/widget/Button;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 9639
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHide:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setText(I)V

    goto :goto_0
.end method

.method private setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V
    .locals 2
    .parameter "newMode"

    .prologue
    .line 6389
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInVTCallScreenMode: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6390
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    .line 6391
    sget-object v0, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$phone$InVTCallScreen$InVTCallScreenMode:[I

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-virtual {v1}, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 6525
    :cond_0
    :goto_0
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    .line 6526
    :pswitch_1
    return-void

    .line 6498
    :pswitch_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-nez v0, :cond_0

    .line 6499
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 6503
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 6508
    const-string v0, "WARNING: Setting mode to UNDEFINED but phone is OFFHOOK, skip cleanOtaScreen."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6391
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private setRingingCallFrameAni()V
    .locals 4

    .prologue
    const/16 v3, 0xc8

    .line 10275
    new-instance v0, Landroid/graphics/drawable/AnimationDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/AnimationDrawable;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    .line 10276
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10278
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10280
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10282
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f02004f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10284
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020050

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10286
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020051

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10288
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10290
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f020053

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1, v3}, Landroid/graphics/drawable/AnimationDrawable;->addFrame(Landroid/graphics/drawable/Drawable;I)V

    .line 10292
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/AnimationDrawable;->setOneShot(Z)V

    .line 10293
    return-void
.end method

.method private setupDTMFDialer()V
    .locals 4

    .prologue
    .line 2017
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 2018
    const v0, 0x7f0800c6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    .line 2024
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Full touch device!  Found dialerView: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2025
    const/4 v0, 0x0

    .line 2038
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    if-nez v1, :cond_1

    .line 2039
    const-string v1, "InVTCallScreen"

    const-string v2, "onCreate: couldn\'t find dialerView"

    new-instance v3, Ljava/lang/IllegalStateException;

    invoke-direct {v3}, Ljava/lang/IllegalStateException;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2045
    :goto_1
    new-instance v1, Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;Landroid/widget/SlidingDrawer;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    .line 2047
    return-void

    .line 2020
    :cond_0
    const v0, 0x7f0800c5

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    goto :goto_0

    .line 2042
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDialerView:Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Lcom/android/phone/DTMFTwelveKeyDialerViewForVT;->setVisibility(I)V

    goto :goto_1
.end method

.method private showCallLostDialog()V
    .locals 2

    .prologue
    .line 6001
    const-string v0, "showCallLostDialog()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6004
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 6006
    const-string v0, "showCallLostDialog: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6021
    :goto_0
    return-void

    .line 6011
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    .line 6013
    const-string v0, "showCallLostDialog: There is a mCallLostDialog already."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 6017
    :cond_1
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

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    .line 6020
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallLostDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0
.end method

.method private showEndCallScreen(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3604
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    .line 3605
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissContextDailogBox()V

    .line 3606
    const v0, 0x7f030043

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setContentView(I)V

    .line 3611
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3612
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    .line 3636
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    if-nez v0, :cond_0

    .line 3637
    new-instance v0, Lcom/android/phone/SmallerHitTargetTouchListener;

    invoke-direct {v0}, Lcom/android/phone/SmallerHitTargetTouchListener;-><init>()V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    .line 3639
    :cond_0
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 3640
    const v0, 0x7f08007f

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    .line 3641
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_1

    .line 3642
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3643
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3645
    :cond_1
    const v0, 0x7f080080

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    .line 3646
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    .line 3647
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3648
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3650
    :cond_2
    const v0, 0x7f080081

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    .line 3651
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_3

    .line 3652
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSmallerHitTargetTouchListener:Landroid/view/View$OnTouchListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3653
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3658
    :cond_3
    const v0, 0x7f08007d

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    .line 3659
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3660
    const v0, 0x7f08007e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    .line 3661
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3663
    const v0, 0x7f08007c

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    .line 3664
    const v0, 0x7f08007b

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    .line 3665
    const v0, 0x7f080063

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    .line 3666
    const v0, 0x7f08011e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    .line 3667
    const v0, 0x7f080126

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    .line 3668
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->updateEndcallButtonState(Z)V

    .line 3669
    return-void
.end method

.method private showGenericErrorDialog(IZ)V
    .locals 6
    .parameter
    .parameter

    .prologue
    .line 5944
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 5946
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

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5953
    if-eqz p2, :cond_0

    .line 5954
    new-instance v1, Lcom/android/phone/InVTCallScreen$13;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$13;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 5959
    new-instance v2, Lcom/android/phone/InVTCallScreen$14;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$14;-><init>(Lcom/android/phone/InVTCallScreen;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    .line 5977
    :goto_0
    new-instance v3, Lcom/android/phone/InVTCallScreen$17;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$17;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 5986
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0d003e

    invoke-virtual {v0, v4, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    .line 5989
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 5993
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 5996
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mGenericErrorDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 5997
    return-void

    .line 5965
    :cond_0
    new-instance v1, Lcom/android/phone/InVTCallScreen$15;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$15;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 5970
    new-instance v2, Lcom/android/phone/InVTCallScreen$16;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$16;-><init>(Lcom/android/phone/InVTCallScreen;)V

    move-object v5, v2

    move-object v2, v1

    move-object v1, v5

    goto :goto_0
.end method

.method private showImage(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 10796
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside showImage condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10797
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10798
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendStillImage(Ljava/lang/String;)V

    .line 10800
    :cond_0
    return-void
.end method

.method private showVideo(Ljava/lang/String;)V
    .locals 2
    .parameter "filePath"

    .prologue
    .line 10782
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "inside show video condition and file path is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10783
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10784
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, p1}, Lsiso/vt/VTManager;->sendVideo(Ljava/lang/String;)V

    .line 10786
    :cond_0
    return-void
.end method

.method private showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4587
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4588
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4589
    const v2, 0x7f0d0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4590
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4592
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4594
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4595
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4596
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4599
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0045

    new-instance v2, Lcom/android/phone/InVTCallScreen$10;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$10;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/InVTCallScreen$9;

    invoke-direct {v1, p0, p1}, Lcom/android/phone/InVTCallScreen$9;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4616
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4618
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4619
    return-void
.end method

.method private showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V
    .locals 3
    .parameter
    .parameter

    .prologue
    .line 4629
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 4630
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4631
    const v2, 0x7f0d0043

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 4632
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4634
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 4636
    const-string v0, "- DISMISSING mWaitPromptDialog."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4637
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 4638
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4641
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0046

    new-instance v2, Lcom/android/phone/InVTCallScreen$12;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$12;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0047

    new-instance v2, Lcom/android/phone/InVTCallScreen$11;

    invoke-direct {v2, p0, p1}, Lcom/android/phone/InVTCallScreen$11;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/internal/telephony/Connection;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    .line 4657
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 4659
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mWaitPromptDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 4660
    return-void
.end method

.method private show_camera()V
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    const-string v6, "Value of selectImg"

    const-string v5, "In selectVideo condition under show_camera"

    const-string v2, "InVTCallScreen"

    .line 10740
    const-string v0, "InVTCallScreen"

    const-string v0, "In show_camera method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10741
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of selectImg"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10742
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of selectImg"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10744
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    if-eqz v0, :cond_2

    .line 10745
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectImg condition under show_camera"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10752
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 10753
    iput-object v4, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 10754
    const-string v0, "InVTCallScreen"

    const-string v0, "Out selectImg condition under show_camera"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10768
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 10769
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->sendLiveVideo()V

    .line 10771
    :cond_1
    const-string v0, "InVTCallScreen"

    const-string v0, "Out show_camera method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10772
    return-void

    .line 10755
    :cond_2
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    if-eqz v0, :cond_0

    .line 10756
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideo condition under show_camera"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10763
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 10764
    iput-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 10766
    const-string v0, "InVTCallScreen"

    const-string v0, "In selectVideo condition under show_camera"

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 7320
    return-void
.end method

.method private startRecordingFarEndView()V
    .locals 5

    .prologue
    const/16 v4, 0x7e

    const/4 v3, 0x1

    .line 10523
    .line 10524
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->checkStorageMemorySpace(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10525
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 10526
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeFarEnd:J

    .line 10527
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUI()V

    .line 10528
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-static {v0}, Lcom/android/phone/MediaLowSpaceReceiver;->registerLowMemoryListner(Landroid/os/Handler;)V

    .line 10531
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecordingAlert:Z

    .line 10532
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    .line 10533
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 10534
    const-string v0, "data/data/com.android.phone/files/video_call_recording_start.jpg"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 10535
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v4, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 10537
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 10538
    const/16 v0, 0xa

    .line 10540
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    .line 10545
    :goto_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10546
    return-void

    .line 10542
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 10543
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0
.end method

.method private startRecordingNearEndView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 10576
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-nez v0, :cond_1

    .line 10577
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeNearEnd:J

    .line 10578
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStartRecordingUIForNearEnd()V

    .line 10579
    const/4 v0, 0x5

    .line 10581
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10582
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 10583
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->GetValidFileName(Z)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    .line 10584
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v1, :cond_0

    .line 10585
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mRecordingFileName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lsiso/vt/VTManager;->StartRecording(Ljava/lang/String;I)V

    .line 10586
    :cond_0
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecording:Z

    .line 10587
    const-string v0, "InVTCallScreen"

    const-string v1, "Out start_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10589
    :cond_1
    return-void
.end method

.method private startToast(Ljava/lang/String;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 5618
    if-eqz p1, :cond_0

    .line 5619
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 5621
    invoke-static {v0, p1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 5622
    const/16 v1, 0x10

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/Toast;->setGravity(III)V

    .line 5623
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 5628
    :goto_0
    return-void

    .line 5625
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "startToast : msg is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startVTCall()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 10143
    const-string v0, "InVTCallScreen"

    const-string v0, "Before-StartVTCall"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10144
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 10145
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_0

    .line 10147
    const-string v0, "InVTCallScreen"

    const-string v0, "StartVTCall is called "

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10148
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    .line 10149
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10150
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallType:Z

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StartVTCall(Z)V

    .line 10155
    :cond_0
    return-void
.end method

.method private stopFakeCallVoice(Lcom/android/internal/telephony/Call;)V
    .locals 0
    .parameter "call"

    .prologue
    .line 7334
    return-void
.end method

.method private stopRecordingFarEndView()V
    .locals 3

    .prologue
    const/16 v2, 0x7e

    .line 10551
    const-string v0, "InVTCallScreen"

    const-string v1, "In stopRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10552
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10553
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StopRecording(Z)V

    .line 10555
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUI()V

    .line 10556
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 10557
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 10559
    return-void
.end method

.method private stopRecordingNearEndView()V
    .locals 2

    .prologue
    .line 10593
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateStopRecordingUIForNearEnd()V

    .line 10594
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10595
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10596
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->StopRecording(Z)V

    .line 10597
    :cond_0
    const-string v0, "InVTCallScreen"

    const-string v1, "Out stop_recording"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10598
    return-void
.end method

.method private stopVTCall()V
    .locals 3

    .prologue
    const-string v2, "InVTCallScreen"

    .line 10158
    const-string v0, "InVTCallScreen"

    const-string v0, "Before-StopVTCall"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10159
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 10160
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v0, :cond_0

    .line 10161
    const-string v0, "InVTCallScreen"

    const-string v0, "StopVTCall is called"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10162
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isVTCallAlreadyStop:Z

    .line 10163
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10164
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->StopVTCall()V

    .line 10167
    :cond_0
    return-void
.end method

.method private surfaceview_initialize()V
    .locals 6

    .prologue
    const v5, 0x7f080125

    const v4, 0x7f08011f

    const v3, 0x7f080066

    const/4 v2, 0x3

    .line 7844
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 7845
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 7846
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    .line 7847
    const v0, 0x7f080138

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    .line 7848
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 7849
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 7850
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 7851
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8143
    :cond_0
    :goto_0
    return-void

    .line 7854
    :cond_1
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 7855
    const v0, 0x7f08013a

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    goto :goto_0

    .line 7856
    :cond_2
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7857
    const v0, 0x7f080135

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->stopRecordingLayout:Landroid/widget/LinearLayout;

    .line 7858
    const v0, 0x7f080065

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    .line 7859
    const v0, 0x7f080116

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationFarEnd:Landroid/widget/ImageView;

    .line 7860
    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->whiteViewCameraAnimationNearEnd:Landroid/widget/ImageView;

    .line 7861
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_3

    .line 7864
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$20;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$20;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 7874
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    .line 7875
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 7876
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 7877
    const v0, 0x7f080118

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->farEndImage:Landroid/widget/ImageView;

    .line 7879
    :cond_3
    invoke-virtual {p0, v4}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    .line 7883
    const v0, 0x7f080112

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 7884
    new-instance v1, Lcom/android/phone/InVTCallScreen$21;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$21;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 8026
    new-instance v1, Lcom/android/phone/InVTCallScreen$22;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$22;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 8124
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/SurfaceView;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    .line 8125
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 8126
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    .line 8127
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v2}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 8128
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 8131
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    new-instance v1, Lcom/android/phone/InVTCallScreen$23;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$23;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto/16 :goto_0
.end method

.method private swipeSurfaceView()V
    .locals 2

    .prologue
    .line 10726
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 10727
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceDestroyed(Landroid/view/SurfaceHolder;)V

    .line 10728
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 10730
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetNearEndDisplay()V

    .line 10731
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->ResetPreviewDisplay()V

    .line 10733
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->swipeSurface()V

    .line 10734
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->far_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 10735
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->nearFarSufaceCallback:Landroid/view/SurfaceHolder$Callback;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurhldr:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder$Callback;->surfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 10736
    return-void
.end method

.method private switchCamera()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    const/4 v2, 0x1

    .line 9830
    const-string v0, "InVTCallScreen"

    const-string v1, "This is inside CallVtScreen switchCamera method"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9832
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    if-eqz v0, :cond_1

    .line 9834
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9835
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v3, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 9836
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    .line 9843
    :goto_0
    return-void

    .line 9838
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_2

    .line 9839
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    .line 9840
    :cond_2
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFrontCameraEnabled:Z

    goto :goto_0
.end method

.method private syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 4860
    const/4 v2, 0x0

    .line 4862
    .local v2, updateSuccessful:Z
    const-string v3, "syncWithPhoneState()..."

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4864
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 4866
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dumpBluetoothState()V

    .line 4873
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 4875
    .local v1, phoneType:I
    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v4, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v3, v4, :cond_1

    .line 4879
    :cond_0
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 4896
    :goto_0
    return-object v3

    .line 4884
    :cond_1
    if-ne v1, v5, :cond_3

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v3}, Lcom/android/internal/telephony/Phone;->getPendingMmiCodes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    move v0, v5

    .line 4887
    .local v0, hasPendingMmiCodes:Z
    :goto_1
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v3}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v3

    if-nez v3, :cond_2

    if-eqz v0, :cond_4

    .line 4889
    :cond_2
    const-string v3, "syncWithPhoneState: it\'s ok to be here; update the screen..."

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4890
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 4891
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 4884
    .end local v0           #hasPendingMmiCodes:Z
    :cond_3
    const/4 v3, 0x0

    move v0, v3

    goto :goto_1

    .line 4895
    .restart local v0       #hasPendingMmiCodes:Z
    :cond_4
    const-string v3, "syncWithPhoneState: phone is idle; we shouldn\'t be here!"

    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4896
    sget-object v3, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->PHONE_NOT_IN_USE:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0
.end method

.method private unregisterForPhoneStates()V
    .locals 2

    .prologue
    .line 2789
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPreciseCallStateChanged(Landroid/os/Handler;)V

    .line 2790
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForDisconnect(Landroid/os/Handler;)V

    .line 2791
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiInitiate(Landroid/os/Handler;)V

    .line 2792
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForMmiComplete(Landroid/os/Handler;)V

    .line 2793
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCallWaiting(Landroid/os/Handler;)V

    .line 2794
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForSuppServiceFailed(Landroid/os/Handler;)V

    .line 2795
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForPostDialCharacter(Landroid/os/Handler;)V

    .line 2796
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/CallManager;->unregisterForCdmaOtaStatusChange(Landroid/os/Handler;)V

    .line 2797
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRegisteredForPhoneStates:Z

    .line 2798
    return-void
.end method

.method private updateDisplayForCaller(Lcom/android/internal/telephony/Connection;)V
    .locals 6
    .parameter

    .prologue
    const v5, 0x7f0d0008

    const-string v4, "InVTCallScreen"

    const-string v3, ""

    .line 7435
    invoke-static {p0, p1}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 7436
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v1

    .line 7437
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_0

    sget v2, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v2, :cond_0

    .line 7439
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7440
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7441
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info Avialable"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7467
    :goto_0
    return-void

    .line 7442
    :cond_0
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_1

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7444
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7445
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7446
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_ALLOWED"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7447
    :cond_1
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-ne v1, v0, :cond_2

    .line 7448
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0d0009

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7449
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7450
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_RESTRICTED"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7451
    :cond_2
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-ne v1, v0, :cond_3

    .line 7452
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7453
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7454
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_UNKNOWN"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7455
    :cond_3
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_PAYPHONE:I

    if-ne v1, v0, :cond_4

    .line 7456
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    const v1, 0x7f0d000a

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7457
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7458
    const-string v0, "InVTCallScreen"

    const-string v0, "Caller Info PRESENTATION_PAYPHONE"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 7459
    :cond_4
    sget v0, Lcom/android/internal/telephony/Connection;->PRESENTATION_ALLOWED:I

    if-ne v1, v0, :cond_5

    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 7461
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7462
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 7464
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {p0, v5}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7465
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method

.method private updateElapsedTimeWidget(J)V
    .locals 2
    .parameter

    .prologue
    .line 2070
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2071
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_3

    .line 2072
    const-string v0, "00:00"

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    .line 2073
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2079
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    .line 2085
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateRecordTime()V

    .line 2086
    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2087
    new-instance v1, Landroid/os/StatFs;

    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 2088
    invoke-virtual {v1}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v0

    const/16 v1, 0x32

    if-ge v0, v1, :cond_1

    .line 2089
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mLowMemoryStopRecording:Z

    .line 2091
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 2095
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_2

    .line 2101
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateRecordTime()V

    .line 2103
    :cond_2
    return-void

    .line 2075
    :cond_3
    invoke-static {p1, p2}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    .line 2076
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateEndCallButton()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 3572
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 3573
    .local v0, fgCallState:Lcom/android/internal/telephony/Call$State;
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-static {v1}, Lcom/android/phone/PhoneUtils;->isConferenceCall(Lcom/android/internal/telephony/Call;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3574
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    .line 3575
    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTING:Lcom/android/internal/telephony/Call$State;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/Call$State;->DISCONNECTED:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_0

    .line 3591
    :cond_0
    :goto_0
    return-void

    .line 3581
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-ne v0, v1, :cond_2

    .line 3585
    const-string v1, "updateEndCallButton : All calls are IDLE at updateEndCallButton()"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3586
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->delayedCleanupAfterDisconnect()V

    goto :goto_0

    .line 3590
    :cond_2
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->showEndCallScreen(Z)V

    goto :goto_0
.end method

.method private updateEndcallButtonState(Z)V
    .locals 13
    .parameter

    .prologue
    const/4 v10, 0x4

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v11, "20"

    .line 3671
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCreateButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mUpdateButton:Landroid/widget/Button;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_2

    .line 3673
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    .line 3674
    const/4 v1, 0x0

    .line 3675
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 3676
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3677
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3678
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    .line 3710
    :cond_0
    :goto_0
    if-eqz p1, :cond_7

    .line 3711
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    const v2, 0x7f0d0197

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3713
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 3714
    if-nez v1, :cond_6

    .line 3715
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3727
    :cond_1
    :goto_1
    if-eqz v0, :cond_13

    .line 3728
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v1

    .line 3730
    if-nez v1, :cond_8

    move v2, v9

    .line 3731
    :goto_2
    if-nez v1, :cond_9

    move v3, v9

    .line 3732
    :goto_3
    if-nez v1, :cond_a

    move v4, v9

    .line 3734
    :goto_4
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getNumberPresentation()I

    move-result v5

    .line 3736
    const-string v6, "20"

    .line 3737
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/phone/PhoneApp;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "lock_pcw_enabled"

    invoke-static {v6, v7}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 3741
    if-eqz v6, :cond_b

    const-string v7, "20"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_b

    .line 3742
    const-string v0, "EndCallButtonsView : LOCK_PCW_ENABLED"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v8

    move v1, v8

    move v2, v8

    move v3, v8

    .line 3762
    :goto_5
    sget-boolean v4, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-eqz v4, :cond_e

    .line 3763
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3764
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v8}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3765
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v2, v10}, Landroid/view/View;->setVisibility(I)V

    .line 3772
    :goto_6
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mSendMsgButton:Landroid/widget/Button;

    if-eqz v1, :cond_11

    move v1, v9

    :goto_7
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3773
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSaveButtonFrame:Landroid/view/View;

    if-eqz v0, :cond_12

    move v0, v8

    :goto_8
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 3781
    :cond_2
    :goto_9
    return-void

    .line 3679
    :cond_3
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    if-ne v2, v9, :cond_5

    .line 3680
    if-eqz v0, :cond_15

    .line 3681
    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 3683
    :goto_a
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 3684
    if-eqz v1, :cond_4

    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 3685
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    sget-object v4, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-wide v5, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v4, v5, v6}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v4

    const v5, 0x7f02011d

    invoke-static {v2, v3, v4, v5}, Landroid/pim/ContactsAsyncHelper;->updateImageViewWithContactPhotoAsync(Landroid/content/Context;Landroid/widget/ImageView;Landroid/net/Uri;I)V

    .line 3689
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v2, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3690
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3691
    if-eqz v0, :cond_0

    .line 3692
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3693
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 3697
    :cond_4
    if-eqz v0, :cond_0

    .line 3698
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3699
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerName:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3700
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 3706
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected phone type: isContactExist: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3717
    :cond_6
    :try_start_1
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallerNumber:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    .line 3719
    :catch_0
    move-exception v1

    .line 3720
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 3723
    :cond_7
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    .line 3724
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCallEndTime:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    :cond_8
    move v2, v8

    .line 3730
    goto/16 :goto_2

    :cond_9
    move v3, v8

    .line 3731
    goto/16 :goto_3

    :cond_a
    move v4, v8

    .line 3732
    goto/16 :goto_4

    .line 3747
    :cond_b
    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_RESTRICTED:I

    if-eq v5, v6, :cond_d

    sget v6, Lcom/android/internal/telephony/Connection;->PRESENTATION_UNKNOWN:I

    if-eq v5, v6, :cond_d

    .line 3749
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 3750
    instance-of v5, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v5, :cond_14

    .line 3751
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .line 3752
    if-nez v1, :cond_c

    iget-boolean v0, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    if-nez v0, :cond_c

    move v0, v9

    :goto_b
    move v1, v4

    move v12, v3

    move v3, v2

    move v2, v12

    .line 3755
    goto/16 :goto_5

    :cond_c
    move v0, v8

    .line 3752
    goto :goto_b

    :cond_d
    move v0, v8

    move v1, v8

    move v2, v8

    move v3, v8

    .line 3758
    goto/16 :goto_5

    .line 3767
    :cond_e
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mEndCallButtonFrame:Landroid/view/View;

    invoke-virtual {v4, v8}, Landroid/view/View;->setVisibility(I)V

    .line 3768
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallButton:Landroid/widget/Button;

    if-eqz v3, :cond_f

    move v3, v9

    :goto_c
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 3769
    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mVideoCallButton:Landroid/widget/Button;

    if-eqz v2, :cond_10

    move v2, v9

    :goto_d
    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_6

    :cond_f
    move v3, v8

    .line 3768
    goto :goto_c

    :cond_10
    move v2, v8

    .line 3769
    goto :goto_d

    :cond_11
    move v1, v8

    .line 3772
    goto/16 :goto_7

    :cond_12
    move v0, v10

    .line 3773
    goto/16 :goto_8

    .line 3778
    :cond_13
    const-string v0, "EndCallButtonsView : connection is NullPointer at updateState"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_9

    :cond_14
    move v0, v8

    goto :goto_b

    :cond_15
    move-object v0, v1

    goto/16 :goto_a
.end method

.method private updateInCallBackground()V
    .locals 10

    .prologue
    const/16 v9, 0x64

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v5, 0x1

    const-string v6, "InVTCallScreen"

    .line 7103
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    .line 7104
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v1

    .line 7105
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v2

    .line 7106
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v3

    .line 7107
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->showBluetoothIndication()Z

    move-result v4

    .line 7118
    if-eqz v0, :cond_1

    .line 7120
    if-eqz v4, :cond_0

    .line 7266
    :cond_0
    :goto_0
    return-void

    .line 7125
    :cond_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_0

    .line 7131
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCallState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 7132
    sget-object v1, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Call$State:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 7134
    :pswitch_0
    const/4 v0, 0x0

    .line 7136
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_3

    .line 7137
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 7142
    :cond_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->checkForCleanupState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 7143
    const-string v1, "InVTCallScreen"

    const-string v1, "updateInCallBackground :ACTIVE"

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7145
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v5, :cond_4

    .line 7146
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateOwnImageStatus()V

    .line 7148
    :cond_4
    invoke-virtual {v3}, Lcom/android/phone/PhoneApp;->isHeadsetPlugged()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 7149
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call EarPhone is connected and switching off the speaker. "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7175
    :cond_5
    :goto_1
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isCallConnected:Z

    .line 7176
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 7177
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    .line 7178
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_9

    .line 7180
    const-string v0, "InitVtCallScreen started because Activity is in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7181
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 7188
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7189
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 7190
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 7191
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 7192
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->startMinuteMinderAlarm()V

    .line 7194
    :cond_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7195
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 7157
    :cond_7
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    if-eq v0, v8, :cond_5

    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->isVTManagerAlreadyStarted:Z

    if-nez v0, :cond_5

    .line 7159
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call Bluetooth is connected and switching off the speaker. "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7162
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v8, :cond_8

    .line 7164
    invoke-static {p0, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 7166
    :cond_8
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v0, v5, :cond_5

    .line 7167
    const-string v0, "InVTCallScreen"

    const-string v0, "Durring Call Bluetooth is not connected and switching on the speaker. in IncallScreen"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7171
    invoke-static {p0, v5, v5}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_1

    .line 7184
    :cond_9
    const-string v0, "InitVtCallScreen not started because Activity is not in foreground"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7185
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startVTCall()V

    goto :goto_2

    .line 7201
    :pswitch_1
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :DISCONNECTING"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7202
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7203
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0, v1}, Lcom/android/phone/CallTime;->setActiveCallMode(Lcom/android/internal/telephony/Call;)V

    .line 7204
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->reset()V

    .line 7205
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->periodicUpdateTimer()Z

    .line 7206
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 7207
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTimer:Landroid/widget/TextView;

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 7223
    :pswitch_2
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :DISCONNECTED"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7224
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v0, :cond_0

    .line 7225
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v0}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 7226
    const-string v0, "InVTCallScreen"

    const-string v0, "updateInCallBackground :Timer Canceled"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7227
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-eqz v0, :cond_0

    .line 7228
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    invoke-virtual {v0, v9}, Landroid/os/Handler;->removeMessages(I)V

    .line 7229
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->timerHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v9, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 7237
    :pswitch_3
    const-string v0, "case dialing"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7238
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    if-nez v0, :cond_b

    .line 7239
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v7}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_b

    .line 7240
    :cond_a
    const-string v0, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 7241
    const v0, 0x7f0d023f

    invoke-static {p0, v0, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 7243
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mToastExecuteOnceForDevicePolicyManager:Z

    .line 7247
    :cond_b
    :pswitch_4
    if-eqz v4, :cond_0

    goto/16 :goto_0

    .line 7132
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private updateInCallTouchUi()V
    .locals 0

    .prologue
    .line 6660
    return-void
.end method

.method private updateOwnImageStatus()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5346
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "own_video_receivedcall"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5353
    :cond_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 5354
    const-string v0, "UpdateOwnImageStatus : Setup Hide me image, as per settings"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5367
    :goto_0
    return-void

    .line 5356
    :cond_1
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 5357
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 5358
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 5359
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 5360
    const-string v0, "UpdateOwnImageStatus : Setup Show me image, as per settings"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateRecordTime()V
    .locals 2

    .prologue
    .line 2112
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_1

    .line 2113
    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeFarEnd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->updateRecordTimeUIFarEnd(J)V

    .line 2118
    :cond_0
    :goto_0
    return-void

    .line 2115
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isNearEndRecord:Z

    if-eqz v0, :cond_0

    .line 2116
    iget-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordTimeNearEnd:J

    invoke-virtual {p0, v0, v1}, Lcom/android/phone/InVTCallScreen;->updateRecordTimeUINearEnd(J)V

    goto :goto_0
.end method

.method private updateScreen()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 4694
    const-string v0, "updateScreen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4701
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_0

    .line 4703
    const-string v0, "- updateScreen: not the foreground Activity! Bailing out..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4727
    :cond_0
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 4729
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_2

    .line 4731
    const-string v0, "- updateScreen: OTA call state NORMAL..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4847
    :cond_1
    :goto_0
    return-void

    .line 4739
    :cond_2
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_3

    .line 4741
    const-string v0, "- updateScreen: OTA call ended state ..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4743
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->wakeUpScreen()V

    goto :goto_0

    .line 4764
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_4

    .line 4766
    const-string v0, "- updateScreen: manage conference mode (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4769
    :cond_4
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->CALL_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_5

    .line 4771
    const-string v0, "- updateScreen: call ended state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4773
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_0

    .line 4775
    :cond_5
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v1, v2, :cond_6

    .line 4779
    const-string v0, "- updateScreen: error call state (NOT updating in-call UI)..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 4784
    :cond_6
    const-string v1, "- updateScreen: updating the in-call UI..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4792
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_8

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-eq v1, v3, :cond_8

    .line 4793
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->removeDialog(I)V

    .line 4794
    iget-object v0, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 4795
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-nez v0, :cond_7

    .line 4796
    invoke-static {}, Lsiso/vt/VTManager;->getInstance()Lsiso/vt/VTManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    .line 4798
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->myListener:Lsiso/vt/VTManager$VTStackStateListener;

    invoke-virtual {v0, v1}, Lsiso/vt/VTManager;->setStackStateListener(Lsiso/vt/VTManager$VTStackStateListener;)V

    .line 4799
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    .line 4800
    const v0, 0x7f0d0180

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    .line 4801
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    .line 4807
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 4808
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    goto/16 :goto_0

    .line 4803
    :cond_8
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallBackground()V

    goto :goto_1

    .line 4814
    :cond_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFgCallConnections()Ljava/util/List;

    move-result-object v0

    .line 4815
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v1

    .line 4816
    const/4 v2, 0x2

    if-ne v1, v2, :cond_c

    .line 4817
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getFgCallLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 4818
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v2

    iget-object v2, v2, Lcom/android/phone/PhoneApp;->cdmaPhoneCallState:Lcom/android/phone/CdmaPhoneCallState;

    invoke-virtual {v2}, Lcom/android/phone/CdmaPhoneCallState;->getCurrentCallState()Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    move-result-object v2

    sget-object v3, Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;->CONF_CALL:Lcom/android/phone/CdmaPhoneCallState$PhoneCallState;

    if-ne v2, v3, :cond_b

    .line 4820
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/internal/telephony/Connection;

    .line 4821
    if-eqz p0, :cond_a

    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v1, v2, :cond_a

    .line 4823
    invoke-virtual {p0}, Lcom/android/internal/telephony/Connection;->cancelPostDial()V

    goto :goto_2

    .line 4826
    :cond_b
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v0, v2, :cond_1

    .line 4829
    const-string v0, "show the Wait dialog for CDMA"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 4830
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v0

    .line 4832
    invoke-direct {p0, v1, v0}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialogCDMA(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4834
    :cond_c
    if-ne v1, v3, :cond_e

    .line 4835
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_d
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/Connection;

    .line 4836
    if-eqz v0, :cond_d

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getPostDialState()Lcom/android/internal/telephony/Connection$PostDialState;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Connection$PostDialState;->WAIT:Lcom/android/internal/telephony/Connection$PostDialState;

    if-ne v2, v3, :cond_d

    .line 4838
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getRemainingPostDialString()Ljava/lang/String;

    move-result-object v2

    .line 4839
    invoke-direct {p0, v0, v2}, Lcom/android/phone/InVTCallScreen;->showWaitPromptDialog(Lcom/android/internal/telephony/Connection;Ljava/lang/String;)V

    goto :goto_3

    .line 4843
    :cond_e
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

.method private updateSelectedImageFromGallery()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x0

    const-string v7, "InVTCallScreen"

    .line 1403
    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_3

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 1404
    const-string v0, "InVTCallScreen"

    const-string v0, "Response from MediaStore"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1408
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1410
    if-eqz v0, :cond_5

    .line 1413
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_2

    .line 1416
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->ImgProj:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1417
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 1418
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1419
    const-string v1, "mime_type"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    .line 1420
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1421
    const-string v2, "InVTCallScreen"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mimetype of image selected : "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1429
    const-string v2, "image/pipeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "image/jpeg"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1431
    :cond_0
    const-string v1, "InVTCallScreen"

    const-string v1, "Selected File is Jpeg."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1432
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageSelectedFromOption:Z

    .line 1433
    iput-boolean v6, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 1434
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 1435
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    .line 1436
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->showImage(Ljava/lang/String;)V

    .line 1437
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1456
    :cond_1
    :goto_0
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of bitmap after decoding - VTPM_IMAGE_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1459
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    invoke-virtual {v1, v6}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1461
    :cond_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1470
    :cond_3
    :goto_1
    return-void

    .line 1443
    :cond_4
    const-string v1, "InVTCallScreen"

    const-string v1, "Selected File is not Jpeg."

    invoke-static {v7, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1444
    const v1, 0x7f0d0317

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1449
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 1450
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 1451
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    goto :goto_0

    .line 1465
    :cond_5
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->filePath:Ljava/lang/String;

    .line 1466
    sput-object v3, Lcom/android/phone/InVTCallScreen;->mImageSelectedFromGalary:Landroid/net/Uri;

    .line 1467
    const v0, 0x7f0d0305

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    goto :goto_1
.end method

.method private updateSelectedVideoFromGallery()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    const-string v6, "InVTCallScreen"

    .line 1374
    const-string v0, "InVTCallScreen"

    const-string v0, "Response from MediaStore"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1375
    sget-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 1377
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 1378
    const-string v0, "InVTCallScreen"

    const-string v0, "Response from MediaStore  VTPM_VIDEO_REQ"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1380
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/phone/InVTCallScreen;->mVideoSelectedFromGalary:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->VideoProj:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 1383
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-lez v1, :cond_0

    .line 1385
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1386
    const-string v1, "_data"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    .line 1387
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of video filepath  VTPM_VIDEO_REQ"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1389
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVideofilePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->showVideo(Ljava/lang/String;)V

    .line 1390
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->near_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    .line 1400
    :goto_0
    return-void

    .line 1396
    :cond_1
    const v0, 0x7f0d0305

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->displayToast(I)V

    .line 1397
    const-string v0, "mVideoSelectedFromGalary is null"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private updateStartRecordingUI()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 8704
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 8706
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 8707
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 8708
    const-string v0, "InVTCallScreen"

    const-string v1, "In startRecordingFarEndView"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8709
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_0

    .line 8710
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8711
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8712
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8720
    :goto_0
    return-void

    .line 8715
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8716
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8717
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStartRecordingUIForNearEnd()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 8739
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    if-eqz v0, :cond_0

    .line 8741
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8742
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8743
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8751
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 8752
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 8754
    return-void

    .line 8747
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8748
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8749
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateStopRecordingUI()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 8723
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    .line 8724
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8725
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8726
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8727
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 8728
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8729
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8730
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8731
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 8732
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 8733
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 8736
    return-void
.end method

.method private updateStopRecordingUIForNearEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/16 v2, 0x8

    .line 8757
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStopRecording:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 8758
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 8759
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordNearEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8760
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecordFarEndView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 8761
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8762
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8763
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeLayoutNearEnd:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 8764
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8765
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 8766
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->clearComposingText()V

    .line 8768
    return-void
.end method

.method private updateSwitchCameraButton(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 5370
    if-eqz p1, :cond_1

    .line 5371
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 5372
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 5383
    :cond_0
    :goto_0
    return-void

    .line 5376
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    if-eqz v0, :cond_0

    .line 5377
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method


# virtual methods
.method connectBluetoothAudio()V
    .locals 2

    .prologue
    .line 6972
    const-string v0, "connectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6973
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6974
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOn()V

    .line 6984
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    .line 6985
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    .line 6986
    return-void
.end method

.method disconnectBluetoothAudio()V
    .locals 1

    .prologue
    .line 6990
    const-string v0, "disconnectBluetoothAudio()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6991
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v0, :cond_0

    .line 6992
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v0}, Lcom/android/phone/BluetoothHandsfree;->userWantsAudioOff()V

    .line 6994
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    .line 6995
    return-void
.end method

.method dismissMenu(Z)V
    .locals 4
    .parameter

    .prologue
    const/16 v3, 0x6f

    .line 6767
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

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6769
    if-eqz p1, :cond_0

    .line 6770
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->closeOptionsMenu()V

    .line 6776
    :goto_0
    return-void

    .line 6772
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 6773
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 3316
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 3341
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    .line 3332
    :pswitch_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 3333
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->far_endsurview:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setBackgroundColor(I)V

    goto :goto_0

    .line 3316
    nop

    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public endInVTCallScreenSession()V
    .locals 1

    .prologue
    .line 2700
    const-string v0, "endInVTCallScreenSession()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2701
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 2702
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->UNDEFINED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2703
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 2705
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 2683
    const-string v0, "finish()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2684
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 2685
    sget-boolean v0, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    if-eqz v0, :cond_0

    .line 2686
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    .line 2690
    :goto_0
    return-void

    .line 2688
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0
.end method

.method public getNetworkType()V
    .locals 2

    .prologue
    .line 3818
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRadioTechnology()I

    move-result v0

    .line 3819
    .local v0, radiotech:I
    packed-switch v0, :pswitch_data_0

    .line 3864
    const-string v1, "GetNetworkType :NETWORK_TYPE_UNKNOWN"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3868
    :goto_0
    return-void

    .line 3821
    :pswitch_0
    const-string v1, "GetNetworkType :NETWORK_TYPE_GPRS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3825
    :pswitch_1
    const-string v1, "GetNetworkType :NETWORK_TYPE_EDGE"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3829
    :pswitch_2
    const-string v1, "GetNetworkType :NETWORK_TYPE_UMTS"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3833
    :pswitch_3
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSDPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3837
    :pswitch_4
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSUPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3841
    :pswitch_5
    const-string v1, "GetNetworkType :NETWORK_TYPE_HSPA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3845
    :pswitch_6
    const-string v1, "GetNetworkType :RADIO_TECHNOLOGY_IS95A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3848
    :pswitch_7
    const-string v1, "GetNetworkType :NETWORK_TYPE_CDMA"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3852
    :pswitch_8
    const-string v1, "GetNetworkType :NETWORK_TYPE_1xRTT"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3856
    :pswitch_9
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_0"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3860
    :pswitch_a
    const-string v1, "GetNetworkType :NETWORK_TYPE_EVDO_A"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 3819
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method handleOnscreenButtonClick(I)V
    .locals 3
    .parameter

    .prologue
    .line 5730
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

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5732
    sparse-switch p1, :sswitch_data_0

    .line 5788
    const-string v0, "InVTCallScreen"

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

    .line 5806
    :goto_0
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateInCallTouchUi()V

    .line 5807
    return-void

    .line 5740
    :sswitch_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->releaseKeyGuardLock()V

    .line 5741
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    .line 5742
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    goto :goto_0

    .line 5745
    :sswitch_2
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    goto :goto_0

    .line 5757
    :sswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    .line 5759
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangup()V

    goto :goto_0

    .line 5762
    :sswitch_4
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onShowHideDialpad()V

    goto :goto_0

    .line 5765
    :sswitch_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 5768
    :sswitch_6
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto :goto_0

    .line 5771
    :sswitch_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto :goto_0

    .line 5774
    :sswitch_8
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->startNewCall(Lcom/android/internal/telephony/CallManager;)V

    goto :goto_0

    .line 5778
    :sswitch_9
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->mergeCalls(Lcom/android/internal/telephony/CallManager;)V

    .line 5779
    const-string v0, "Merged"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->startToast(Ljava/lang/String;)V

    goto :goto_0

    .line 5732
    :sswitch_data_0
    .sparse-switch
        0x7f080017 -> :sswitch_1
        0x7f080018 -> :sswitch_2
        0x7f08008d -> :sswitch_0
        0x7f08008f -> :sswitch_8
        0x7f080092 -> :sswitch_4
        0x7f080093 -> :sswitch_3
        0x7f080094 -> :sswitch_3
        0x7f080096 -> :sswitch_7
        0x7f080097 -> :sswitch_6
        0x7f080098 -> :sswitch_5
        0x7f0800bb -> :sswitch_0
        0x7f0800bc -> :sswitch_9
    .end sparse-switch
.end method

.method internalAnswerCall()V
    .locals 9

    .prologue
    .line 6125
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v2

    .line 6127
    .local v2, hasRingingCall:Z
    if-eqz v2, :cond_0

    .line 6128
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getRingingPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v3

    .line 6129
    .local v3, phone:Lcom/android/internal/telephony/Phone;
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v5

    .line 6130
    .local v5, ringing:Lcom/android/internal/telephony/Call;
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v6}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v4

    .line 6131
    .local v4, phoneType:I
    const/4 v6, 0x2

    if-ne v4, v6, :cond_1

    .line 6133
    const-string v6, "internalAnswerCall: answering (CDMA)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6136
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    .line 6178
    .end local v3           #phone:Lcom/android/internal/telephony/Phone;
    .end local v4           #phoneType:I
    .end local v5           #ringing:Lcom/android/internal/telephony/Call;
    :cond_0
    :goto_0
    return-void

    .line 6139
    .restart local v3       #phone:Lcom/android/internal/telephony/Phone;
    .restart local v4       #phoneType:I
    .restart local v5       #ringing:Lcom/android/internal/telephony/Call;
    :cond_1
    const/4 v6, 0x1

    if-ne v4, v6, :cond_4

    .line 6152
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveFgCall()Z

    move-result v0

    .line 6153
    .local v0, hasActiveCall:Z
    iget-object v6, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v6}, Lcom/android/internal/telephony/CallManager;->hasActiveBgCall()Z

    move-result v1

    .line 6155
    .local v1, hasHoldingCall:Z
    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 6157
    const-string v6, "internalAnswerCall: answering (both lines in use!)..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6161
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenHaveHoldingCall()V

    .line 6172
    :goto_1
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->startFakeCallVoice(Lcom/android/internal/telephony/Call;)V

    goto :goto_0

    .line 6162
    :cond_2
    if-eqz v0, :cond_3

    .line 6163
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->DisplayWaitingCallDialogWhenDoNotHaveHoldingCall()V

    goto :goto_1

    .line 6166
    :cond_3
    const-string v6, "internalAnswerCall: answering..."

    invoke-direct {p0, v6}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6167
    invoke-static {v5}, Lcom/android/phone/PhoneUtils;->answerCall(Lcom/android/internal/telephony/Call;)Z

    goto :goto_1

    .line 6174
    .end local v0           #hasActiveCall:Z
    .end local v1           #hasHoldingCall:Z
    :cond_4
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

.method internalHangup()V
    .locals 1

    .prologue
    .line 6356
    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6357
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6358
    return-void
.end method

.method internalHangupRingingCall()V
    .locals 1

    .prologue
    .line 6345
    const-string v0, "internalHangupRingingCall()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6346
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    .line 6349
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangupRingingCall(Lcom/android/internal/telephony/Call;)Z

    .line 6350
    return-void
.end method

.method internalPhoneHangup()V
    .locals 1

    .prologue
    .line 6375
    const-string v0, "internalHangup()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6376
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/phone/InVTCallScreen;->disconnectDueToLowBattery:Z

    .line 6377
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->hangup(Lcom/android/internal/telephony/CallManager;)Z

    .line 6378
    return-void
.end method

.method internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;
    .locals 6
    .parameter

    .prologue
    const/4 v4, 0x0

    const-string v5, "com.android.phone.ShowDialpad"

    .line 2861
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 2862
    :cond_0
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2968
    :cond_1
    :goto_0
    return-object v0

    .line 2867
    :cond_2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 2869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "internalResolveIntent: action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2876
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2880
    const-string v2, "com.android.phone.InCallScreen.SHOW_ACTIVATION"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v2}, Lcom/android/internal/telephony/Phone;->getPhoneType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    .line 2882
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2889
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 2890
    :cond_3
    const-string v2, "android.intent.action.ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 2891
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalAnswerCall()V

    .line 2892
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2893
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto :goto_0

    .line 2894
    :cond_4
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "android.intent.action.CALL_EMERGENCY"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 2904
    :cond_5
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->setRestoreMuteOnInCallResume(Z)V

    .line 2925
    invoke-direct {p0, p1}, Lcom/android/phone/InVTCallScreen;->placeCall(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 2926
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-ne v0, v2, :cond_1

    .line 2929
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    goto :goto_0

    .line 2934
    :cond_6
    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 2942
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_7

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_8

    .line 2945
    :cond_7
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->updateScreen()V

    .line 2946
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 2948
    :cond_8
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v5}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2949
    const-string v0, "com.android.phone.ShowDialpad"

    invoke-virtual {p1, v5, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 2952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- internalResolveIntent: SHOW_DIALPAD_EXTRA: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2960
    :cond_9
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 2961
    :cond_a
    const-string v1, "com.android.phone.InCallScreen.UNDEFINED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2962
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0

    .line 2964
    :cond_b
    const-string v1, "InVTCallScreen"

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

    .line 2968
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    goto/16 :goto_0
.end method

.method isBluetoothAudioConnected()Z
    .locals 3

    .prologue
    .line 6875
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v1, :cond_0

    .line 6877
    const-string v1, "isBluetoothAudioConnected: ==> FALSE (null mBluetoothHandsfree)"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6878
    const/4 v1, 0x0

    .line 6883
    :goto_0
    return v1

    .line 6880
    :cond_0
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1}, Lcom/android/phone/BluetoothHandsfree;->isAudioOn()Z

    move-result v0

    .line 6882
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

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v1, v0

    .line 6883
    goto :goto_0
.end method

.method isBluetoothAudioConnectedOrPending()Z
    .locals 7

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v6, " msec ago)"

    .line 6897
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6899
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> TRUE (really connected)"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 6926
    :goto_0
    return v0

    .line 6907
    :cond_0
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    if-eqz v0, :cond_2

    .line 6908
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionRequestTime:J

    sub-long/2addr v0, v2

    .line 6910
    const-wide/16 v2, 0x1388

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    .line 6912
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

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v5

    .line 6914
    goto :goto_0

    .line 6917
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

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6919
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothConnectionPending:Z

    move v0, v4

    .line 6920
    goto :goto_0

    .line 6925
    :cond_2
    const-string v0, "isBluetoothAudioConnectedOrPending: ==> FALSE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v4

    .line 6926
    goto :goto_0
.end method

.method isBluetoothAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 6825
    const-string v0, "isBluetoothAvailable()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6826
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-nez v0, :cond_0

    .line 6829
    const-string v0, "  ==> FALSE (not BT capable)"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v3

    .line 6867
    :goto_0
    return v0

    .line 6849
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v0, :cond_1

    .line 6852
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHeadset;->getCurrentHeadset()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 6854
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - headset state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothHeadset;->getState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - headset address: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6858
    if-eqz v0, :cond_1

    .line 6859
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothHeadset;->isConnected(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    .line 6861
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  - isConnected: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6866
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

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method isForegroundActivity()Z
    .locals 1

    .prologue
    .line 2708
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 3103
    const-string v0, "onBackPressed()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3105
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3106
    const-string v0, "InVTCallScreen"

    const-string v1, "Dialer Pad Already open"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3107
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 3109
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 3110
    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 3111
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 3112
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3113
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 3117
    :goto_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 3118
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 3119
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 3120
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    .line 3121
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 3175
    :goto_1
    return-void

    .line 3115
    :cond_0
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 3124
    :cond_1
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 3131
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3135
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3138
    const-string v0, "BACK key while ringing: reject the call"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3139
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalHangupRingingCall()V

    .line 3144
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1

    .line 3151
    :cond_2
    const-string v0, "BACK key while ringing: ignored"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 3166
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->MANAGE_CONFERENCE:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_4

    .line 3168
    const-string v0, "BACK key: InVTCallScreenMode.MANAGE_CONFERENCE"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3169
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    goto :goto_1

    .line 3174
    :cond_4
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_1
.end method

.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v3, "InVTCallScreen"

    .line 5388
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 5390
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick(View "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")..."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5394
    sparse-switch v0, :sswitch_data_0

    .line 5613
    :cond_0
    :goto_0
    return-void

    .line 5416
    :sswitch_0
    const-string v0, "InVTCallScreen"

    const-string v0, "on Stop Recording Clicked"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto :goto_0

    .line 5420
    :sswitch_1
    const-string v0, "InVTCallScreen"

    const-string v0, "on Cancel Recording Clicked"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5421
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto :goto_0

    .line 5424
    :sswitch_2
    const-string v0, "InVTCallScreen"

    const-string v0, "Hide Dialer Pad"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5425
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5426
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already open"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5427
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v7, :cond_1

    .line 5428
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 5429
    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 5430
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 5431
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5432
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 5436
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 5437
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 5438
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v5}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 5439
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v4}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    .line 5440
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v6}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    goto :goto_0

    .line 5434
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_1

    .line 5444
    :sswitch_3
    const-string v0, "InVTCallScreen"

    const-string v0, "In Voice call  button click"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5445
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick:: Phone number to call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5446
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5447
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CALL"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tel:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5449
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5454
    :sswitch_4
    const-string v0, "InVTCallScreen"

    const-string v0, "In Video call  button click"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5455
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnClick:: Phone number to call : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5458
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5459
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.phone.videocall"

    const-string v2, "tel"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5461
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 5462
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5468
    :sswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5469
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SENDTO"

    const-string v2, "sms"

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-static {v2, v3, v6}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5471
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5489
    :sswitch_6
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5490
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5492
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5494
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5499
    :sswitch_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5500
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.INSERT_OR_EDIT"

    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5501
    const-string v1, "phone"

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->phoneForCallNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 5502
    const-string v1, "phone_type"

    invoke-virtual {v0, v1, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 5504
    const-string v1, "vnd.android.cursor.item/raw_contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 5505
    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 5511
    :sswitch_8
    const-string v0, "onClick: Endcall..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 5514
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_2

    .line 5515
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    .line 5517
    :cond_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    .line 5518
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mBackPressed:Z

    .line 5519
    sput-boolean v4, Lcom/android/phone/InVTCallScreen;->mHomePressed:Z

    .line 5522
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_3

    .line 5523
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 5525
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto/16 :goto_0

    .line 5528
    :cond_3
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto/16 :goto_0

    .line 5533
    :sswitch_9
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->isSwitchCameraClicked:Z

    .line 5534
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x3e7

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5535
    invoke-direct {p0, v4}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    goto/16 :goto_0

    .line 5541
    :sswitch_a
    const-string v0, "InVTCallScreen"

    const-string v0, "In mute click condition"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5542
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onMuteClick()V

    goto/16 :goto_0

    .line 5546
    :sswitch_b
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_4

    .line 5547
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto/16 :goto_0

    .line 5550
    :cond_4
    const-string v0, "InVTCallScreen"

    const-string v0, "Show me Text is being clicked"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5552
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0, v6}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 5556
    :cond_5
    const v0, 0x7f0d023f

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 5560
    :cond_6
    invoke-direct {p0, v5}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 5561
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    .line 5562
    iput-boolean v5, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 5563
    iput-boolean v4, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    .line 5564
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->setHideOrShowMeState()V

    goto/16 :goto_0

    .line 5593
    :sswitch_c
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    if-lez v0, :cond_0

    .line 5594
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    sub-int/2addr v1, v5

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 5607
    :sswitch_d
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 5608
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBrightSB:Landroid/widget/SeekBar;

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    goto/16 :goto_0

    .line 5394
    nop

    :sswitch_data_0
    .sparse-switch
        0x7f080068 -> :sswitch_a
        0x7f080069 -> :sswitch_c
        0x7f08006b -> :sswitch_d
        0x7f08007d -> :sswitch_6
        0x7f08007e -> :sswitch_7
        0x7f08007f -> :sswitch_3
        0x7f080080 -> :sswitch_4
        0x7f080081 -> :sswitch_5
        0x7f080128 -> :sswitch_2
        0x7f08012a -> :sswitch_9
        0x7f08012b -> :sswitch_0
        0x7f08012c -> :sswitch_8
        0x7f080137 -> :sswitch_1
        0x7f08014a -> :sswitch_b
    .end sparse-switch
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter

    .prologue
    .line 10386
    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 10387
    const-string v0, "InVTCallScreen"

    const-string v1, "onConfigurationChanged event get called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10388
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    .line 10397
    :goto_0
    return-void

    .line 10390
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "orientation : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

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

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10391
    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 10393
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_1

    .line 10394
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0}, Lsiso/vt/VTManager;->stopCamera()V

    .line 10396
    :cond_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .parameter

    .prologue
    const-string v4, "InVTCallScreen"

    .line 1840
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate()...  this = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1842
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenOnCreate()V

    .line 1844
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 1849
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    .line 1851
    if-nez p1, :cond_0

    .line 1852
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 1854
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1855
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1857
    const-string v2, "android.intent.action.CALL"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->batteryCheck()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1860
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- Low battery: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1861
    const v0, 0x7f0d031e

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    .line 1866
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 1868
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->finish()V

    .line 1869
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2011
    :goto_0
    return-void

    .line 1875
    :catch_0
    move-exception v0

    .line 1876
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1882
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 1884
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getMiscPolicy()Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    .line 1886
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->createDefaultImages()V

    .line 1887
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 1888
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    iget-object v1, v1, Lcom/android/phone/PhoneApp;->mCM:Lcom/android/internal/telephony/CallManager;

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    .line 1889
    invoke-virtual {v0, p0}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    .line 1891
    const/high16 v1, 0x8

    .line 1892
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getPhoneState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_1

    .line 1898
    const/high16 v2, 0x40

    or-int/2addr v1, v2

    .line 1900
    :cond_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->addFlags(I)V

    .line 1903
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->fillMenuArrayList()V

    .line 1904
    iget-object v1, v0, Lcom/android/phone/PhoneApp;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->setPhone(Lcom/android/internal/telephony/Phone;)V

    .line 1906
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerBatteryListener()V

    .line 1907
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerDevicePolicyManagerReceiver()V

    .line 1908
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->getBluetoothHandsfree()Lcom/android/phone/BluetoothHandsfree;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    .line 1910
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- mBluetoothHandsfree: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1913
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1917
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1919
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initvtstack()V

    .line 1937
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->registerForPhoneStates()V

    .line 1943
    if-nez p1, :cond_4

    .line 1945
    const-string v1, "onCreate(): this is our very first launch, checking intent..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1950
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v1

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 1952
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate(): mInVTCallInitialStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 1954
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v1, v2, :cond_3

    .line 1955
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: status "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from internalResolveIntent()"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1988
    :cond_2
    :goto_1
    new-instance v0, Lcom/android/phone/CallTime;

    invoke-direct {v0, p0}, Lcom/android/phone/CallTime;-><init>(Lcom/android/phone/CallTime$OnTickListener;)V

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    .line 2008
    :goto_2
    invoke-static {}, Lcom/android/phone/Profiler;->callScreenCreated()V

    .line 2010
    const-string v0, "onCreate(): exit"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1959
    :cond_3
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHandsfree:Lcom/android/phone/BluetoothHandsfree;

    if-eqz v1, :cond_2

    .line 1960
    new-instance v1, Landroid/bluetooth/BluetoothHeadset;

    new-instance v2, Lcom/android/phone/InVTCallScreen$6;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InVTCallScreen$6;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V

    invoke-direct {v1, p0, v2}, Landroid/bluetooth/BluetoothHeadset;-><init>(Landroid/content/Context;Landroid/bluetooth/BluetoothHeadset$ServiceListener;)V

    iput-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 1985
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "- Got BluetoothHeadset: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1991
    :cond_4
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 1992
    const-string v0, "InVTCallScreen"

    const-string v0, "Else condition in icicle == null "

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 0
    .parameter "menu"
    .parameter "v"
    .parameter "menuInfo"

    .prologue
    .line 8148
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 8178
    return-void
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 10
    .parameter

    .prologue
    const/4 v8, 0x0

    const/4 v6, 0x0

    const v5, 0x1080027

    const/4 v3, 0x1

    const-string v7, "InVTCallScreen"

    .line 8779
    const-string v0, "InVTCallScreen"

    const-string v0, "In onCreateDialog"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8780
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    if-nez v0, :cond_0

    .line 8781
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCallerUppos:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 8783
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 9191
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    :goto_0
    return-object v0

    .line 8785
    :pswitch_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$27;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$27;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0030

    new-instance v2, Lcom/android/phone/InVTCallScreen$26;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$26;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 8808
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8811
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 8812
    invoke-static {p0, v0}, Lcom/android/phone/PhoneUtils;->getCallerInfo(Landroid/content/Context;Lcom/android/internal/telephony/Connection;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v1

    .line 8818
    iget-object v2, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 8819
    iget-object v0, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    .line 8820
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 8837
    :goto_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$28;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$28;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8850
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogList:Z

    .line 8852
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto :goto_0

    .line 8822
    :cond_1
    iget-object v1, v1, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    if-nez v1, :cond_2

    .line 8823
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 8824
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v1, v0}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8827
    :cond_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    const v1, 0x7f0d0008

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    goto :goto_1

    .line 8858
    :pswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 8859
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    .line 8861
    aget-object v2, v0, v8

    aput-object v2, v1, v8

    .line 8862
    aget-object v0, v0, v3

    aput-object v0, v1, v3

    .line 8865
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/phone/InVTCallScreen$30;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$30;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0030

    new-instance v2, Lcom/android/phone/InVTCallScreen$29;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$29;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 8888
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 8889
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    const v1, 0x7f0d02dd

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setTitle(I)V

    .line 8895
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$31;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$31;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 8908
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mAuxiDialogCameraPopup:Z

    .line 8910
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 8913
    :pswitch_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 8919
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0301

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02ff

    new-instance v2, Lcom/android/phone/InVTCallScreen$33;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$33;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0300

    new-instance v2, Lcom/android/phone/InVTCallScreen$32;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$32;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 8943
    :pswitch_4
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d031d

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0319

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d02ff

    new-instance v2, Lcom/android/phone/InVTCallScreen$35;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$35;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d01dc

    new-instance v2, Lcom/android/phone/InVTCallScreen$34;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$34;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 9001
    :pswitch_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 9007
    :try_start_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->getInitialNumber(Landroid/content/Intent;)Ljava/lang/String;
    :try_end_0
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 9008
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tempPhoneNumber = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Lcom/android/phone/PhoneUtils$VoiceMailNumberMissingException; {:try_start_1 .. :try_end_1} :catch_1

    .line 9013
    :goto_2
    if-nez v0, :cond_3

    .line 9014
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call;->getLatestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v0

    .line 9017
    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_6

    .line 9018
    :cond_4
    if-nez v1, :cond_5

    .line 9019
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialog not created due to getAddress is null and tempPhoneNumber is null"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9020
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, v6

    .line 9022
    goto/16 :goto_0

    .line 9009
    :catch_0
    move-exception v1

    move-object v2, v6

    .line 9010
    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error::PhoneUtils.VoiceMailNumberMissingException: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move-object v1, v2

    goto :goto_2

    :cond_5
    move-object v0, v1

    .line 9031
    :goto_4
    if-nez v0, :cond_7

    .line 9032
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialog not created due to number is null"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9033
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x6c

    const-wide/16 v2, 0x1194

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    move-object v0, v6

    .line 9035
    goto/16 :goto_0

    .line 9028
    :cond_6
    invoke-virtual {v0}, Lcom/android/internal/telephony/Connection;->getAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 9043
    :cond_7
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    if-eqz v1, :cond_8

    .line 9044
    iput-boolean v8, p0, Lcom/android/phone/InVTCallScreen;->mBeforeMakingCall:Z

    .line 9046
    new-instance v1, Lcom/android/phone/InVTCallScreen$36;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$36;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9053
    new-instance v2, Lcom/android/phone/InVTCallScreen$37;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$37;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9082
    :goto_5
    new-instance v3, Lcom/android/phone/InVTCallScreen$40;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InVTCallScreen$40;-><init>(Lcom/android/phone/InVTCallScreen;Ljava/lang/String;)V

    .line 9097
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f0d02ff

    invoke-virtual {v0, v4, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v3, 0x7f0d0300

    invoke-virtual {v0, v3, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9102
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 9062
    :cond_8
    new-instance v1, Lcom/android/phone/InVTCallScreen$38;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$38;-><init>(Lcom/android/phone/InVTCallScreen;)V

    .line 9071
    new-instance v2, Lcom/android/phone/InVTCallScreen$39;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$39;-><init>(Lcom/android/phone/InVTCallScreen;)V

    goto :goto_5

    .line 9122
    :pswitch_6
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d0316

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVoiceCallMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f0d003e

    new-instance v2, Lcom/android/phone/InVTCallScreen$41;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$41;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    goto/16 :goto_0

    .line 9134
    :pswitch_7
    const-string v0, "InVTCallScreen"

    const-string v0, "In OUTGOING_NEAR_DIALOG_LIST condition"

    invoke-static {v7, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    new-instance v2, Lcom/android/phone/InVTCallScreen$42;

    invoke-direct {v2, p0}, Lcom/android/phone/InVTCallScreen$42;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 9149
    invoke-virtual {v0, v3}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 9155
    new-instance v1, Lcom/android/phone/InVTCallScreen$43;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$43;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    goto/16 :goto_0

    .line 9166
    :pswitch_8
    const v0, 0x7f03000e

    invoke-static {p0, v0, v6}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 9167
    const v0, 0x1020001

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 9168
    new-instance v2, Lcom/android/phone/InVTCallScreen$44;

    invoke-direct {v2, p0, v0}, Lcom/android/phone/InVTCallScreen$44;-><init>(Lcom/android/phone/InVTCallScreen;Landroid/widget/CheckBox;)V

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9174
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 9175
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 9177
    const v1, 0x7f0d02e1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0d003e

    new-instance v3, Lcom/android/phone/InVTCallScreen$45;

    invoke-direct {v3, p0}, Lcom/android/phone/InVTCallScreen$45;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 9183
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    .line 9184
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    new-instance v1, Lcom/android/phone/InVTCallScreen$46;

    invoke-direct {v1, p0}, Lcom/android/phone/InVTCallScreen$46;-><init>(Lcom/android/phone/InVTCallScreen;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 9189
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuDailog:Landroid/app/Dialog;

    goto/16 :goto_0

    .line 9009
    :catch_1
    move-exception v2

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto/16 :goto_3

    .line 8783
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_4
        :pswitch_2
        :pswitch_8
    .end packed-switch
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v2, "InVTCallScreen"

    .line 9390
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    .line 9391
    const-string v0, "InVTCallScreen"

    const-string v0, "In onCreateOptionsMenu method"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9392
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Value of mMenuSelected"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9397
    const/16 v0, 0x31

    const v1, 0x7f0d02d7

    invoke-interface {p1, v3, v0, v4, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    .line 9399
    const/16 v0, 0x32

    const v1, 0x7f0d02e1

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    .line 9401
    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0d01af

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    .line 9405
    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0d02e3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    .line 9407
    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0d02e4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    .line 9414
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0d02d9

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    .line 9432
    const/16 v0, 0x41

    const v1, 0x7f0d02f4

    invoke-interface {p1, v5, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCapture:Landroid/view/MenuItem;

    .line 9438
    return v4
.end method

.method protected onDestroy()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2595
    const-string v1, "onDestroy()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2596
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2597
    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v1, v4, :cond_1

    .line 2661
    :cond_0
    :goto_0
    return-void

    .line 2600
    :cond_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v1, v2, :cond_2

    .line 2601
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 2607
    :cond_2
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2608
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->cancelSpeakerphone()V

    .line 2611
    :cond_3
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2613
    .local v0, app:Lcom/android/phone/PhoneApp;
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    if-ne v1, v2, :cond_4

    .line 2614
    invoke-virtual {v0, v5}, Lcom/android/phone/PhoneApp;->setInVTCallScreenInstance(Lcom/android/phone/InVTCallScreen;)V

    .line 2629
    :cond_4
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->unregisterForPhoneStates()V

    .line 2630
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mLowBatteryReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2631
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2634
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mConfigurationChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2636
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mDeviceManagerPolicyReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1}, Lcom/android/phone/InVTCallScreen;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 2640
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    if-eqz v1, :cond_5

    .line 2641
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothHeadset;->close()V

    .line 2642
    iput-object v5, p0, Lcom/android/phone/InVTCallScreen;->mBluetoothHeadset:Landroid/bluetooth/BluetoothHeadset;

    .line 2647
    :cond_5
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 2650
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectImg:Z

    .line 2651
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->selectVideo:Z

    .line 2653
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v1, v2, :cond_6

    .line 2654
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->isShowingCallScreen()Z

    move-result v1

    if-ne v1, v4, :cond_0

    .line 2655
    invoke-static {p0, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0

    .line 2658
    :cond_6
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2659
    invoke-static {p0, v3, v4}, Lcom/android/phone/PhoneUtils;->turnOnSpeaker(Landroid/content/Context;ZZ)V

    goto :goto_0
.end method

.method onDialerClose()V
    .locals 2

    .prologue
    .line 6580
    const-string v1, "onDialerClose()..."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6586
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 6608
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6609
    return-void
.end method

.method onDialerOpen()V
    .locals 2

    .prologue
    .line 6543
    const-string v0, "onDialerOpen()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6561
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 6566
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-ne v0, v1, :cond_0

    .line 6571
    :cond_0
    return-void
.end method

.method public onImageLoadComplete(ILjava/lang/Object;Landroid/widget/ImageView;Z)V
    .locals 9
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    const v6, 0x7f02016c

    const/4 v5, 0x7

    const/4 v4, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 10630
    if-eqz p2, :cond_0

    .line 10631
    check-cast p2, Lcom/android/internal/telephony/Call;

    .line 10632
    const/4 v2, 0x0

    .line 10635
    invoke-virtual {p2}, Lcom/android/internal/telephony/Call;->getEarliestConnection()Lcom/android/internal/telephony/Connection;

    move-result-object v1

    .line 10636
    if-eqz v1, :cond_0

    .line 10637
    invoke-virtual {v1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v1

    .line 10638
    instance-of v3, v1, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v3, :cond_1

    .line 10639
    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    move-object p0, v0

    .line 10718
    :cond_0
    :goto_0
    return-void

    .line 10640
    :cond_1
    instance-of v3, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    if-eqz v3, :cond_2

    .line 10641
    check-cast v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;

    iget-object v1, v1, Lcom/android/phone/PhoneUtils$CallerInfoToken;->currentInfo:Lcom/android/internal/telephony/CallerInfo;

    goto :goto_0

    .line 10642
    :cond_2
    if-eqz v2, :cond_0

    .line 10643
    iget-boolean v1, v2, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    if-eqz v1, :cond_6

    iget-object v1, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_6

    .line 10644
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v5, :cond_4

    .line 10645
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10703
    :cond_3
    :goto_1
    const-string v1, "Birthday icon for Outgoing call PhoneApp.canDisplayBirthdayInfotrue"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10704
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Birthday icon for Outgoing call ci.remainedDaysUntilBirthday != -1"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v3, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v5, -0x1

    cmp-long v3, v3, v5

    if-eqz v3, :cond_9

    move v3, v8

    :goto_2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 10705
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    iget-wide v3, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    const-wide/16 v5, -0x1

    cmp-long v1, v3, v5

    if-eqz v1, :cond_0

    .line 10707
    new-array v1, v8, [Ljava/lang/String;

    const-string v3, "%d"

    aput-object v3, v1, v7

    .line 10708
    new-array v3, v8, [Ljava/lang/String;

    iget-wide v4, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v7

    .line 10709
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f070007

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iget-wide v5, v2, Lcom/android/internal/telephony/CallerInfo;->remainedDaysUntilBirthday:J

    long-to-int v2, v5

    aget-object v2, v4, v2

    .line 10710
    iget-object v4, p0, Lcom/android/phone/InVTCallScreen;->mBirthRemainedDays:Landroid/widget/TextView;

    invoke-static {v2, v1, v3}, Landroid/text/TextUtils;->replace(Ljava/lang/CharSequence;[Ljava/lang/String;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10711
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 10712
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mBirthdayLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v7}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_0

    .line 10665
    :cond_4
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v4, :cond_5

    .line 10669
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 10671
    :cond_5
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v8, :cond_3

    .line 10672
    const-string v1, "InVTCallScreen"

    const-string v3, "Incoming Contact Image is Avialable in contacts "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10675
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v3, v2, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_1

    .line 10679
    :cond_6
    const-string v1, "InVTCallScreen"

    const-string v3, "Contact Image is Not Avialable in contacts "

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10685
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v5, :cond_7

    .line 10686
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->outgoingContactImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 10694
    :cond_7
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v4, :cond_8

    .line 10695
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->nearEndImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_1

    .line 10697
    :cond_8
    iget v1, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    if-ne v1, v8, :cond_3

    .line 10698
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->incomingContactImage:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 10700
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mRingingCallFrameAnimation:Landroid/graphics/drawable/AnimationDrawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto/16 :goto_1

    :cond_9
    move v3, v7

    .line 10704
    goto/16 :goto_2
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4
    .parameter
    .parameter

    .prologue
    const/4 v2, 0x1

    const-string v3, "InVTCallScreen"

    .line 3360
    sparse-switch p1, :sswitch_data_0

    .line 3504
    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_5

    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->handleDialerKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v2

    .line 3508
    :goto_0
    return v0

    .line 3362
    :sswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    move-result v0

    .line 3363
    if-nez v0, :cond_1

    .line 3364
    const-string v0, "InVTCallScreen"

    const-string v0, "InVTCallScreen should always handle KEYCODE_CALL in onKeyDown"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    move v0, v2

    .line 3370
    goto :goto_0

    :sswitch_1
    move v0, v2

    .line 3382
    goto :goto_0

    .line 3386
    :sswitch_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 3397
    const-string v0, "InVTCallScreen"

    const-string v0, "VOLUME key: incoming call is ringing! (PhoneWindowManager should have handled this key.)"

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3405
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    .line 3406
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->isRinging()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3411
    const-string v1, "VOLUME key: silence ringer"

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3412
    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->silenceRinger()V

    :cond_2
    move v0, v2

    .line 3417
    goto :goto_0

    .line 3439
    :sswitch_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3440
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3445
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3446
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    move v0, v2

    .line 3447
    goto :goto_0

    .line 3454
    :sswitch_4
    invoke-static {}, Lcom/android/phone/PhoneUtils;->getMute()Z

    move-result v0

    if-nez v0, :cond_3

    move v0, v2

    :goto_1
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->setMute(Z)V

    move v0, v2

    .line 3455
    goto :goto_0

    .line 3454
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 3461
    :sswitch_5
    const-string v0, "----------- InVTCallScreen View dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3463
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 3464
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 3465
    invoke-virtual {v0}, Landroid/view/View;->debug()V

    move v0, v2

    .line 3466
    goto :goto_0

    .line 3471
    :sswitch_6
    const-string v0, "----------- InVTCallScreen call state dump --------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3472
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallState()V

    .line 3473
    invoke-static {}, Lcom/android/phone/PhoneUtils;->dumpCallManager()V

    move v0, v2

    .line 3474
    goto/16 :goto_0

    .line 3480
    :sswitch_7
    const-string v0, "------------ Temp testing -----------------"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    move v0, v2

    .line 3481
    goto/16 :goto_0

    .line 3487
    :sswitch_8
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->hasActiveRingingCall()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 3489
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->handleCallKey()Z

    :cond_4
    move v0, v2

    .line 3491
    goto/16 :goto_0

    .line 3497
    :sswitch_9
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getBaseContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->isAnyKeyMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3498
    const/4 v0, 0x5

    invoke-virtual {p0, v0, p2}, Lcom/android/phone/InVTCallScreen;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move v0, v2

    .line 3499
    goto/16 :goto_0

    .line 3508
    :cond_5
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto/16 :goto_0

    .line 3360
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_8
        0x5 -> :sswitch_0
        0x13 -> :sswitch_9
        0x14 -> :sswitch_9
        0x15 -> :sswitch_9
        0x16 -> :sswitch_9
        0x17 -> :sswitch_9
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
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 3354
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .parameter

    .prologue
    const/4 v3, 0x1

    const-string v4, "InVTCallScreen"

    .line 7338
    const-string v0, "InVTCallScreen"

    const-string v0, "Inside onLongClick condition"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7339
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 7340
    const-string v1, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Value of widgetId"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7341
    packed-switch v0, :pswitch_data_0

    .line 7377
    :goto_0
    return v3

    .line 7353
    :pswitch_0
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->removesurfaceview()V

    .line 7356
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mVTcalltype:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 7357
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->isMO_Disconnect:Z

    .line 7358
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopVTCall()V

    goto :goto_0

    .line 7360
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->internalPhoneHangup()V

    goto :goto_0

    .line 7341
    :pswitch_data_0
    .packed-switch 0x7f08012c
        :pswitch_0
    .end packed-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 3
    .parameter

    .prologue
    .line 2817
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onNewIntent: intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2837
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->setIntent(Landroid/content/Intent;)V

    .line 2847
    invoke-virtual {p0, p1}, Lcom/android/phone/InVTCallScreen;->internalResolveIntent(Landroid/content/Intent;)Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2852
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v1, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v1, :cond_0

    .line 2853
    const-string v0, "InVTCallScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onNewIntent: status "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from internalResolveIntent()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2858
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 6
    .parameter

    .prologue
    const/4 v5, 0x2

    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "InVTCallScreen"

    .line 9648
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 9826
    :cond_0
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    return v0

    .line 9650
    :pswitch_1
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 9653
    :pswitch_2
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onBluetoothClick()V

    goto :goto_0

    .line 9663
    :pswitch_3
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    goto :goto_0

    .line 9676
    :pswitch_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v2}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9677
    :cond_1
    const v0, 0x7f0d023f

    invoke-static {p0, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 9683
    :cond_2
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    .line 9684
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->updateSwitchCameraButton(Z)V

    .line 9685
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->show_camera()V

    goto :goto_0

    .line 9691
    :pswitch_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_3

    .line 9692
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    .line 9700
    :goto_1
    sput-boolean v3, Lcom/android/phone/InVTCallScreen;->nearend_pressed:Z

    .line 9701
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->showDialog(I)V

    goto :goto_0

    .line 9694
    :cond_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isPresetImageEnabled:Z

    if-nez v0, :cond_4

    .line 9695
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingWithPresetImage:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 9697
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutGoingImageHideMe:[Ljava/lang/String;

    invoke-virtual {v0}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mContextMenuStrArrayId:[Ljava/lang/String;

    goto :goto_1

    .line 9704
    :pswitch_6
    const-string v0, "InVTCallScreen"

    const-string v0, "launchin Zoom Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9705
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9706
    invoke-direct {p0, v3}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 9710
    :pswitch_7
    const-string v0, "InVTCallScreen"

    const-string v0, "launchin Brightness Activity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9711
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mSeekBarSelection:I

    .line 9712
    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->launchBrightSB(I)V

    goto :goto_0

    .line 9715
    :pswitch_8
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9716
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9717
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9718
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v5, v1}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 9721
    :pswitch_9
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mBlur_Off:Z

    .line 9722
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mBlurPosition:I

    .line 9723
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    if-eqz v0, :cond_0

    .line 9724
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v5, v2}, Lsiso/vt/VTManager;->SetCameraParams(II)I

    goto/16 :goto_0

    .line 9727
    :pswitch_a
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    .line 9728
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 9729
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already open"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9730
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_5

    .line 9735
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 9736
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9737
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 9738
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->closeDialer(Z)V

    .line 9739
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v2}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    .line 9733
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_2

    .line 9741
    :cond_6
    const-string v0, "InVTCallScreen"

    const-string v0, "Dialer Pad Already Not open"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9742
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v5, :cond_7

    .line 9743
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSC:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 9744
    const v0, 0x7f080133

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    .line 9745
    const v0, 0x7f080134

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    .line 9746
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->rightVerticalLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9747
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->muteFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 9751
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideDialPad:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 9752
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mainLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 9753
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mVTManager:Lsiso/vt/VTManager;

    invoke-virtual {v0, v1}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setVTManagerInstance(Lsiso/vt/VTManager;)V

    .line 9754
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->openDialer(Z)V

    .line 9755
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0, v3}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->setHandleVisible(Z)V

    goto/16 :goto_0

    .line 9749
    :cond_7
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->dialpadLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_3

    .line 9763
    :pswitch_b
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->onSpeakerClick()V

    goto/16 :goto_0

    .line 9771
    :pswitch_c
    const-string v0, "InVTCallScreen"

    const-string v0, "START_RECORDING_FAR_END is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9772
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9773
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9774
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingFarEndView()V

    goto/16 :goto_0

    .line 9777
    :pswitch_d
    const-string v0, "InVTCallScreen"

    const-string v0, "STOP_RECORDING_FAR_END is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9778
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9780
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9781
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingFarEndView()V

    goto/16 :goto_0

    .line 9785
    :pswitch_e
    const-string v0, "InVTCallScreen"

    const-string v0, "Cancel Recording is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9787
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9788
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9789
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingFarEndView()V

    goto/16 :goto_0

    .line 9792
    :pswitch_f
    const-string v0, "InVTCallScreen"

    const-string v0, "START_RECORDING_NEAR_END is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9793
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9794
    iput v3, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9795
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->startRecordingNearEndView()V

    goto/16 :goto_0

    .line 9798
    :pswitch_10
    const-string v0, "InVTCallScreen"

    const-string v0, "STOP_RECORDING_NEAR_END is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9799
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9801
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9802
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->stopRecordingNearEndView()V

    goto/16 :goto_0

    .line 9805
    :pswitch_11
    const-string v0, "InVTCallScreen"

    const-string v0, "Cancel Recording is being clicked"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9807
    iput-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    .line 9808
    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    .line 9809
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->cancelRecordingNearEndView()V

    goto/16 :goto_0

    .line 9648
    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_3
        :pswitch_5
        :pswitch_a
        :pswitch_1
        :pswitch_b
        :pswitch_7
        :pswitch_6
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_9
        :pswitch_c
        :pswitch_e
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_f
        :pswitch_11
        :pswitch_10
        :pswitch_2
    .end packed-switch
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 2
    .parameter
    .parameter

    .prologue
    .line 6785
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

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6789
    if-nez p1, :cond_0

    .line 6794
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onPanelClosed(ILandroid/view/Menu;)V

    .line 6795
    return-void
.end method

.method protected onPause()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 2445
    const-string v2, "onPause()..."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2446
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 2448
    iget-boolean v2, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v2, v6, :cond_0

    .line 2562
    :goto_0
    return-void

    .line 2451
    :cond_0
    iput-boolean v7, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 2461
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    .line 2471
    .local v0, app:Lcom/android/phone/PhoneApp;
    invoke-virtual {v0, v7}, Lcom/android/phone/PhoneApp;->setBeginningCall(Z)V

    .line 2504
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x6c

    invoke-virtual {v2, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_1

    .line 2507
    const-string v2, "DELAYED_CLEANUP_AFTER_DISCONNECT detected, moving UI to background."

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2508
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->endInVTCallScreenSession()V

    .line 2519
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->dismissMenu(Z)V

    .line 2526
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->dismissAllDialogs()V

    .line 2527
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v2

    invoke-virtual {v2, v6}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 2539
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/phone/InVTCallScreen$7;

    invoke-direct {v3, p0, v0}, Lcom/android/phone/InVTCallScreen$7;-><init>(Lcom/android/phone/InVTCallScreen;Lcom/android/phone/PhoneApp;)V

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2547
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v2, v3, :cond_2

    .line 2548
    const-string v2, "statusbar"

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/StatusBarManager;

    .line 2549
    .local v1, statusBar:Landroid/app/StatusBarManager;
    invoke-virtual {v1}, Landroid/app/StatusBarManager;->showCallView()V

    .line 2551
    .end local v1           #statusBar:Landroid/app/StatusBarManager;
    :cond_2
    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->reenableStatusBar()V

    .line 2553
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableKeyGuardLock()V

    .line 2554
    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v2}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v2, v3, :cond_3

    .line 2555
    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    goto :goto_0

    .line 2557
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/phone/InVTCallScreen;->updateKeyguardPolicy(Z)V

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 7
    .parameter

    .prologue
    const v2, 0x7f0d02f6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v6, "InVTCallScreen"

    .line 9442
    const-string v0, "InVTCallScreen"

    const-string v0, "In onPrepareOptionsMenu "

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9444
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsShowMenu:Z

    if-eqz v0, :cond_b

    .line 9445
    iget v0, p0, Lcom/android/phone/InVTCallScreen;->mMenuSelected:I

    packed-switch v0, :pswitch_data_0

    .line 9615
    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    .line 9448
    :pswitch_0
    invoke-interface {p1, v3, v4}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 9450
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 9456
    const/16 v0, 0x35

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9457
    invoke-static {p0}, Lcom/android/phone/PhoneUtils;->isSpeakerOn(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9459
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0d02d9

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    .line 9460
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const v1, 0x7f020270

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9470
    :goto_1
    const/16 v0, 0x32

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9471
    const/16 v0, 0x32

    const v1, 0x7f0d02e1

    invoke-interface {p1, v3, v0, v5, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    .line 9472
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    const v1, 0x7f020278

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9482
    const/16 v0, 0x33

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9483
    const/16 v0, 0x33

    const/4 v1, 0x3

    const v2, 0x7f0d01af

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    .line 9484
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    if-eqz v0, :cond_0

    .line 9485
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDialer:Lcom/android/phone/DTMFTwelveKeyDialerForVT;

    invoke-virtual {v0}, Lcom/android/phone/DTMFTwelveKeyDialerForVT;->isOpened()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 9486
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9491
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    const v1, 0x7f020262

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9493
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mDesableOutGoingMenu:Z

    if-eqz v0, :cond_5

    .line 9494
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9498
    :goto_3
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mHideCheck:Z

    if-eqz v0, :cond_6

    .line 9499
    const-string v0, "InVTCallScreen"

    const-string v0, "Adding HIDE Me to Menu"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9500
    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9501
    const/16 v0, 0x31

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9503
    const/16 v0, 0x31

    const v1, 0x7f0d02d7

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    .line 9504
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    const v1, 0x7f020266

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 9505
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v3}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_2

    .line 9506
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHideMe:Landroid/view/MenuItem;

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 9518
    :cond_2
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAvailable()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 9519
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9520
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9521
    const/16 v0, 0x46

    const/4 v1, 0x5

    const v2, 0x7f0d02e4

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    .line 9523
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchPHSet:Landroid/view/MenuItem;

    const v1, 0x7f020275

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 9464
    :cond_3
    const/16 v0, 0x35

    const/4 v1, 0x6

    const v2, 0x7f0d02da

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    .line 9465
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSpeaker:Landroid/view/MenuItem;

    const v1, 0x7f020271

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_1

    .line 9488
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mKeyPad:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    .line 9496
    :cond_5
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mOutImg:Landroid/view/MenuItem;

    invoke-interface {v0, v4}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    goto/16 :goto_3

    .line 9508
    :cond_6
    const-string v0, "InVTCallScreen"

    const-string v0, "Adding SHOW Me to Menu"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9509
    const/16 v0, 0x31

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9510
    const/16 v0, 0x3c

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9512
    const/16 v0, 0x3c

    const v1, 0x7f0d02d8

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mShowMe:Landroid/view/MenuItem;

    .line 9513
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mShowMe:Landroid/view/MenuItem;

    const v1, 0x7f02026d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto :goto_4

    .line 9525
    :cond_7
    const/16 v0, 0x46

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9526
    const/16 v0, 0x34

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9527
    const/16 v0, 0x34

    const/4 v1, 0x4

    const v2, 0x7f0d02e3

    invoke-interface {p1, v3, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    .line 9529
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSwitchHDSet:Landroid/view/MenuItem;

    const v1, 0x7f020274

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 9549
    :pswitch_1
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 9551
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 9552
    const-string v0, "InVTCallScreen"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "In onPrepareOptionsMenu MENUREC_GROUP"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 9555
    const/16 v0, 0x43

    :try_start_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9556
    const/16 v0, 0x45

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9557
    const/16 v0, 0x44

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9558
    const/16 v0, 0x3e

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9559
    const/16 v0, 0x40

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V

    .line 9560
    const/16 v0, 0x3f

    invoke-interface {p1, v0}, Landroid/view/Menu;->removeItem(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9566
    :goto_5
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isFarEndRecord:Z

    if-eqz v0, :cond_9

    .line 9570
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_8

    .line 9571
    const/16 v0, 0x40

    const v1, 0x7f0d02f3

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    .line 9573
    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 9561
    :catch_0
    move-exception v0

    .line 9562
    const-string v0, "InVTCallScreen"

    const-string v0, "In onPrepareOptionsMenu error in removing record options"

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 9577
    :cond_8
    const/16 v0, 0x3e

    const v1, 0x7f0d02f1

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    .line 9579
    const/16 v0, 0x3f

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 9584
    :cond_9
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mRecord_stop:Z

    if-eqz v0, :cond_a

    .line 9585
    const/16 v0, 0x45

    const v1, 0x7f0d02f3

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mStop:Landroid/view/MenuItem;

    .line 9587
    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 9591
    :cond_a
    const/16 v0, 0x43

    const v1, 0x7f0d02f1

    invoke-interface {p1, v4, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRecording:Landroid/view/MenuItem;

    .line 9593
    const/16 v0, 0x44

    invoke-interface {p1, v5, v0, v4, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCancel:Landroid/view/MenuItem;

    goto/16 :goto_0

    .line 9612
    :cond_b
    invoke-interface {p1, v3, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    .line 9613
    invoke-interface {p1, v5, v3}, Landroid/view/Menu;->setGroupVisible(IZ)V

    goto/16 :goto_0

    .line 9445
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onResume()V
    .locals 7

    .prologue
    const/16 v5, 0x70

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "statusbar"

    .line 2226
    const-string v0, "onResume()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2227
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 2229
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v0, v3, :cond_1

    .line 2438
    :cond_0
    :goto_0
    return-void

    .line 2233
    :cond_1
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/phone/PhoneApp;->updateVTDuringCallWakeState(Z)V

    .line 2234
    iput-boolean v3, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    .line 2237
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v1

    .line 2248
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->isBluetoothAudioConnected()Z

    move-result v0

    .line 2250
    sget-boolean v2, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v2, :cond_7

    .line 2251
    const-string v2, "onResume(): Dock Station is connected, UI set to Landscape "

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2252
    const/4 v2, 0x4

    invoke-virtual {p0, v2}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    .line 2258
    :goto_1
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Display;->getOrientation()I

    .line 2260
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iput v2, p0, Lcom/android/phone/InVTCallScreen;->mOrientation:I

    .line 2262
    if-eqz v0, :cond_8

    .line 2263
    const-string v0, "onResume(): Bluetooth is connected "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2264
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    .line 2275
    :goto_2
    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->disableStatusBar()V

    .line 2285
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 2287
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->OFFHOOK:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_2

    .line 2288
    const-string v0, "statusbar"

    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/StatusBarManager;

    .line 2305
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: initial status = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2306
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v2, :cond_9

    .line 2308
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "- onResume: failure during startup: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2314
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->handleStartupError(Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;)V

    .line 2320
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallInitialStatus:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    .line 2333
    :goto_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->OTA_ENDED:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mInVTCallScreenMode:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->EMPTY:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    if-eq v0, v2, :cond_3

    .line 2337
    sget-object v0, Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;->NORMAL:Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->setInVTCallScreenMode(Lcom/android/phone/InVTCallScreen$InVTCallScreenMode;)V

    .line 2344
    :cond_3
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->clearDisconnected()V

    .line 2346
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->syncWithPhoneState()Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    move-result-object v0

    .line 2347
    sget-object v2, Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;->SUCCESS:Lcom/android/phone/InVTCallScreen$InVTCallInitStatus;

    if-eq v0, v2, :cond_4

    .line 2349
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "- syncWithPhoneState failed! status = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2375
    :cond_4
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/Phone$State;->RINGING:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v2, :cond_a

    .line 2392
    const-string v0, "- posting ALLOW_SCREEN_ON message..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2393
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 2394
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 2424
    :goto_4
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    const-class v1, Lcom/android/phone/InVTCallScreen;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/phone/Profiler;->profileViewCreate(Landroid/view/Window;Ljava/lang/String;)V

    .line 2425
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->getAllowCamera(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mMP:Landroid/app/admin/DevicePolicyManager$MiscPolicy;

    invoke-virtual {v0, v4}, Landroid/app/admin/DevicePolicyManager$MiscPolicy;->isCameraEnabled(Z)Z

    move-result v0

    if-nez v0, :cond_6

    .line 2426
    :cond_5
    const-string v0, "Camera desabled due DPM\t- INTENT_MSG_SECURITY"

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2430
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->enableHideMeState()V

    .line 2432
    :cond_6
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/NotificationMgr;->getStatusBarMgr()Lcom/android/phone/NotificationMgr$StatusBarMgr;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/android/phone/NotificationMgr$StatusBarMgr;->enableExpandedView(Z)V

    .line 2433
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-eq v0, v1, :cond_0

    .line 2434
    const-string v0, "statusbar"

    invoke-virtual {p0, v6}, Lcom/android/phone/InVTCallScreen;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/StatusBarManager;

    .line 2435
    invoke-virtual {p0}, Landroid/app/StatusBarManager;->hideCallView()V

    goto/16 :goto_0

    .line 2254
    :cond_7
    const-string v2, "onResume(): Dock Station is connected, UI set to Portrait"

    invoke-direct {p0, v2}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2255
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto/16 :goto_1

    .line 2266
    :cond_8
    const-string v0, "onResume(): Bluetooth is Not connected "

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2267
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setVolumeControlStream(I)V

    goto/16 :goto_2

    .line 2322
    :cond_9
    invoke-direct {p0}, Lcom/android/phone/InVTCallScreen;->initInVTCallScreen()V

    goto/16 :goto_3

    .line 2406
    :cond_a
    invoke-virtual {v1, v4}, Lcom/android/phone/PhoneApp;->preventScreenOn(Z)V

    goto :goto_4
.end method

.method protected onStop()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 2566
    const-string v0, "onStop()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2567
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 2569
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->bLowBat:Z

    if-ne v0, v3, :cond_1

    .line 2588
    :cond_0
    :goto_0
    return-void

    .line 2573
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-interface {v0}, Lcom/android/internal/telephony/Phone;->getState()Lcom/android/internal/telephony/Phone$State;

    move-result-object v0

    .line 2575
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStop: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2577
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    if-eqz v1, :cond_2

    .line 2578
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCallTime:Lcom/android/phone/CallTime;

    invoke-virtual {v1}, Lcom/android/phone/CallTime;->cancelTimer()V

    .line 2581
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/Phone$State;->IDLE:Lcom/android/internal/telephony/Phone$State;

    if-ne v0, v1, :cond_0

    .line 2582
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    .line 2584
    const-string v0, "- onStop: calling finish() to clear activity history..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {p0, v3}, Lcom/android/phone/InVTCallScreen;->moveTaskToBack(Z)Z

    goto :goto_0
.end method

.method onSuppServiceFailed(Landroid/os/AsyncResult;)V
    .locals 4
    .parameter

    .prologue
    const/4 v3, 0x0

    .line 3516
    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->mIsForegroundActivity:Z

    if-nez v0, :cond_1

    .line 3518
    const-string v0, "onSuppServiceFailed: while not in foreground, so return without doing anything."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3568
    :cond_0
    :goto_0
    return-void

    .line 3521
    :cond_1
    iget-object v0, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/telephony/Phone$SuppService;

    .line 3523
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSuppServiceFailed: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3525
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/Call;->isVideoCall()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3529
    sget-object v1, Lcom/android/phone/InVTCallScreen$51;->$SwitchMap$com$android$internal$telephony$Phone$SuppService:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone$SuppService;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    .line 3545
    const v0, 0x7f0d019a

    .line 3553
    :goto_1
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_2

    .line 3555
    const-string v1, "- DISMISSING mSuppServiceFailureDialog."

    invoke-direct {p0, v1}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3556
    iget-object v1, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 3559
    iput-object v3, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3562
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

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    .line 3565
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 3567
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mSuppServiceFailureDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 3533
    :pswitch_0
    const v0, 0x7f0d019f

    .line 3534
    goto :goto_1

    .line 3538
    :pswitch_1
    const v0, 0x7f0d01a0

    .line 3539
    goto :goto_1

    .line 3529
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onTickForCallTimeElapsed(J)V
    .locals 4
    .parameter "timeElapsed"

    .prologue
    const-wide/16 v2, 0x0

    .line 2055
    cmp-long v0, p1, v2

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x3c

    rem-long v0, p1, v0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 2058
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    iget-object v0, v0, Lcom/android/phone/PhoneApp;->notifier:Lcom/android/phone/CallNotifier;

    invoke-virtual {v0}, Lcom/android/phone/CallNotifier;->playMinuteMinder()V

    .line 2060
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/phone/InVTCallScreen;->updateElapsedTimeWidget(J)V

    .line 2061
    return-void
.end method

.method public onUserInteraction()V
    .locals 0

    .prologue
    .line 7056
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 2
    .parameter

    .prologue
    .line 3301
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 3304
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

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 3310
    return-void
.end method

.method requestUpdateBluetoothIndication()V
    .locals 2

    .prologue
    const/16 v1, 0x72

    .line 6935
    const-string v0, "requestUpdateBluetoothIndication()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6939
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6940
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 6941
    return-void
.end method

.method requestUpdateDockUi()V
    .locals 1

    .prologue
    .line 6676
    const-string v0, "requestUpdateDockUi()..."

    invoke-direct {p0, v0}, Lcom/android/phone/InVTCallScreen;->log(Ljava/lang/String;)V

    .line 6683
    sget-boolean v0, Lcom/android/phone/PhoneApp;->mIsDockConnected:Z

    if-eqz v0, :cond_0

    .line 6685
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    .line 6692
    :goto_0
    return-void

    .line 6688
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/phone/InVTCallScreen;->setRequestedOrientation(I)V

    goto :goto_0
.end method

.method setPhone(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 2155
    iput-object p1, p0, Lcom/android/phone/InVTCallScreen;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 2159
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getActiveFgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mForegroundCall:Lcom/android/internal/telephony/Call;

    .line 2160
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveBgCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mBackgroundCall:Lcom/android/internal/telephony/Call;

    .line 2161
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mCM:Lcom/android/internal/telephony/CallManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CallManager;->getFirstActiveRingingCall()Lcom/android/internal/telephony/Call;

    move-result-object v0

    iput-object v0, p0, Lcom/android/phone/InVTCallScreen;->mRingingCall:Lcom/android/internal/telephony/Call;

    .line 2162
    return-void
.end method

.method updateKeyguardPolicy(Z)V
    .locals 2
    .parameter

    .prologue
    const/high16 v1, 0x40

    .line 2712
    if-eqz p1, :cond_0

    .line 2713
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 2717
    :goto_0
    return-void

    .line 2715
    :cond_0
    invoke-virtual {p0}, Lcom/android/phone/InVTCallScreen;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0
.end method

.method public updateRecordTimeUIFarEnd(J)V
    .locals 3
    .parameter "recordTimeForNearendOrFarEnd"

    .prologue
    .line 2125
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2127
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2133
    :cond_0
    :goto_0
    return-void

    .line 2129
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2131
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public updateRecordTimeUINearEnd(J)V
    .locals 3
    .parameter "recordTimeForNearendOrFarEnd"

    .prologue
    .line 2137
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/phone/InVTCallScreen;->isSurfaceViewSwipe:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 2139
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTimeNearEnd:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2145
    :cond_0
    :goto_0
    return-void

    .line 2141
    :cond_1
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 2143
    iget-object v0, p0, Lcom/android/phone/InVTCallScreen;->mVideoRecordTime:Landroid/widget/TextView;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    invoke-direct {p0, v1, v2}, Lcom/android/phone/InVTCallScreen;->formatTimeString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
