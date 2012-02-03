.class Lcom/android/settings/SecuritySettings$10;
.super Ljava/lang/Object;
.source "SecuritySettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SecuritySettings;->onCreateDialog(I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SecuritySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SecuritySettings;)V
    .locals 0
    .parameter

    .prologue
    .line 913
    iput-object p1, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .parameter "v"

    .prologue
    const/4 v3, 0x1

    const-string v4, "lostphone_contact_number"

    .line 915
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mLostContact:Landroid/widget/EditText;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$1200(Lcom/android/settings/SecuritySettings;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 916
    .local v0, mContactNumber:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 917
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    const v2, 0x7f080610

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 932
    :goto_0
    return-void

    .line 920
    :cond_0
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lostphone_contact_number"

    sget-object v2, Ljava/util/Locale;->KOREA:Ljava/util/Locale;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->getFormatTypeForLocale(Ljava/util/Locale;)I

    move-result v2

    invoke-static {v0, v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 925
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v1}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "display_lostphone_contact"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 927
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mLostPhoneContact:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$1300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 928
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mLostPhoneContact:Landroid/preference/CheckBoxPreference;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$1300(Lcom/android/settings/SecuritySettings;)Landroid/preference/CheckBoxPreference;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    invoke-virtual {v2}, Lcom/android/settings/SecuritySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "lostphone_contact_number"

    invoke-static {v2, v4}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/CheckBoxPreference;->setSummaryOn(Ljava/lang/CharSequence;)V

    .line 930
    iget-object v1, p0, Lcom/android/settings/SecuritySettings$10;->this$0:Lcom/android/settings/SecuritySettings;

    #getter for: Lcom/android/settings/SecuritySettings;->mDialog:Landroid/app/Dialog;
    invoke-static {v1}, Lcom/android/settings/SecuritySettings;->access$1400(Lcom/android/settings/SecuritySettings;)Landroid/app/Dialog;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Dialog;->cancel()V

    goto :goto_0
.end method
