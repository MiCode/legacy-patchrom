.class public Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/BluetoothPairingDialog$LoadListener;
    }
.end annotation


# static fields
.field private static isScreenOn:Z

.field private static mContext:Landroid/content/Context;

.field private static pm:Landroid/os/PowerManager;

.field private static wl:Landroid/os/PowerManager$WakeLock;


# instance fields
.field private final BLUETOOTH_PASSKEY_MAX_LENGTH:I

.field private final BLUETOOTH_PIN_MAX_LENGTH:I

.field private final PAIR_SOUND_PATH:Ljava/lang/String;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

.field private mOkButton:Landroid/widget/Button;

.field private mPairingView:Landroid/widget/EditText;

.field private mPasskey:Ljava/lang/String;

.field private mPopupSoundId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSoundPool:Landroid/media/SoundPool;

.field private mType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isScreenOn:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 71
    const/16 v0, 0x10

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->BLUETOOTH_PIN_MAX_LENGTH:I

    .line 73
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->BLUETOOTH_PASSKEY_MAX_LENGTH:I

    .line 100
    const-string v0, "/media/audio/ui/TW_Error.ogg"

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->PAIR_SOUND_PATH:Ljava/lang/String;

    .line 104
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 140
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismissDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/bluetooth/BluetoothDevice;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/LocalBluetoothManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    return-object v0
.end method

.method static synthetic access$300()Landroid/content/Context;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPopupSoundId:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/media/SoundPool;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/widget/EditText;
    .locals 1
    .parameter "x0"

    .prologue
    .line 62
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    return-object v0
.end method

.method private createConfirmationDialog()V
    .locals 2

    .prologue
    .line 376
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 378
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f08012d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 379
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 380
    const v1, 0x7f080134

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 381
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 382
    const v1, 0x7f0806d4

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 383
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 384
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 385
    return-void
.end method

.method private createConsentDialog()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 390
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f08012d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 391
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 392
    const v1, 0x7f080134

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 393
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 394
    const v1, 0x7f0806d4

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 395
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 396
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 397
    return-void
.end method

.method private createDisplayPasskeyDialog()V
    .locals 3

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 402
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f08012d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 403
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 404
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 405
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 406
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 410
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    .line 411
    return-void
.end method

