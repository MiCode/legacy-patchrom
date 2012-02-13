.class public Lcom/android/phone/AirplaneModeHandler;
.super Landroid/app/Activity;
.source "AirplaneModeHandler.java"


# static fields
#the value of this static final field might be set in the static constructor
.field private static final DBG:Z = false

.field private static final EVENT_DELAYED_CALL_ORIGINATION:I = 0x66

.field private static final EVENT_SERVICE_STATE_CHANGED:I = 0x64

.field private static final LOG_TAG:Ljava/lang/String; = "AirplaneModeHandler"

.field private static final TIME_DELAYED_CALL_ORIGINATION:I = 0xfa0

.field private static final TIME_SLEEPING_MS:I = 0x4e20


# instance fields
.field private mApplication:Landroid/app/Application;

.field private mHandler:Landroid/os/Handler;

.field private mIntent:Landroid/content/Intent;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mProgressDialog:Landroid/app/ProgressDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 64
    new-instance v0, Lcom/android/phone/AirplaneModeHandler$1;

    invoke-direct {v0, p0}, Lcom/android/phone/AirplaneModeHandler$1;-><init>(Lcom/android/phone/AirplaneModeHandler;)V

    iput-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .prologue
    .line 41
    sget-boolean v0, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/phone/AirplaneModeHandler;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-direct {p0, p1}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/phone/AirplaneModeHandler;)Landroid/content/Intent;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/phone/AirplaneModeHandler;)Landroid/os/Handler;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/Application;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mApplication:Landroid/app/Application;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/phone/AirplaneModeHandler;)Landroid/app/ProgressDialog;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/phone/AirplaneModeHandler;)Lcom/android/internal/telephony/Phone;
    .locals 1
    .parameter "x0"

    .prologue
    .line 41
    iget-object v0, p0, Lcom/android/phone/AirplaneModeHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object v0
.end method

.method private constructDialog()Landroid/app/ProgressDialog;
    .locals 3

    .prologue
    .line 170
    sget-boolean v1, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "constructDialog()..."

    invoke-direct {p0, v1}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 173
    :cond_0
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/phone/AirplaneModeHandler;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 174
    .local v0, pd:Landroid/app/ProgressDialog;
    const v1, 0x7f0b0361

    invoke-virtual {p0, v1}, Lcom/android/phone/AirplaneModeHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 175
    const v1, 0x7f0b0322

    invoke-virtual {p0, v1}, Lcom/android/phone/AirplaneModeHandler;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 176
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 177
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 178
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x7d8

    invoke-virtual {v1, v2}, Landroid/view/Window;->setType(I)V

    .line 179
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 182
    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 184
    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 188
    const-string v0, "AirplaneModeHandler"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "icicle"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    const-string v7, "airplane_mode_on"

    .line 114
    sget-boolean v2, Lcom/android/phone/AirplaneModeHandler;->DBG:Z

    if-eqz v2, :cond_0

    const-string v2, "onCreate()..."

    invoke-direct {p0, v2}, Lcom/android/phone/AirplaneModeHandler;->log(Ljava/lang/String;)V

    .line 115
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 118
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 121
    .local v1, phone:Lcom/android/internal/telephony/Phone;
    iput-object v1, p0, Lcom/android/phone/AirplaneModeHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/AirplaneModeHandler;->getApplication()Landroid/app/Application;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AirplaneModeHandler;->mApplication:Landroid/app/Application;

    .line 123
    invoke-direct {p0}, Lcom/android/phone/AirplaneModeHandler;->constructDialog()Landroid/app/ProgressDialog;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AirplaneModeHandler;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 124
    invoke-virtual {p0}, Lcom/android/phone/AirplaneModeHandler;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    .line 125
    iget-object v2, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    iget-object v3, p0, Lcom/android/phone/AirplaneModeHandler;->mIntent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x1000

    or-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 133
    iget-object v2, p0, Lcom/android/phone/AirplaneModeHandler;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x64

    invoke-interface {v1, v2, v3, v6}, Lcom/android/internal/telephony/Phone;->registerForServiceStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 138
    invoke-virtual {p0}, Lcom/android/phone/AirplaneModeHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/android/phone/AirplaneModeHandler;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    invoke-static {v2, v7, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 145
    .local v0, intent:Landroid/content/Intent;
    const-string v2, "state"

    invoke-virtual {v0, v2, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 146
    invoke-virtual {p0, v0}, Lcom/android/phone/AirplaneModeHandler;->sendBroadcast(Landroid/content/Intent;)V

    .line 155
    .end local v0           #intent:Landroid/content/Intent;
    :goto_0
    new-instance v2, Lcom/android/phone/AirplaneModeHandler$2;

    invoke-direct {v2, p0}, Lcom/android/phone/AirplaneModeHandler$2;-><init>(Lcom/android/phone/AirplaneModeHandler;)V

    invoke-virtual {v2}, Lcom/android/phone/AirplaneModeHandler$2;->start()V

    .line 164
    return-void

    .line 151
    :cond_1
    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/Phone;->setRadioPower(Z)V

    goto :goto_0
.end method
