.class Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "RuimPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;)V
    .locals 0
    .parameter

    .prologue
    .line 37
    iput-object p1, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 42
    iget v0, p1, Landroid/os/Message;->what:I

    .line 44
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;

    #getter for: Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;->access$000(Lcom/android/internal/telephony/cdma/RuimPhoneBookInterfaceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 47
    return-void
.end method
