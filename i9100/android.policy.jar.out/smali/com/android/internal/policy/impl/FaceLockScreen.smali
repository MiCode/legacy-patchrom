.class Lcom/android/internal/policy/impl/FaceLockScreen;
.super Landroid/widget/LinearLayout;
.source "FaceLockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$InfoCallback;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$SimStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/policy/impl/FaceLockScreen$1;,
        Lcom/android/internal/policy/impl/FaceLockScreen$Status;
    }
.end annotation


# static fields
.field private static final COMMEND_NONE:I = 0x0

.field private static final COMMEND_PAUSE:I = 0x2

.field private static final COMMEND_RESUME:I = 0x1

.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "FaceLockScreen"


# instance fields
.field private isstart:Z

.field private mAlternativeButton:Landroid/widget/Button;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCameraControllThread:Ljava/lang/Thread;

.field private mCommendState:I

.field private mDate:Landroid/widget/TextView;

.field private mDateFormatString:Ljava/lang/String;

.field private mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

.field private mEmergencyCallButton:Landroid/widget/Button;

.field private mFaceDetectionFrame:Landroid/widget/FrameLayout;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mPowerManage:Landroid/os/PowerManager;

.field private mPreview:Lcom/android/internal/policy/impl/face/Preview;

.field private mStatus:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

.field private mTime:Landroid/widget/TextView;

.field private mTimeFormat:Ljava/text/DateFormat;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private mtmpCamera:Landroid/hardware/Camera;

.field private threadInterupt:Z

