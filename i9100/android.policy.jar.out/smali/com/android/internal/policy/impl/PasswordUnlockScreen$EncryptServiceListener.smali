.class Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;
.super Landroid/os/storage/IEncryptServiceListener$Stub;
.source "PasswordUnlockScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PasswordUnlockScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EncryptServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;


# direct methods
.method private constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 407
    iput-object p1, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    invoke-direct {p0}, Landroid/os/storage/IEncryptServiceListener$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;Lcom/android/internal/policy/impl/PasswordUnlockScreen$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 407
    invoke-direct {p0, p1}, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;-><init>(Lcom/android/internal/policy/impl/PasswordUnlockScreen;)V

    return-void
.end method


# virtual methods
.method public onEncryptionStatusChanged(Ljava/lang/String;)V
    .locals 3
    .parameter "status"

    .prologue
    .line 411
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptHandler:Landroid/os/Handler;

    invoke-virtual {v2}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 412
    .local v1, msg:Landroid/os/Message;
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 413
    .local v0, b:Landroid/os/Bundle;
    const-string v2, "status"

    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 415
    iget-object v2, p0, Lcom/android/internal/policy/impl/PasswordUnlockScreen$EncryptServiceListener;->this$0:Lcom/android/internal/policy/impl/PasswordUnlockScreen;

    iget-object v2, v2, Lcom/android/internal/policy/impl/PasswordUnlockScreen;->mEncryptHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 416
    return-void
.end method
