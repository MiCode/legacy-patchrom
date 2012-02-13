.class Lcom/android/phone/PhoneApp$8;
.super Ljava/lang/Object;
.source "PhoneApp.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/PhoneApp;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/PhoneApp;


# direct methods
.method constructor <init>(Lcom/android/phone/PhoneApp;)V
    .locals 0
    .parameter

    .prologue
    .line 3450
    iput-object p1, p0, Lcom/android/phone/PhoneApp$8;->this$0:Lcom/android/phone/PhoneApp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .parameter "classname"
    .parameter "obj"

    .prologue
    .line 3452
    const-string v0, "PhoneApp"

    const-string v1, "sound record service connected."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    iget-object v0, p0, Lcom/android/phone/PhoneApp$8;->this$0:Lcom/android/phone/PhoneApp;

    invoke-static {p2}, Lcom/motorola/soundrecorder/ISoundRecorderService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/motorola/soundrecorder/ISoundRecorderService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    .line 3454
    iget-object v0, p0, Lcom/android/phone/PhoneApp$8;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3455
    iget-object v0, p0, Lcom/android/phone/PhoneApp$8;->this$0:Lcom/android/phone/PhoneApp;

    #getter for: Lcom/android/phone/PhoneApp;->mInCallScreen:Lcom/android/phone/InCallScreen;
    invoke-static {v0}, Lcom/android/phone/PhoneApp;->access$900(Lcom/android/phone/PhoneApp;)Lcom/android/phone/InCallScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/PhoneApp$8;->this$0:Lcom/android/phone/PhoneApp;

    invoke-virtual {v1}, Lcom/android/phone/PhoneApp;->isVoiceRecordOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/phone/InCallScreen;->updateVoiceRecordUi(Z)V

    .line 3456
    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .parameter "classname"

    .prologue
    .line 3459
    const-string v0, "PhoneApp"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sound record service disconnected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3460
    iget-object v0, p0, Lcom/android/phone/PhoneApp$8;->this$0:Lcom/android/phone/PhoneApp;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/phone/PhoneApp;->mService:Lcom/motorola/soundrecorder/ISoundRecorderService;

    .line 3461
    return-void
.end method