.method private createUserEntryDialog()V
    .locals 3

    .prologue
    .line 247
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 249
    .local v0, p:Lcom/android/internal/app/AlertController$AlertParams;
    const v1, 0x7f08012d

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 250
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createView()Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 251
    const v1, 0x104000a

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 252
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 253
    const/high16 v1, 0x104

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 254
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->setupAlert()V

    .line 257
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAlert:Lcom/android/internal/app/AlertController;

    const/4 v2, -0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/app/AlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    .line 263
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isDeviceKeyboard(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 265
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 270
    :goto_0
    return-void

    .line 267
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method private createView()Landroid/view/View;
    .locals 13

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f03000b

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 275
    .local v5, view:Landroid/view/View;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v6}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v7}, Lcom/android/settings/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v1

    .line 276
    .local v1, name:Ljava/lang/String;
    const v6, 0x7f0b0019

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 277
    .local v0, messageView:Landroid/widget/TextView;
    const v6, 0x7f0b0020

    invoke-virtual {v5, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    .line 278
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v6, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 280
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-nez v6, :cond_2

    .line 290
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-static {v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isDeviceKeyboard(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 296
    new-instance v4, Ljava/util/Random;

    invoke-direct {v4}, Ljava/util/Random;-><init>()V

    .line 297
    .local v4, random:Ljava/util/Random;
    const-string v6, "%06d"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-virtual {v4}, Ljava/util/Random;->nextLong()J

    move-result-wide v9

    const-wide/32 v11, 0xf4240

    rem-long/2addr v9, v11

    invoke-static {v9, v10}, Ljava/lang/Math;->abs(J)J

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 298
    .local v2, pin:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 299
    const v6, 0x7f080756

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    aput-object v2, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 301
    invoke-static {v2}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v3

    .line 302
    .local v3, pinBytes:[B
    if-eqz v3, :cond_0

    .line 303
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v6, v3}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    .line 372
    .end local v2           #pin:Ljava/lang/String;
    .end local v3           #pinBytes:[B
    .end local v4           #random:Ljava/util/Random;
    :cond_0
    :goto_0
    return-object v5

    .line 305
    :cond_1
    const v6, 0x7f08012f

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 307
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/16 v10, 0x10

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 312
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 313
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$2;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    .line 323
    :cond_2
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x1

    if-ne v6, v7, :cond_3

    .line 324
    const v6, 0x7f080130

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 327
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->requestFocus()Z

    .line 328
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    new-instance v7, Lcom/android/settings/bluetooth/BluetoothPairingDialog$3;

    invoke-direct {v7, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$3;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    const-wide/16 v8, 0x64

    invoke-virtual {v6, v7, v8, v9}, Landroid/widget/EditText;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 337
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x1002

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setInputType(I)V

    .line 339
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/4 v7, 0x1

    new-array v7, v7, [Landroid/text/InputFilter;

    const/4 v8, 0x0

    new-instance v9, Landroid/text/InputFilter$LengthFilter;

    const/4 v10, 0x6

    invoke-direct {v9, v10}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v9, v7, v8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0

    .line 342
    :cond_3
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x2

    if-ne v6, v7, :cond_5

    .line 343
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 351
    const-string v6, "Just Works"

    iget-object v7, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 352
    const v6, 0x7f0806cb

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 355
    :cond_4
    const v6, 0x7f080131

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 360
    :cond_5
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    .line 361
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 362
    const v6, 0x7f080132

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 363
    :cond_6
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_7

    .line 364
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 365
    const v6, 0x7f080133

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    const/4 v8, 0x1

    iget-object v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    aput-object v9, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 366
    :cond_7
    iget v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v7, 0x5

    if-ne v6, v7, :cond_8

    .line 367
    iget-object v6, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    const/16 v7, 0x8

    invoke-virtual {v6, v7}, Landroid/widget/EditText;->setVisibility(I)V

    .line 368
    const v6, 0x7f080132

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {p0, v6, v7}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 370
    :cond_8
    const-string v6, "BluetoothPairingDialog"

    const-string v7, "Incorrect pairing type received, not creating view"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private dismissDialog()V
    .locals 1

    .prologue
    .line 446
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 447
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 453
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->dismiss()V

    .line 454
    return-void
.end method

.method static isDeviceKeyboard(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 4
    .parameter "device"

    .prologue
    const/4 v3, 0x0

    .line 416
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-nez v2, :cond_1

    :cond_0
    move v2, v3

    .line 421
    :goto_0
    return v2

    .line 418
    :cond_1
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    .line 419
    .local v0, deviceClass:I
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v1

    .line 421
    .local v1, majorDeviceClass:I
    const/16 v2, 0x500

    if-ne v1, v2, :cond_3

    const/16 v2, 0x540

    if-eq v0, v2, :cond_2

    const/16 v2, 0x5c0

    if-ne v0, v2, :cond_3

    :cond_2
    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    goto :goto_0
.end method

.method private onCancel()V
    .locals 1

    .prologue
    .line 480
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->cancelPairingUserInput()Z

    .line 481
    return-void
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 5
    .parameter "value"

    .prologue
    const/4 v4, 0x1

    .line 457
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-nez v2, :cond_2

    .line 458
    invoke-static {p1}, Landroid/bluetooth/BluetoothDevice;->convertPinToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 459
    .local v1, pinBytes:[B
    if-nez v1, :cond_1

    .line 477
    .end local v1           #pinBytes:[B
    :cond_0
    :goto_0
    return-void

    .line 462
    .restart local v1       #pinBytes:[B
    :cond_1
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v1}, Landroid/bluetooth/BluetoothDevice;->setPin([B)Z

    goto :goto_0

    .line 463
    .end local v1           #pinBytes:[B
    :cond_2
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-ne v2, v4, :cond_3

    .line 464
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 465
    .local v0, passkey:I
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v0}, Landroid/bluetooth/BluetoothDevice;->setPasskey(I)Z

    goto :goto_0

    .line 466
    .end local v0           #passkey:I
    :cond_3
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    .line 467
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 468
    :cond_4
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_5

    .line 469
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2, v4}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 470
    :cond_5
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x4

    if-eq v2, v3, :cond_0

    .line 472
    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v3, 0x5

    if-ne v2, v3, :cond_6

    .line 473
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->setRemoteOutOfBandData()Z

    goto :goto_0

    .line 475
    :cond_6
    const-string v2, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 439
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mOkButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 442
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 527
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 498
    packed-switch p2, :pswitch_data_0

    .line 523
    :goto_0
    return-void

    .line 501
    :pswitch_0
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 508
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPairingView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onPair(Ljava/lang/String;)V

    goto :goto_0

    .line 513
    :pswitch_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 514
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 520
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    goto :goto_0

    .line 498
    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 11
    .parameter "savedInstanceState"

    .prologue
    const/4 v9, 0x0

    const/high16 v7, -0x8000

    const/4 v6, 0x1

    const-string v10, "%06d"

    const-string v8, "BluetoothPairingDialog"

    .line 152
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 155
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    const-string v4, "android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 156
    const-string v3, "BluetoothPairingDialog"

    const-string v3, "Error: this activity may be started only with intent android.bluetooth.device.action.PAIRING_REQUEST"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->finish()V

    .line 161
    :cond_0
    invoke-static {p0}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/bluetooth/LocalBluetoothManager;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    .line 162
    const-string v3, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 163
    const-string v3, "android.bluetooth.device.extra.PAIRING_VARIANT"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    .line 166
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mLocalManager:Lcom/android/settings/bluetooth/LocalBluetoothManager;

    invoke-virtual {v3}, Lcom/android/settings/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object v3

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mContext:Landroid/content/Context;

    .line 167
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/PowerManager;

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->pm:Landroid/os/PowerManager;

    .line 168
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->pm:Landroid/os/PowerManager;

    const v4, 0x3000000a

    const-string v5, "BluetoothPairingDialog"

    invoke-virtual {v3, v4, v8}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v3

    sput-object v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    .line 173
    new-instance v3, Landroid/media/SoundPool;

    invoke-direct {v3, v6, v6, v9}, Landroid/media/SoundPool;-><init>(III)V

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    .line 174
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    new-instance v4, Lcom/android/settings/bluetooth/BluetoothPairingDialog$LoadListener;

    const/4 v5, 0x0

    invoke-direct {v4, p0, v5}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$LoadListener;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;)V

    invoke-virtual {v3, v4}, Landroid/media/SoundPool;->setOnLoadCompleteListener(Landroid/media/SoundPool$OnLoadCompleteListener;)V

    .line 175
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getRootDirectory()Ljava/io/File;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/media/audio/ui/TW_Error.ogg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 176
    .local v0, filePath:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v3, v0, v6}, Landroid/media/SoundPool;->load(Ljava/lang/String;I)I

    move-result v3

    iput v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPopupSoundId:I

    .line 180
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-nez v3, :cond_2

    .line 181
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    .line 223
    :goto_0
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->pm:Landroid/os/PowerManager;

    invoke-virtual {v3}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v3

    sput-boolean v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isScreenOn:Z

    .line 224
    sget-boolean v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isScreenOn:Z

    if-nez v3, :cond_1

    .line 225
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->wl:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 237
    :cond_1
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "broadcom.android.bluetooth.intent.action.AGENT_CANCEL_USER"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 240
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 241
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.ACL_DISCONNECTED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 244
    :goto_1
    return-void

    .line 182
    :cond_2
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    if-ne v3, v6, :cond_3

    .line 183
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createUserEntryDialog()V

    goto :goto_0

    .line 184
    :cond_3
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_5

    .line 185
    const-string v3, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 186
    .local v2, passkey:I
    if-ne v2, v7, :cond_4

    .line 192
    const-string v3, "Just Works"

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    .line 201
    :goto_2
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConfirmationDialog()V

    goto :goto_0

    .line 199
    :cond_4
    const-string v3, "%06d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    goto :goto_2

    .line 202
    .end local v2           #passkey:I
    :cond_5
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_6

    .line 203
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    goto :goto_0

    .line 204
    :cond_6
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v4, 0x4

    if-ne v3, v4, :cond_8

    .line 205
    const-string v3, "android.bluetooth.device.extra.PASSKEY"

    invoke-virtual {v1, v3, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 206
    .restart local v2       #passkey:I
    if-ne v2, v7, :cond_7

    .line 207
    const-string v3, "BluetoothPairingDialog"

    const-string v3, "Invalid ConfirmationPasskey received, not showing any dialog"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 210
    :cond_7
    const-string v3, "%06d"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v10, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPasskey:Ljava/lang/String;

    .line 211
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createDisplayPasskeyDialog()V

    goto/16 :goto_0

    .line 212
    .end local v2           #passkey:I
    :cond_8
    iget v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mType:I

    const/4 v4, 0x5

    if-ne v3, v4, :cond_9

    .line 213
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->createConsentDialog()V

    goto/16 :goto_0

    .line 215
    :cond_9
    const-string v3, "BluetoothPairingDialog"

    const-string v3, "Incorrect pairing type received, not showing any dialog"

    invoke-static {v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 429
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onDestroy()V

    .line 430
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 433
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPopupSoundId:I

    invoke-virtual {v0, v1}, Landroid/media/SoundPool;->unload(I)Z

    .line 434
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;

    invoke-virtual {v0}, Landroid/media/SoundPool;->release()V

    .line 436
    return-void
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 485
    const-string v0, "BluetoothPairingDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getFlags()I

    move-result v0

    const/16 v1, 0x20

    if-ne v0, v1, :cond_0

    .line 487
    const/4 v0, 0x1

    .line 493
    :goto_0
    return v0

    .line 490
    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    .line 491
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->onCancel()V

    .line 493
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/android/internal/app/AlertActivity;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 531
    return-void
.end method
