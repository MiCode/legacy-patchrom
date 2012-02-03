.class public Lcom/android/internal/policy/impl/PcwUnlockScreen;
.super Landroid/widget/RelativeLayout;
.source "PcwUnlockScreen.java"

# interfaces
.implements Lcom/android/internal/policy/impl/KeyguardScreen;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;


# static fields
.field private static final DBG:Z = true

.field public static final PCW_UNLOCKED_ACTION:Ljava/lang/String; = "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

.field private static final TAG:Ljava/lang/String; = "PcwUnlockScreen"


# instance fields
.field ad:Landroid/app/AlertDialog;

.field errorDlg:Landroid/app/AlertDialog;

.field private mCall:Landroid/widget/Button;

.field private final mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

.field private mCancel:Landroid/widget/Button;

.field private final mContext:Landroid/content/Context;

.field private mEmergencyCall:Landroid/widget/Button;

.field private mHandler:Landroid/os/Handler;

.field private mLockMessage:Landroid/widget/TextView;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mLockstr:Landroid/widget/TextView;

.field private mOk:Landroid/widget/Button;

.field private mPassword:Landroid/widget/EditText;

.field private mPhoneNumer:Landroid/widget/TextView;

.field private mPhoneowner:Landroid/widget/TextView;

.field private mUnlock:Landroid/widget/Button;

.field private final mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

.field private phoneNumber:Ljava/lang/String;

.field pwdDialog:Landroid/app/AlertDialog$Builder;

