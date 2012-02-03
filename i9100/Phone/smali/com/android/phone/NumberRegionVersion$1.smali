.class Lcom/android/phone/NumberRegionVersion$1;
.super Landroid/os/Handler;
.source "NumberRegionVersion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/NumberRegionVersion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/NumberRegionVersion;


# direct methods
.method constructor <init>(Lcom/android/phone/NumberRegionVersion;)V
    .locals 0
    .parameter

    .prologue
    .line 162
    iput-object p1, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .parameter "msg"

    .prologue
    const v3, 0x7f0d003e

    .line 165
    sget-boolean v0, Lcom/android/phone/NumberRegionVersion;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "NumberRegionVersion"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isLanguageChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/android/phone/NumberRegionVersion;->access$100()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 245
    :cond_1
    :goto_0
    return-void

    .line 169
    :pswitch_0
    invoke-static {}, Lcom/android/phone/NumberRegionVersion;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 171
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v0}, Lcom/android/phone/NumberRegionVersion;->dismiss()V

    .line 172
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0379

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$1$1;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$1$1;-><init>(Lcom/android/phone/NumberRegionVersion$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 180
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    #calls: Lcom/android/phone/NumberRegionVersion;->refreshViews()V
    invoke-static {v0}, Lcom/android/phone/NumberRegionVersion;->access$200(Lcom/android/phone/NumberRegionVersion;)V

    goto :goto_0

    .line 185
    :pswitch_1
    invoke-static {}, Lcom/android/phone/NumberRegionVersion;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 187
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v0}, Lcom/android/phone/NumberRegionVersion;->dismiss()V

    .line 188
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0383

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$1$2;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$1$2;-><init>(Lcom/android/phone/NumberRegionVersion$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto :goto_0

    .line 199
    :pswitch_2
    invoke-static {}, Lcom/android/phone/NumberRegionVersion;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 201
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v0}, Lcom/android/phone/NumberRegionVersion;->dismiss()V

    .line 202
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0384

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$1$3;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$1$3;-><init>(Lcom/android/phone/NumberRegionVersion$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 213
    :pswitch_3
    invoke-static {}, Lcom/android/phone/NumberRegionVersion;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 215
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v0}, Lcom/android/phone/NumberRegionVersion;->dismiss()V

    .line 216
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d0380

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$1$4;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$1$4;-><init>(Lcom/android/phone/NumberRegionVersion$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 228
    :pswitch_4
    invoke-static {}, Lcom/android/phone/NumberRegionVersion;->access$100()Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-virtual {v0}, Lcom/android/phone/NumberRegionVersion;->dismiss()V

    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f0d037c

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/phone/NumberRegionVersion$1$5;

    invoke-direct {v1, p0}, Lcom/android/phone/NumberRegionVersion$1$5;-><init>(Lcom/android/phone/NumberRegionVersion$1;)V

    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 239
    iget-object v0, p0, Lcom/android/phone/NumberRegionVersion$1;->this$0:Lcom/android/phone/NumberRegionVersion;

    #calls: Lcom/android/phone/NumberRegionVersion;->refreshViews()V
    invoke-static {v0}, Lcom/android/phone/NumberRegionVersion;->access$200(Lcom/android/phone/NumberRegionVersion;)V

    goto/16 :goto_0

    .line 166
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
