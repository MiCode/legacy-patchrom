.class Lcom/android/phone/CurrentCountryListActivity$1;
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
    .line 174
    iput-object p1, p0, Lcom/android/phone/CurrentCountryListActivity$1;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4
    .parameter "dialog"
    .parameter "whichButton"

    .prologue
    const/4 v3, 0x1

    .line 177
    invoke-static {}, Lcom/android/phone/CurrentCountryListActivity;->access$000()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$1;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    const-string v2, "removeUnknownCountry"

    #calls: Lcom/android/phone/CurrentCountryListActivity;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/phone/CurrentCountryListActivity;->access$100(Lcom/android/phone/CurrentCountryListActivity;Ljava/lang/String;)V

    .line 178
    :cond_0
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->removeUnknownCountry()V

    .line 181
    const/4 v0, 0x0

    .line 182
    .local v0, mcc:I
    invoke-static {}, Lcom/android/phone/AssistedDialingUtil;->getDefaultCtryMcc()I

    move-result v0

    .line 183
    iget-object v1, p0, Lcom/android/phone/CurrentCountryListActivity$1;->this$0:Lcom/android/phone/CurrentCountryListActivity;

    #calls: Lcom/android/phone/CurrentCountryListActivity;->updateSettingDb(I)V
    invoke-static {v1, v0}, Lcom/android/phone/CurrentCountryListActivity;->access$200(Lcom/android/phone/CurrentCountryListActivity;I)V

    .line 186
    invoke-static {}, Lcom/android/phone/NotificationMgr;->getDefault()Lcom/android/phone/NotificationMgr;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/phone/NotificationMgr;->notifyAssistedDialingUnknownMcc()V

    .line 187
    sput-boolean v3, Lcom/android/phone/AssistedDialingUtil;->isUnknownMccNotHandled:Z

    .line 190
    sput-boolean v3, Lcom/android/phone/AssistedDialingUtil;->isCtryListChanged:Z

    .line 191
    return-void
.end method
