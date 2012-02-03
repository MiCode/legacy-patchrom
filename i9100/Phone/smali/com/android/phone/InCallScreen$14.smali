.class Lcom/android/phone/InCallScreen$14;
.super Ljava/lang/Object;
.source "InCallScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/InCallScreen;->handleMissingVoiceMailNumber()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/InCallScreen;

.field final synthetic val$msg:Landroid/os/Message;


# direct methods
.method constructor <init>(Lcom/android/phone/InCallScreen;Landroid/os/Message;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 3940
    iput-object p1, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    iput-object p2, p0, Lcom/android/phone/InCallScreen$14;->val$msg:Landroid/os/Message;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .parameter "dialog"

    .prologue
    .line 3942
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->this$0:Lcom/android/phone/InCallScreen;

    const-string v1, "Missing voicemail AlertDialog: DismissListener..."

    #calls: Lcom/android/phone/InCallScreen;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/InCallScreen;->access$000(Lcom/android/phone/InCallScreen;Ljava/lang/String;)V

    .line 3943
    iget-object v0, p0, Lcom/android/phone/InCallScreen$14;->val$msg:Landroid/os/Message;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 3944
    invoke-static {}, Lcom/android/phone/PhoneApp;->getInstance()Lcom/android/phone/PhoneApp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/PhoneApp;->pokeUserActivity()V

    .line 3945
    return-void
.end method
