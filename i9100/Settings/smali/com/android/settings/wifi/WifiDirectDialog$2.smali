.class Lcom/android/settings/wifi/WifiDirectDialog$2;
.super Ljava/lang/Object;
.source "WifiDirectDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiDirectDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/WifiDirectDialog;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/WifiDirectDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 163
    iput-object p1, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 1
    .parameter "editable"

    .prologue
    .line 192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #calls: Lcom/android/settings/wifi/WifiDirectDialog;->validate()V
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->access$200(Lcom/android/settings/wifi/WifiDirectDialog;)V

    .line 193
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 187
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/wifi/WifiDirectDialog;->mTempSsid:Ljava/lang/String;

    .line 189
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 7
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const/16 v6, 0x17

    .line 165
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-le v0, v6, :cond_0

    .line 166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDirectDialog;->mTempSsid:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    iget-object v0, v0, Lcom/android/settings/wifi/WifiDirectDialog;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    array-length v0, v0

    if-gt v0, v6, :cond_1

    .line 167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->access$100(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectDialog;->mTempSsid:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->access$100(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiDirectDialog;->access$100(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 173
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->access$000(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiDirectDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x7f080607

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x1080027

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    iget-object v2, v2, Lcom/android/settings/wifi/WifiDirectDialog;->mContext:Landroid/content/Context;

    const v3, 0x7f080585

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f080608

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v1

    #setter for: Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0, v1}, Lcom/android/settings/wifi/WifiDirectDialog;->access$002(Lcom/android/settings/wifi/WifiDirectDialog;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 180
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mAlertDialog:Landroid/app/AlertDialog;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->access$000(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/app/AlertDialog;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    iget-object v1, v1, Lcom/android/settings/wifi/WifiDirectDialog;->mDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->access$100(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/wifi/WifiDirectDialog;->access$100(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 184
    :cond_0
    return-void

    .line 170
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDirectDialog$2;->this$0:Lcom/android/settings/wifi/WifiDirectDialog;

    #getter for: Lcom/android/settings/wifi/WifiDirectDialog;->mSsid:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/android/settings/wifi/WifiDirectDialog;->access$100(Lcom/android/settings/wifi/WifiDirectDialog;)Landroid/widget/EditText;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
