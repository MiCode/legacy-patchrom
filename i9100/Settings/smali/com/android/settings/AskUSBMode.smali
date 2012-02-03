.class public Lcom/android/settings/AskUSBMode;
.super Landroid/app/Activity;
.source "AskUSBMode.java"


# static fields
.field private static mMTP_Button:Landroid/widget/Button;

.field private static mSamsungKies_Button:Landroid/widget/Button;

.field private static mUMS_Button:Landroid/widget/Button;


# instance fields
.field private final askon:[B

.field private final kies:[B

.field private mContext:Landroid/content/Context;

.field private final maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

.field private final mtp:[B

.field private final ums:[B

.field private final vtp:[B


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 32
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 35
    const/4 v0, 0x5

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->kies:[B

    .line 36
    new-array v0, v1, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->mtp:[B

    .line 37
    new-array v0, v1, [B

    fill-array-data v0, :array_2

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->ums:[B

    .line 38
    new-array v0, v1, [B

    fill-array-data v0, :array_3

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->vtp:[B

    .line 39
    const/4 v0, 0x6

    new-array v0, v0, [B

    fill-array-data v0, :array_4

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->askon:[B

    .line 210
    new-instance v0, Lcom/android/settings/AskUSBMode$4;

    invoke-direct {v0, p0}, Lcom/android/settings/AskUSBMode$4;-><init>(Lcom/android/settings/AskUSBMode;)V

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    return-void

    .line 35
    nop

    :array_0
    .array-data 0x1
        0x4bt
        0x49t
        0x45t
        0x53t
        0x0t
    .end array-data

    .line 36
    nop

    :array_1
    .array-data 0x1
        0x4dt
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 37
    :array_2
    .array-data 0x1
        0x55t
        0x4dt
        0x53t
        0x0t
    .end array-data

    .line 38
    :array_3
    .array-data 0x1
        0x56t
        0x54t
        0x50t
        0x0t
    .end array-data

    .line 39
    :array_4
    .array-data 0x1
        0x41t
        0x53t
        0x4bt
        0x4ft
        0x4et
        0x0t
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/settings/AskUSBMode;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p1}, Lcom/android/settings/AskUSBMode;->selectUsb(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/AskUSBMode;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 32
    iget-object v0, p0, Lcom/android/settings/AskUSBMode;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private registerBroadCastRec()V
    .locals 3

    .prologue
    .line 203
    const-string v1, "ASKUSBMODE"

    const-string v2, "< AskUSBMODE > Registering BroadCast receiver :::::"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 205
    .local v0, lIntentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/AskUSBMode;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 208
    return-void
.end method

.method private selectUsb(Ljava/lang/String;)V
    .locals 5
    .parameter "usb"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-string v4, "VTP"

    .line 145
    new-instance v2, Ljava/io/FileOutputStream;

    const-string v3, "/sys/class/sec/switch/AskOnMenuSel"

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    .line 152
    .local v2, out:Ljava/io/FileOutputStream;
    const-string v3, "VTP"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 153
    const-string v3, "ASKUSBMODE"

    const-string v4, "sending disable intent"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 155
    .local v1, i:Landroid/content/Intent;
    const-string v3, "com.android.samsung.IcsService"

    const-string v4, "com.android.samsung.IcsService.IcsService"

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 156
    invoke-virtual {p0, v1}, Lcom/android/settings/AskUSBMode;->stopService(Landroid/content/Intent;)Z

    .line 161
    .end local v1           #i:Landroid/content/Intent;
    :cond_0
    :try_start_0
    const-string v3, "KIES"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 162
    iget-object v3, p0, Lcom/android/settings/AskUSBMode;->kies:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :cond_1
    :goto_0
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    .line 185
    :goto_1
    return-void

    .line 164
    :cond_2
    :try_start_1
    const-string v3, "MTP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 165
    iget-object v3, p0, Lcom/android/settings/AskUSBMode;->mtp:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 179
    :catch_0
    move-exception v3

    move-object v0, v3

    .line 180
    .local v0, e:Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 183
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_1

    .line 168
    .end local v0           #e:Ljava/lang/Exception;
    :cond_3
    :try_start_3
    const-string v3, "UMS"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 169
    iget-object v3, p0, Lcom/android/settings/AskUSBMode;->ums:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 183
    :catchall_0
    move-exception v3

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    throw v3

    .line 171
    :cond_4
    :try_start_4
    const-string v3, "VTP"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 172
    iget-object v3, p0, Lcom/android/settings/AskUSBMode;->vtp:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_0

    .line 174
    :cond_5
    const-string v3, "ASKON"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 175
    iget-object v3, p0, Lcom/android/settings/AskUSBMode;->askon:[B

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .parameter "savedInstanceState"

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/AskUSBMode;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/AskUSBMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "media_player_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/AskUSBMode;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AskUSBMode;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0}, Lcom/android/settings/AskUSBMode;->registerBroadCastRec()V

    .line 68
    const v0, 0x7f030002

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->setContentView(I)V

    .line 70
    const v0, 0x7f0b0006

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/AskUSBMode;->mSamsungKies_Button:Landroid/widget/Button;

    .line 71
    const v0, 0x7f0b0007

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/AskUSBMode;->mMTP_Button:Landroid/widget/Button;

    .line 72
    const v0, 0x7f0b0008

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    sput-object v0, Lcom/android/settings/AskUSBMode;->mUMS_Button:Landroid/widget/Button;

    .line 78
    sget-object v0, Lcom/android/settings/AskUSBMode;->mSamsungKies_Button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/AskUSBMode$1;

    invoke-direct {v1, p0}, Lcom/android/settings/AskUSBMode$1;-><init>(Lcom/android/settings/AskUSBMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget-object v0, Lcom/android/settings/AskUSBMode;->mMTP_Button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/AskUSBMode$2;

    invoke-direct {v1, p0}, Lcom/android/settings/AskUSBMode$2;-><init>(Lcom/android/settings/AskUSBMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 109
    sget-object v0, Lcom/android/settings/AskUSBMode;->mUMS_Button:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/AskUSBMode$3;

    invoke-direct {v1, p0}, Lcom/android/settings/AskUSBMode$3;-><init>(Lcom/android/settings/AskUSBMode;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 55
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 56
    iget-object v0, p0, Lcom/android/settings/AskUSBMode;->maskOnConnectionReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/AskUSBMode;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 57
    return-void
.end method
