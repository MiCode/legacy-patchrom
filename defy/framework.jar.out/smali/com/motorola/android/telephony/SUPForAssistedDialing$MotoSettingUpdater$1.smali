.class Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater$1;
.super Landroid/os/Handler;
.source "SUPForAssistedDialing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;


# direct methods
.method constructor <init>(Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater$1;->this$1:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/motorola/android/telephony/MCCEntry;

    .local v0, entry:Lcom/motorola/android/telephony/MCCEntry;
    iget-object v1, p0, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater$1;->this$1:Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;

    iget-object v1, v1, Lcom/motorola/android/telephony/SUPForAssistedDialing$MotoSettingUpdater;->this$0:Lcom/motorola/android/telephony/SUPForAssistedDialing;

    #calls: Lcom/motorola/android/telephony/SUPForAssistedDialing;->updateMotoSettings(Lcom/motorola/android/telephony/MCCEntry;)V
    invoke-static {v1, v0}, Lcom/motorola/android/telephony/SUPForAssistedDialing;->access$000(Lcom/motorola/android/telephony/SUPForAssistedDialing;Lcom/motorola/android/telephony/MCCEntry;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
