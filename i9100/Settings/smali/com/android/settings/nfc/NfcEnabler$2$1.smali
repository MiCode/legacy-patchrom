.class Lcom/android/settings/nfc/NfcEnabler$2$1;
.super Ljava/lang/Object;
.source "NfcEnabler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/nfc/NfcEnabler$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/nfc/NfcEnabler$2;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/NfcEnabler$2;)V
    .locals 0
    .parameter

    .prologue
    .line 111
    iput-object p1, p0, Lcom/android/settings/nfc/NfcEnabler$2$1;->this$1:Lcom/android/settings/nfc/NfcEnabler$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 113
    iget-object v0, p0, Lcom/android/settings/nfc/NfcEnabler$2$1;->this$1:Lcom/android/settings/nfc/NfcEnabler$2;

    iget-object v0, v0, Lcom/android/settings/nfc/NfcEnabler$2;->this$0:Lcom/android/settings/nfc/NfcEnabler;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcEnabler$2$1;->this$1:Lcom/android/settings/nfc/NfcEnabler$2;

    iget-boolean v1, v1, Lcom/android/settings/nfc/NfcEnabler$2;->val$desiredState:Z

    #calls: Lcom/android/settings/nfc/NfcEnabler;->handleNfcStateChanged(Z)V
    invoke-static {v0, v1}, Lcom/android/settings/nfc/NfcEnabler;->access$000(Lcom/android/settings/nfc/NfcEnabler;Z)V

    .line 114
    return-void
.end method
