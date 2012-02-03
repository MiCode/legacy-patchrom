.class Lcom/android/settings/bluetooth/BluetoothPairingDialog$LoadListener;
.super Ljava/lang/Object;
.source "BluetoothPairingDialog.java"

# interfaces
.implements Landroid/media/SoundPool$OnLoadCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;


# direct methods
.method private constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 140
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$LoadListener;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$LoadListener;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    return-void
.end method


# virtual methods
.method public onLoadComplete(Landroid/media/SoundPool;II)V
    .locals 8
    .parameter "soundPool"
    .parameter "sampleId"
    .parameter "status"

    .prologue
    const/4 v4, 0x1

    .line 143
    invoke-static {}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$300()Landroid/content/Context;

    move-result-object v0

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/media/AudioManager;

    .line 144
    .local v7, mAudioManager:Landroid/media/AudioManager;
    invoke-virtual {v7, v4}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v7, v4}, Landroid/media/AudioManager;->getStreamMaxVolume(I)I

    move-result v1

    int-to-float v1, v1

    div-float v2, v0, v1

    .line 145
    .local v2, volFloat:F
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$LoadListener;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mSoundPool:Landroid/media/SoundPool;
    invoke-static {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$500(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Landroid/media/SoundPool;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$LoadListener;->this$0:Lcom/android/settings/bluetooth/BluetoothPairingDialog;

    #getter for: Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mPopupSoundId:I
    invoke-static {v1}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->access$400(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)I

    move-result v1

    const/4 v5, 0x0

    const/high16 v6, 0x3f80

    move v3, v2

    invoke-virtual/range {v0 .. v6}, Landroid/media/SoundPool;->play(IFFIIF)I

    .line 146
    return-void
.end method
