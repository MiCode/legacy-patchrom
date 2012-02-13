.class Lcom/android/phone/CurrentCountryListActivity$4;
.super Ljava/lang/Object;
.source "CurrentCountryListActivity.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CurrentCountryListActivity;->initNewCtryDg(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CurrentCountryListActivity;

.field final synthetic val$mCtryCode:Landroid/widget/EditText;

.field final synthetic val$mCtryIdd:Landroid/widget/EditText;

.field final synthetic val$mCtryName:Landroid/widget/EditText;

.field final synthetic val$mSaveButton:Landroid/widget/Button;


# direct methods
.method constructor <init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/Button;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 317
    iput-object p1, p0, Lcom/android/phone/CurrentCountryListActivity$4;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iput-object p2, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mCtryCode:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mCtryIdd:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mCtryName:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mSaveButton:Landroid/widget/Button;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2
    .parameter "s"

    .prologue
    .line 319
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mCtryCode:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mCtryIdd:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mCtryName:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    if-nez v0, :cond_2

    .line 321
    :cond_0
    invoke-static {}, Lcom/android/phone/CurrentCountryListActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$4;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    const-string v1, "disable save button"

    #calls: Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CurrentCountryListActivity;->access$100(Lcom/android/phone/CurrentCountryListActivity;Ljava/lang/String;)V

    .line 322
    :cond_1
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 327
    :goto_0
    return-void

    .line 324
    :cond_2
    invoke-static {}, Lcom/android/phone/CurrentCountryListActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$4;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    const-string v1, "enable save button"

    #calls: Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CurrentCountryListActivity;->access$100(Lcom/android/phone/CurrentCountryListActivity;Ljava/lang/String;)V

    .line 325
    :cond_3
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$4;->val$mSaveButton:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_0
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    .line 328
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    .line 329
    return-void
.end method