.field private usedcamera:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    const-string v7, "FaceLockScreen"

    .line 129
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 56
    sget-object v2, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mStatus:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    .line 76
    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mtmpCamera:Landroid/hardware/Camera;

    .line 81
    iput v3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCommendState:I

    .line 83
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->threadInterupt:Z

    .line 84
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->usedcamera:Z

    .line 85
    iput-boolean v3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->isstart:Z

    .line 86
    iput-object v5, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCameraControllThread:Ljava/lang/Thread;

    .line 131
    const-string v2, "FaceLockScreen"

    const-string v2, "FaceLockScreen()"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    const-string v2, "FaceLockScreen"

    const-string v2, "Camera open test"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Landroid/hardware/Camera;->open(I)Landroid/hardware/Camera;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mtmpCamera:Landroid/hardware/Camera;

    .line 136
    const-string v2, "FaceLockScreen"

    const-string v3, "Camera.open ==="

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->usedcamera:Z

    .line 138
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mtmpCamera:Landroid/hardware/Camera;

    invoke-virtual {v2}, Landroid/hardware/Camera;->release()V

    .line 139
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mtmpCamera:Landroid/hardware/Camera;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    iput-object p2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 146
    iput-object p3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 147
    iput-object p4, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 149
    const-string v2, "power"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPowerManage:Landroid/os/PowerManager;

    .line 151
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 152
    .local v1, inflater:Landroid/view/LayoutInflater;
    const v2, 0x1090078

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 154
    const v2, 0x1020270

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mFaceDetectionFrame:Landroid/widget/FrameLayout;

    .line 156
    const v2, 0x10201ed

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    .line 157
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    const v3, 0x1040325

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(I)V

    .line 159
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 161
    const v2, 0x1020271

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mAlternativeButton:Landroid/widget/Button;

    .line 162
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mAlternativeButton:Landroid/widget/Button;

    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mAlternativeButton:Landroid/widget/Button;

    const-string v3, "Unlock"

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 165
    const v2, 0x102005c

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FaceLockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDate:Landroid/widget/TextView;

    .line 167
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/FaceLockScreen;->setFocusable(Z)V

    .line 168
    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/FaceLockScreen;->setFocusableInTouchMode(Z)V

    .line 169
    const/high16 v2, 0x6

    invoke-virtual {p0, v2}, Lcom/android/internal/policy/impl/FaceLockScreen;->setDescendantFocusability(I)V

    .line 171
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    if-nez v2, :cond_0

    .line 172
    new-instance v2, Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lcom/android/internal/policy/impl/face/DrawOnTop;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    .line 173
    new-instance v2, Lcom/android/internal/policy/impl/face/Preview;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v5, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget-boolean v6, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->usedcamera:Z

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/android/internal/policy/impl/face/Preview;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/face/DrawOnTop;Z)V

    iput-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    .line 174
    const-string v2, "FaceLockScreen"

    const-string v2, "Create mPreview"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    invoke-virtual {v2}, Lcom/android/internal/policy/impl/face/Preview;->CreatePreview()V

    .line 176
    const-string v2, "FaceLockScreen"

    const-string v2, "Init Engine"

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/internal/policy/impl/FaceLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 182
    return-void

    .line 140
    .end local v1           #inflater:Landroid/view/LayoutInflater;
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 141
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "FaceLockScreen"

    const-string v2, "Camera.open fail ==="

    invoke-static {v7, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iput-boolean v4, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->usedcamera:Z

    goto/16 :goto_0
.end method

.method private getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/FaceLockScreen$Status;
    .locals 3
    .parameter "simState"

    .prologue
    .line 331
    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->isDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccCard$State;->ABSENT:Lcom/android/internal/telephony/IccCard$State;

    if-ne p1, v1, :cond_0

    const/4 v1, 0x1

    move v0, v1

    .line 333
    .local v0, missingAndNotProvisioned:Z
    :goto_0
    if-eqz v0, :cond_1

    .line 334
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    .line 353
    :goto_1
    return-object v1

    .line 331
    .end local v0           #missingAndNotProvisioned:Z
    :cond_0
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0

    .line 337
    .restart local v0       #missingAndNotProvisioned:Z
    :cond_1
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$1;->$SwitchMap$com$android$internal$telephony$IccCard$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCard$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 353
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    goto :goto_1

    .line 339
    :pswitch_0
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    goto :goto_1

    .line 341
    :pswitch_1
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->SimMissingLocked:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    goto :goto_1

    .line 343
    :pswitch_2
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    goto :goto_1

    .line 345
    :pswitch_3
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->SimLocked:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    goto :goto_1

    .line 347
    :pswitch_4
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->SimPukLocked:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    goto :goto_1

    .line 349
    :pswitch_5
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->Normal:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    goto :goto_1

    .line 351
    :pswitch_6
    sget-object v1, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->SimMissing:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    goto :goto_1

    .line 337
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
    .end packed-switch
.end method

.method private refreshTimeAndDateDisplay()V
    .locals 3

    .prologue
    .line 296
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDateFormatString:Ljava/lang/String;

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-static {v1, v2}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 297
    return-void
.end method

.method private resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V
    .locals 2
    .parameter "updateMonitor"

    .prologue
    .line 318
    invoke-virtual {p1}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->getSimState()Lcom/android/internal/telephony/IccCard$State;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FaceLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mStatus:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    .line 320
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mTimeFormat:Ljava/text/DateFormat;

    .line 321
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/FaceLockScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x10400a9

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDateFormatString:Ljava/lang/String;

    .line 322
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceLockScreen;->refreshTimeAndDateDisplay()V

    .line 324
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mStatus:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FaceLockScreen;->updateLayout(Lcom/android/internal/policy/impl/FaceLockScreen$Status;)V

    .line 325
    return-void
.end method

.method private updateLayout(Lcom/android/internal/policy/impl/FaceLockScreen$Status;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 361
    const-string v0, "FaceLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateLayout: status="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    sget-object v0, Lcom/android/internal/policy/impl/FaceLockScreen$1;->$SwitchMap$com$android$internal$policy$impl$FaceLockScreen$Status:[I

    invoke-virtual {p1}, Lcom/android/internal/policy/impl/FaceLockScreen$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 387
    :pswitch_0
    return-void

    .line 365
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public cleanUp()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    const-string v2, "FaceLockScreen"

    .line 256
    const-string v0, "FaceLockScreen"

    const-string v0, "cleanUp()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->threadInterupt:Z

    .line 260
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/face/Preview;->DestroyPreview()V

    .line 262
    iput-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    .line 263
    iput-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    .line 264
    const-string v0, "FaceLockScreen"

    const-string v0, "Destroy preview"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    iput-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 267
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 268
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 252
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 280
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 281
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 390
    const-string v0, "FaceLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    .line 397
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 398
    return-void

    .line 393
    :cond_1
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mAlternativeButton:Landroid/widget/Button;

    if-ne p1, v0, :cond_0

    .line 394
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->threadInterupt:Z

    .line 395
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->goToUnlockScreen()V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 276
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 277
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 271
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 272
    const/4 v0, 0x0

    return v0
.end method

.method public onPause()V
    .locals 3

    .prologue
    const-string v2, "FaceLockScreen"

    .line 237
    const-string v0, "FaceLockScreen"

    const-string v0, "onPause()"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCommendState:I

    .line 242
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->isstart:Z

    if-eqz v0, :cond_0

    .line 243
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->isstart:Z

    .line 244
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mFaceDetectionFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 245
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mFaceDetectionFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 246
    const-string v0, "FaceLockScreen"

    const-string v0, "remove view"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    :cond_0
    return-void
.end method

.method public onPhoneStateChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "newState"

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 309
    return-void
.end method

.method public onRefreshBatteryInfo(ZZI)V
    .locals 0
    .parameter "showBatteryInfo"
    .parameter "pluggedIn"
    .parameter "batteryLevel"

    .prologue
    .line 285
    return-void
.end method

.method public onRefreshCarrierInfo(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "plmn"
    .parameter "spn"

    .prologue
    .line 301
    return-void
.end method

.method public onResume()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const-string v5, "FaceLockScreen"

    .line 212
    const-string v0, "FaceLockScreen"

    const-string v0, "onResume()"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FaceLockScreen;->resetStatusInfo(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;)V

    .line 214
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mEmergencyCallButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->updateEmergencyCallButtonState(Landroid/widget/Button;)V

    .line 216
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPowerManage:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->isstart:Z

    if-nez v0, :cond_1

    .line 218
    iput-boolean v6, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->isstart:Z

    .line 219
    const-string v0, "FaceLockScreen"

    const-string v0, "Screeon ON"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    if-nez v0, :cond_0

    .line 221
    new-instance v0, Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/face/DrawOnTop;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    .line 222
    new-instance v0, Lcom/android/internal/policy/impl/face/Preview;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    iget-object v3, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    iget-boolean v4, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->usedcamera:Z

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/internal/policy/impl/face/Preview;-><init>(Landroid/content/Context;Lcom/android/internal/policy/impl/KeyguardScreenCallback;Lcom/android/internal/policy/impl/face/DrawOnTop;Z)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    .line 223
    const-string v0, "FaceLockScreen"

    const-string v0, "Create mPreview"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/face/Preview;->CreatePreview()V

    .line 225
    const-string v0, "FaceLockScreen"

    const-string v0, "Init Engine"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mFaceDetectionFrame:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 228
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mFaceDetectionFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mPreview:Lcom/android/internal/policy/impl/face/Preview;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 229
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mFaceDetectionFrame:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mDrawOnTop:Lcom/android/internal/policy/impl/face/DrawOnTop;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 230
    const-string v0, "FaceLockScreen"

    const-string v0, "add View"

    invoke-static {v5, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iput v6, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mCommendState:I

    .line 234
    :cond_1
    return-void
.end method

.method public onRingerModeChanged(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 305
    return-void
.end method

.method public onSimStateChanged(Lcom/android/internal/telephony/IccCard$State;)V
    .locals 3
    .parameter "simState"

    .prologue
    .line 312
    const-string v0, "FaceLockScreen"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSimStateChanged("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 313
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/FaceLockScreen;->getCurrentStatus(Lcom/android/internal/telephony/IccCard$State;)Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mStatus:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    .line 314
    iget-object v0, p0, Lcom/android/internal/policy/impl/FaceLockScreen;->mStatus:Lcom/android/internal/policy/impl/FaceLockScreen$Status;

    invoke-direct {p0, v0}, Lcom/android/internal/policy/impl/FaceLockScreen;->updateLayout(Lcom/android/internal/policy/impl/FaceLockScreen$Status;)V

    .line 315
    return-void
.end method

.method public onTimeChanged()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/android/internal/policy/impl/FaceLockScreen;->refreshTimeAndDateDisplay()V

    .line 293
    return-void
.end method

.method public onUpdateBatteryInfo(II)V
    .locals 0
    .parameter "batteryInfoStatus"
    .parameter "plugIn"

    .prologue
    .line 289
    return-void
.end method
