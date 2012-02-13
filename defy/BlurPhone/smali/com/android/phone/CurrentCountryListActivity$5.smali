.class Lcom/android/phone/CurrentCountryListActivity$5;
.super Ljava/lang/Object;
.source "CurrentCountryListActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


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


# direct methods
.method constructor <init>(Lcom/android/phone/CurrentCountryListActivity;)V
    .locals 0
    .parameter

    .prologue
    .line 337
    iput-object p1, p0, Lcom/android/phone/CurrentCountryListActivity$5;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 339
    invoke-static {}, Lcom/android/phone/CurrentCountryListActivity;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$5;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    const-string v1, "user cancel add new country dialog"

    #calls: Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/phone/CurrentCountryListActivity;->access$100(Lcom/android/phone/CurrentCountryListActivity;Ljava/lang/String;)V

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/android/phone/CurrentCountryListActivity$5;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    iget-object v0, v0, Lcom/android/phone/CurrentCountryListActivity;->mNewCtryDg:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 341
    return-void
.end method
