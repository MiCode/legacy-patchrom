.class public abstract Lcom/android/internal/policy/impl/KeyguardViewBase;
.super Landroid/widget/FrameLayout;
.source "KeyguardViewBase.java"


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 45
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 48
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mForegroundInPadding:Z

    .line 49
    const/16 v0, 0x37

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setForegroundGravity(I)V

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10803a7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->setForeground(Landroid/graphics/drawable/Drawable;)V

    .line 53
    return-void
.end method

.method private interceptMediaKey(Landroid/view/KeyEvent;)Z
    .locals 9
    .parameter "event"

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    const-string v8, "android.intent.extra.KEY_EVENT"

    const-string v7, "android.intent.action.MEDIA_BUTTON"

    .line 142
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    .line 143
    .local v1, keyCode:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_6

    .line 144
    sparse-switch v1, :sswitch_data_0

    :cond_0
    :goto_0
    move v2, v6

    .line 206
    :goto_1
    return v2

    .line 148
    :sswitch_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v2, :cond_1

    .line 149
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 152
    :cond_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v2

    if-eqz v2, :cond_2

    move v2, v5

    .line 154
    goto :goto_1

    .line 162
    :cond_2
    :sswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 163
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 164
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v2, v5

    .line 165
    goto :goto_1

    .line 170
    .end local v0           #intent:Landroid/content/Intent;
    :sswitch_2
    monitor-enter p0

    .line 171
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    if-nez v2, :cond_3

    .line 172
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    .line 175
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 178
    iget-object v2, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mAudioManager:Landroid/media/AudioManager;

    const/4 v3, 0x3

    const/16 v4, 0x18

    if-ne v1, v4, :cond_5

    move v4, v5

    :goto_2
    invoke-virtual {v2, v3, v4, v6}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    :cond_4
    move v2, v5

    .line 186
    goto :goto_1

    .line 175
    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    .line 178
    :cond_5
    const/4 v4, -0x1

    goto :goto_2

    .line 189
    :cond_6
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-ne v2, v5, :cond_0

    .line 190
    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 199
    :pswitch_1
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v0, v7, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    .restart local v0       #intent:Landroid/content/Intent;
    const-string v2, "android.intent.extra.KEY_EVENT"

    invoke-virtual {v0, v8, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 201
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/KeyguardViewBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v0, v4}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    move v2, v5

    .line 202
    goto/16 :goto_1

    .line 144
    nop

    :sswitch_data_0
    .sparse-switch
        0x18 -> :sswitch_2
        0x19 -> :sswitch_2
        0x4f -> :sswitch_1
        0x55 -> :sswitch_0
        0x56 -> :sswitch_1
        0x57 -> :sswitch_1
        0x58 -> :sswitch_1
        0x59 -> :sswitch_1
        0x5a -> :sswitch_1
    .end sparse-switch

    .line 190
    :pswitch_data_0
    .packed-switch 0x4f
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    const/4 v1, 0x0

    .line 120
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 130
    :goto_0
    return v0

    .line 123
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 130
    const/4 v0, 0x1

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 128
    goto :goto_0

    .line 123
    :pswitch_data_0
    .packed-switch 0x13
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public abstract cleanUp()V
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 109
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->shouldEventKeepScreenOnWhileKeyguardShowing(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    invoke-interface {v0}, Lcom/android/internal/policy/impl/KeyguardViewCallback;->pokeWakelock()V

    .line 113
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/KeyguardViewBase;->interceptMediaKey(Landroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 114
    const/4 v0, 0x1

    .line 116
    :goto_0
    return v0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public getCallback()Lcom/android/internal/policy/impl/KeyguardViewCallback;
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    return-object v0
.end method

.method public abstract onScreenTurnedOff()V
.end method

.method public abstract onScreenTurnedOn()V
.end method

.method public abstract reset()V
.end method

.method setCallback(Lcom/android/internal/policy/impl/KeyguardViewCallback;)V
    .locals 0
    .parameter "callback"

    .prologue
    .line 57
    iput-object p1, p0, Lcom/android/internal/policy/impl/KeyguardViewBase;->mCallback:Lcom/android/internal/policy/impl/KeyguardViewCallback;

    .line 58
    return-void
.end method

.method public abstract verifyUnlock()V
.end method

.method public abstract wakeWhenReadyTq(I)V
.end method
