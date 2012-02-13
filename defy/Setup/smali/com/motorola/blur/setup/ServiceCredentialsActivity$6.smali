.class Lcom/motorola/blur/setup/ServiceCredentialsActivity$6;
.super Ljava/lang/Object;
.source "ServiceCredentialsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceCredentialsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 797
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$6;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 802
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 821
    :cond_0
    :goto_0
    return-void

    .line 805
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 806
    invoke-virtual {p1, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 807
    invoke-virtual {p1, v1}, Landroid/view/View;->setFocusable(Z)V

    .line 808
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$6;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->processCredentials()Z

    move-result v0

    if-nez v0, :cond_1

    .line 809
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$6;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    #calls: Lcom/motorola/blur/setup/ServiceCredentialsActivity;->setUpAuthentication()V
    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->access$700(Lcom/motorola/blur/setup/ServiceCredentialsActivity;)V

    goto :goto_0

    .line 811
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/View;->setEnabled(Z)V

    .line 812
    invoke-virtual {p1, v2}, Landroid/view/View;->setFocusable(Z)V

    goto :goto_0

    .line 818
    :pswitch_1
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceCredentialsActivity$6;->this$0:Lcom/motorola/blur/setup/ServiceCredentialsActivity;

    invoke-virtual {v0}, Lcom/motorola/blur/setup/ServiceCredentialsActivity;->goBack()V

    goto :goto_0

    .line 802
    nop

    :pswitch_data_0
    .packed-switch 0x7f0b0000
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
