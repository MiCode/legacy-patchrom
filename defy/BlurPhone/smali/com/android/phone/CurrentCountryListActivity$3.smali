.class Lcom/android/phone/CurrentCountryListActivity$3;
.super Ljava/lang/Object;
.source "CurrentCountryListActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

.field final synthetic val$mAreaCode:Landroid/widget/EditText;

.field final synthetic val$mCtryCode:Landroid/widget/EditText;

.field final synthetic val$mCtryIdd:Landroid/widget/EditText;

.field final synthetic val$mCtryName:Landroid/widget/EditText;

.field final synthetic val$mCtryNdd:Landroid/widget/EditText;

.field final synthetic val$mNumLen:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/android/phone/CurrentCountryListActivity;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;Landroid/widget/EditText;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/phone/CurrentCountryListActivity$3;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iput-object p2, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mCtryName:Landroid/widget/EditText;

    iput-object p3, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mCtryCode:Landroid/widget/EditText;

    iput-object p4, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mCtryIdd:Landroid/widget/EditText;

    iput-object p5, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mCtryNdd:Landroid/widget/EditText;

    iput-object p6, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mAreaCode:Landroid/widget/EditText;

    iput-object p7, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mNumLen:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .parameter "dialog"

    .prologue
    const v2, 0x7f0b03d4

    .line 307
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mCtryName:Landroid/widget/EditText;

    const v1, 0x7f0b03d3

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(I)V

    .line 308
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mCtryCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(I)V

    .line 309
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mCtryIdd:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(I)V

    .line 310
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mCtryNdd:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(I)V

    .line 311
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mAreaCode:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(I)V

    .line 312
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$3;->val$mNumLen:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(I)V

    .line 313
    return-void
.end method
