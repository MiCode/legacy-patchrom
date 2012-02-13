.class Lcom/motorola/blur/setup/ServiceChooserActivity$1;
.super Landroid/os/Handler;
.source "ServiceChooserActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/motorola/blur/setup/ServiceChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;


# direct methods
.method constructor <init>(Lcom/motorola/blur/setup/ServiceChooserActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 240
    iput-object p1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    .line 243
    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    .line 258
    .end local p0
    :goto_0
    return-void

    .line 245
    .restart local p0
    :sswitch_0
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    #calls: Lcom/motorola/blur/setup/ServiceChooserActivity;->setupTables()V
    invoke-static {v0}, Lcom/motorola/blur/setup/ServiceChooserActivity;->access$400(Lcom/motorola/blur/setup/ServiceChooserActivity;)V

    goto :goto_0

    .line 248
    :sswitch_1
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    iget-object v1, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    invoke-virtual {v1}, Lcom/motorola/blur/setup/ServiceChooserActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0c015a

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 253
    .restart local p0
    :sswitch_2
    iget-object v0, p0, Lcom/motorola/blur/setup/ServiceChooserActivity$1;->this$0:Lcom/motorola/blur/setup/ServiceChooserActivity;

    const v1, 0x7f0c0159

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 243
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3e8 -> :sswitch_0
    .end sparse-switch
.end method
