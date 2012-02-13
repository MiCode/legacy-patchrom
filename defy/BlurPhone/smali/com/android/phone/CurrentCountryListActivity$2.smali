.class Lcom/android/phone/CurrentCountryListActivity$2;
.super Ljava/lang/Object;
.source "CurrentCountryListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/CurrentCountryListActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/CurrentCountryListActivity;


# direct methods
.method constructor <init>(Lcom/android/phone/CurrentCountryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 201
    iput-object p1, p0, Lcom/android/phone/CurrentCountryListActivity$2;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$2;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iget-object v0, v0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$2;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iget-object v0, v0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    const v1, 0x7f070027

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/widget/EditText;

    check-cast p0, Landroid/widget/EditText;

    invoke-virtual {p0}, Landroid/widget/EditText;->requestFocus()Z

    .line 208
    :cond_0
    return-void
.end method
