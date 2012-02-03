.class Lcom/android/settings/nfc/NfcEnabler$2;
.super Ljava/lang/Thread;
.source "NfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcEnabler;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/NfcEnabler;

.field final synthetic val$desiredState:Z


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler;Ljava/lang/String;Z)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    .line 100
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iput-boolean p3, p0, Lcom/android/settings/nfc/NfcEnabler$2;->val$desiredState:Z

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const-string v3, "NfcEnabler"

    .line 102
    const-string v1, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting NFC enabled state to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$2;->val$desiredState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    const/4 v0, 0x0

    .line 104
    .local v0, success:Z
    iget-boolean v1, p0, Lcom/android/settings/nfc/NfcEnabler$2;->val$desiredState:Z

    if-eqz v1, :cond_0

    .line 105
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->enable()Z

    move-result v0

    .line 109
    :goto_0
    if-eqz v0, :cond_1

    .line 110
    const-string v1, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Successfully changed NFC enabled state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$2;->val$desiredState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$2$1;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$2$1;-><init>(Lcom/android/settings/nfc/NfcEnabler$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 125
    :goto_1
    return-void

    .line 107
    :cond_0
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mNfcAdapter:Landroid/nfc/NfcAdapter;
    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$100(Lcom/android/settings/nfc/NfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object v1

    invoke-virtual {v1}, Landroid/nfc/NfcAdapter;->disable()Z

    move-result v0

    goto :goto_0

    .line 117
    :cond_1
    const-string v1, "NfcEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error setting NFC enabled state to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/nfc/NfcEnabler$2;->val$desiredState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    #getter for: Lcom/android/settings/nfc/NfcEnabler;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/android/settings/nfc/NfcEnabler;->access$200(Lcom/android/settings/nfc/NfcEnabler;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lcom/android/settings/nfc/NfcEnabler$2$2;

    invoke-direct {v2, p0}, Lcom/android/settings/nfc/NfcEnabler$2$2;-><init>(Lcom/android/settings/nfc/NfcEnabler$2;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1
.end method