.field private r:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;Lcom/android/internal/policy/impl/KeyguardScreenCallback;)V
    .locals 8
    .parameter "context"
    .parameter "lockPatternUtils"
    .parameter "updateMonitor"
    .parameter "callback"

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v7, "PcwUnlockScreen"

    .line 104
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 84
    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    .line 86
    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    .line 88
    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    .line 94
    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    .line 96
    new-instance v4, Lcom/android/internal/policy/impl/PcwUnlockScreen$1;

    invoke-direct {v4, p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen$1;-><init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    .line 106
    iput-object p1, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    .line 107
    iput-object p4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    .line 108
    iput-object p3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    .line 109
    iput-object p2, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 111
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 112
    .local v2, inflater:Landroid/view/LayoutInflater;
    const v4, 0x1090080

    invoke-virtual {v2, v4, p0, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 114
    const v4, 0x1020294

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockstr:Landroid/widget/TextView;

    .line 115
    const v4, 0x1020296

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    .line 117
    const v4, 0x1020298

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    .line 119
    const v4, 0x10201ed

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    .line 120
    const v4, 0x1020299

    invoke-virtual {p0, v4}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/Button;

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    .line 123
    const-string v4, "PcwUnlockScreen"

    const-string v4, "create PcwUnlockScreen"

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v0, 0x0

    .line 127
    .local v0, LockMessage:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v5, 0x1040484

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 128
    .local v1, btnText:Ljava/lang/String;
    const-string v3, "\n"

    .line 131
    .local v3, newLine:Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_phone"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    .line 133
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 134
    :cond_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 135
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 142
    :goto_0
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "lock_pcw_Message"

    invoke-static {v4, v5}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 145
    :cond_1
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 150
    :goto_1
    const-string v4, "PcwUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btnText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLockMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v7, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    invoke-virtual {v4, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 186
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v4, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->registerPcwInfoCallbacks(Lcom/android/internal/policy/impl/KeyguardUpdateMonitor$PcwInfoChangeCallback;)V

    .line 188
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->setFocusable(Z)V

    .line 190
    invoke-virtual {p0, v6}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->setFocusableInTouchMode(Z)V

    .line 192
    return-void

    .line 137
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 138
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 139
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v4, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 147
    :cond_3
    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/PcwUnlockScreen;)Lcom/android/internal/policy/impl/KeyguardScreenCallback;
    .locals 1
    .parameter "x0"

    .prologue
    .line 46
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    return-object v0
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .prologue
    .line 330
    iget-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUpdateMonitor:Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;

    invoke-virtual {v0, p0}, Lcom/android/internal/policy/impl/KeyguardUpdateMonitor;->removeCallback(Ljava/lang/Object;)V

    .line 331
    return-void
.end method

.method public needsInput()Z
    .locals 1

    .prologue
    .line 315
    const/4 v0, 0x0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 12
    .parameter "v"

    .prologue
    .line 196
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->pokeWakelock()V

    .line 198
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    if-ne p1, v8, :cond_3

    .line 199
    new-instance v4, Landroid/content/Intent;

    const-string v8, "android.intent.action.CALL"

    const-string v9, "tel"

    iget-object v10, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    const/4 v11, 0x0

    invoke-static {v9, v10, v11}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-direct {v4, v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 200
    .local v4, intent:Landroid/content/Intent;
    const/high16 v8, 0x1000

    invoke-virtual {v4, v8}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 202
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 302
    .end local v4           #intent:Landroid/content/Intent;
    :cond_0
    :goto_0
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCancel:Landroid/widget/Button;

    if-ne p1, v8, :cond_2

    .line 304
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v1

    .line 305
    .local v1, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v1, :cond_1

    .line 306
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v8

    const/4 v9, 0x0

    invoke-virtual {v1, v8, v9}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 309
    :cond_1
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 311
    .end local v1           #imm:Landroid/view/inputmethod/InputMethodManager;
    :cond_2
    :goto_1
    return-void

    .line 204
    :cond_3
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mEmergencyCall:Landroid/widget/Button;

    if-ne p1, v8, :cond_4

    .line 205
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    invoke-interface {v8}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->takeEmergencyCallAction()V

    goto :goto_0

    .line 206
    :cond_4
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mUnlock:Landroid/widget/Button;

    if-ne p1, v8, :cond_7

    .line 207
    const/4 v7, 0x0

    .line 209
    .local v7, unlockView:Landroid/view/View;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 210
    .local v2, inflater2:Landroid/view/LayoutInflater;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v9, 0x109007f

    const/4 v10, 0x0

    invoke-static {v8, v9, v10}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 212
    .local v5, layout:Landroid/view/View;
    const v8, 0x102028e

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    .line 213
    const v8, 0x1020290

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mOk:Landroid/widget/Button;

    .line 214
    const v8, 0x1020291

    invoke-virtual {v5, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCancel:Landroid/widget/Button;

    .line 216
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mOk:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 217
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCancel:Landroid/widget/Button;

    invoke-virtual {v8, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 219
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v9, Lcom/android/internal/policy/impl/PcwUnlockScreen$2;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen$2;-><init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 235
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    if-nez v8, :cond_5

    .line 236
    const-string v8, "PcwUnlockScreen"

    const-string v9, "findViewById: mPassword = null"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 241
    :cond_5
    const-string v8, "PcwUnlockScreen"

    const-string v9, "Create PCWPassword Dialog"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    new-instance v8, Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    .line 244
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v10, 0x10404cc

    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 245
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 246
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 248
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    if-eqz v8, :cond_6

    .line 249
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 251
    :cond_6
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->pwdDialog:Landroid/app/AlertDialog$Builder;

    invoke-virtual {v8}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    .line 252
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 253
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    .line 256
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    new-instance v9, Lcom/android/internal/policy/impl/PcwUnlockScreen$3;

    invoke-direct {v9, p0}, Lcom/android/internal/policy/impl/PcwUnlockScreen$3;-><init>(Lcom/android/internal/policy/impl/PcwUnlockScreen;)V

    invoke-virtual {v8, v9}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    goto/16 :goto_0

    .line 265
    .end local v2           #inflater2:Landroid/view/LayoutInflater;
    .end local v5           #layout:Landroid/view/View;
    .end local v7           #unlockView:Landroid/view/View;
    :cond_7
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mOk:Landroid/widget/Button;

    if-ne p1, v8, :cond_0

    .line 266
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mPassword:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 268
    .local v3, inputPassword:Ljava/lang/String;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v8, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPcwPassword(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 270
    const-string v8, "PcwUnlockScreen"

    const-string v9, "setPositiveButton ClickListener: checkPcwPassword success"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    new-instance v9, Landroid/content/Intent;

    const-string v10, "com.android.internal.policy.impl.Keyguard.PCW_UNLOCKED"

    invoke-direct {v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v8, v9}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 273
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_pcw_enabled"

    const-string v10, "10"

    invoke-static {v8, v9, v10}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 276
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string v9, "lock_pcw_enabled"

    invoke-static {v8, v9}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 278
    .local v6, state:Ljava/lang/String;
    const-string v8, "PcwUnlockScreen"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "pcw state=: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->ad:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 281
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    invoke-virtual {v8, v9}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 282
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCallback:Lcom/android/internal/policy/impl/KeyguardScreenCallback;

    const/4 v9, 0x1

    invoke-interface {v8, v9}, Lcom/android/internal/policy/impl/KeyguardScreenCallback;->keyguardDone(Z)V

    goto/16 :goto_0

    .line 285
    .end local v6           #state:Ljava/lang/String;
    :cond_8
    const-string v8, "PcwUnlockScreen"

    const-string v9, "setPositiveButton ClickListener: checkPcwPassword fail"

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mHandler:Landroid/os/Handler;

    iget-object v9, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->r:Ljava/lang/Runnable;

    const-wide/16 v10, 0x3e8

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 289
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-direct {v0, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 290
    .local v0, errorDialog:Landroid/app/AlertDialog$Builder;
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v9, 0x10404cd

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 292
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    if-eqz v8, :cond_9

    .line 293
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->dismiss()V

    .line 295
    :cond_9
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v8

    iput-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    .line 296
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v8

    const/16 v9, 0x7d9

    invoke-virtual {v8, v9}, Landroid/view/Window;->setType(I)V

    .line 297
    iget-object v8, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->errorDlg:Landroid/app/AlertDialog;

    invoke-virtual {v8}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 321
    return-void
.end method

.method public onPcwInfoChanged()V
    .locals 6

    .prologue
    .line 334
    const/4 v0, 0x0

    .line 336
    .local v0, LockMessage:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pcw_phone"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    .line 339
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    const v4, 0x1040484

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 340
    .local v1, btnText:Ljava/lang/String;
    const-string v2, "\n"

    .line 341
    .local v2, newLine:Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 343
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 344
    :cond_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 345
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 352
    :goto_0
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "lock_pcw_Message"

    invoke-static {v3, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 354
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 355
    :cond_1
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 360
    :goto_1
    const-string v3, "PcwUnlockScreen"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "btnText="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", mLockMessage="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 361
    return-void

    .line 347
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->phoneNumber:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 348
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 349
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mCall:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 357
    :cond_3
    iget-object v3, p0, Lcom/android/internal/policy/impl/PcwUnlockScreen;->mLockMessage:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 326
    return-void
.end method
