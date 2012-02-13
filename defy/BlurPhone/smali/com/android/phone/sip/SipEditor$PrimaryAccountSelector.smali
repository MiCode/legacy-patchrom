.class Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;
.super Ljava/lang/Object;
.source "SipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PrimaryAccountSelector"
.end annotation


# instance fields
.field private mCheckbox:Landroid/preference/CheckBoxPreference;

.field private final mWasPrimaryAccount:Z

.field final synthetic this$0:Lcom/android/phone/sip/SipEditor;


# direct methods
.method constructor <init>(Lcom/android/phone/sip/SipEditor;Landroid/net/sip/SipProfile;)V
    .locals 7
    .parameter
    .parameter "profile"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 517
    iput-object p1, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 518
    invoke-virtual {p1}, Lcom/android/phone/sip/SipEditor;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    const v3, 0x7f0b0456

    invoke-virtual {p1, v3}, Lcom/android/phone/sip/SipEditor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/preference/CheckBoxPreference;

    iput-object v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Landroid/preference/CheckBoxPreference;

    .line 520
    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {p1}, Lcom/android/phone/sip/SipEditor;->access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->hasPrimaryAccount()Z

    move-result v2

    if-nez v2, :cond_1

    move v1, v6

    .line 522
    .local v1, noPrimaryAccountSet:Z
    :goto_0
    if-nez p2, :cond_2

    move v0, v6

    .line 523
    .local v0, editNewProfile:Z
    :goto_1
    if-nez v0, :cond_3

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {p1}, Lcom/android/phone/sip/SipEditor;->access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    invoke-virtual {p2}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/phone/sip/SipSharedPreferences;->isPrimaryAccount(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v6

    :goto_2
    iput-boolean v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    .line 527
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " noPrimaryAccountSet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " editNewProfile: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 529
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " mWasPrimaryAccount: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 531
    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Landroid/preference/CheckBoxPreference;

    iget-boolean v3, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    if-nez v3, :cond_0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    :cond_0
    move v3, v6

    :goto_3
    invoke-virtual {v2, v3}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    .line 533
    return-void

    .end local v0           #editNewProfile:Z
    .end local v1           #noPrimaryAccountSet:Z
    :cond_1
    move v1, v5

    .line 520
    goto :goto_0

    .restart local v1       #noPrimaryAccountSet:Z
    :cond_2
    move v0, v5

    .line 522
    goto :goto_1

    .restart local v0       #editNewProfile:Z
    :cond_3
    move v2, v5

    .line 523
    goto :goto_2

    :cond_4
    move v3, v5

    .line 531
    goto :goto_3
.end method


# virtual methods
.method commit(Landroid/net/sip/SipProfile;)V
    .locals 3
    .parameter "profile"

    .prologue
    .line 537
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mCheckbox:Landroid/preference/CheckBoxPreference;

    invoke-virtual {v0}, Landroid/preference/CheckBoxPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 538
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {p1}, Landroid/net/sip/SipProfile;->getUriString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/phone/sip/SipSharedPreferences;->setPrimaryAccount(Ljava/lang/String;)V

    .line 542
    :cond_0
    :goto_0
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " primary account changed to : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v2}, Lcom/android/phone/sip/SipEditor;->access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/phone/sip/SipSharedPreferences;->getPrimaryAccount()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void

    .line 539
    :cond_1
    iget-boolean v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->mWasPrimaryAccount:Z

    if-eqz v0, :cond_0

    .line 540
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PrimaryAccountSelector;->this$0:Lcom/android/phone/sip/SipEditor;

    #getter for: Lcom/android/phone/sip/SipEditor;->mSharedPreferences:Lcom/android/phone/sip/SipSharedPreferences;
    invoke-static {v0}, Lcom/android/phone/sip/SipEditor;->access$900(Lcom/android/phone/sip/SipEditor;)Lcom/android/phone/sip/SipSharedPreferences;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/phone/sip/SipSharedPreferences;->unsetPrimaryAccount()V

    goto :goto_0
.end method
