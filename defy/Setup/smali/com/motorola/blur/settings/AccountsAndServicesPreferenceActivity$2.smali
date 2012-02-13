.class Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$2;
.super Landroid/os/Handler;
.source "AccountsAndServicesPreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 101
    iput-object p1, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$2;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 104
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 109
    :goto_0
    return-void

    .line 106
    :pswitch_0
    iget-object v0, p0, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity$2;->this$0:Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;

    #calls: Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->updateIcons()V
    invoke-static {v0}, Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;->access$000(Lcom/motorola/blur/settings/AccountsAndServicesPreferenceActivity;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_0
    .end packed-switch
.end method
