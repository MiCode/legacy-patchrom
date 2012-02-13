.class Lcom/android/phone/EditFdnContactScreen$1;
.super Landroid/os/Handler;
.source "EditFdnContactScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/EditFdnContactScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/EditFdnContactScreen;


# direct methods
.method constructor <init>(Lcom/android/phone/EditFdnContactScreen;)V
    .locals 0
    .parameter

    .prologue
    .line 198
    iput-object p1, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v7, 0x0

    .line 201
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 202
    .local v0, ar:Landroid/os/AsyncResult;
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 229
    :goto_0
    return-void

    .line 205
    :pswitch_0
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_1

    .line 206
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #getter for: Lcom/android/phone/EditFdnContactScreen;->mAddContact:Z
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$000(Lcom/android/phone/EditFdnContactScreen;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 207
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->addContact()V
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$100(Lcom/android/phone/EditFdnContactScreen;)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->updateContact()V
    invoke-static {v3}, Lcom/android/phone/EditFdnContactScreen;->access$200(Lcom/android/phone/EditFdnContactScreen;)V

    goto :goto_0

    .line 212
    :cond_1
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    #calls: Lcom/android/phone/EditFdnContactScreen;->displayProgress(Z)V
    invoke-static {v3, v7}, Lcom/android/phone/EditFdnContactScreen;->access$300(Lcom/android/phone/EditFdnContactScreen;Z)V

    .line 213
    invoke-static {v0}, Lcom/android/phone/PhoneUtils;->getRetryLeftSimPin(Landroid/os/AsyncResult;)I

    move-result v1

    .line 214
    .local v1, numRetries:I
    if-lez v1, :cond_2

    const/4 v3, 0x3

    if-ge v1, v3, :cond_2

    .line 216
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 217
    .local v2, sb:Ljava/lang/StringBuilder;
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v3}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0b035b

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v7

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 221
    .end local v2           #sb:Ljava/lang/StringBuilder;
    :cond_2
    iget-object v3, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    iget-object v4, p0, Lcom/android/phone/EditFdnContactScreen$1;->this$0:Lcom/android/phone/EditFdnContactScreen;

    invoke-virtual {v4}, Lcom/android/phone/EditFdnContactScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0b02e2

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    #calls: Lcom/android/phone/EditFdnContactScreen;->showStatus(Ljava/lang/CharSequence;)V
    invoke-static {v3, v4}, Lcom/android/phone/EditFdnContactScreen;->access$400(Lcom/android/phone/EditFdnContactScreen;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 202
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
    .end packed-switch
.end method
