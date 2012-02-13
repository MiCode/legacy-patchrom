.class Lcom/android/phone/ReferenceCountryDetail$1;
.super Ljava/lang/Object;
.source "ReferenceCountryDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ReferenceCountryDetail;->setChangeListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/phone/ReferenceCountryDetail;


# direct methods
.method constructor <init>(Lcom/android/phone/ReferenceCountryDetail;)V
    .locals 0
    .parameter

    .prologue
    .line 168
    iput-object p1, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 6
    .parameter "p"
    .parameter "newValue"

    .prologue
    const/4 v5, 0x1

    const-string v4, "ref_country_mdn_len"

    .line 170
    move-object v0, p2

    check-cast v0, Ljava/lang/String;

    move-object v2, v0

    .line 172
    .local v2, str:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    invoke-virtual {v3}, Lcom/android/phone/ReferenceCountryDetail;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 173
    .local v1, resolver:Landroid/content/ContentResolver;
    iget-object v3, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    #getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/android/phone/ReferenceCountryDetail;->access$000(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne p1, v3, :cond_1

    .line 174
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-eqz v3, :cond_0

    .line 175
    const-string v3, "ref_country_code"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v1, v3, v4}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 184
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    .line 205
    :cond_0
    :goto_0
    const-string v3, "cur_country_updated_by_user"

    invoke-static {v1, v3, v5}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 206
    invoke-virtual {p1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 207
    return v5

    .line 186
    :cond_1
    iget-object v3, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    #getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/android/phone/ReferenceCountryDetail;->access$100(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne p1, v3, :cond_2

    .line 187
    const-string v3, "ref_country_idd"

    invoke-static {v1, v3, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 189
    :cond_2
    iget-object v3, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    #getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryNdd:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/android/phone/ReferenceCountryDetail;->access$200(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne p1, v3, :cond_3

    .line 190
    const-string v3, "ref_country_ndd"

    invoke-static {v1, v3, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 192
    :cond_3
    iget-object v3, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    #getter for: Lcom/android/phone/ReferenceCountryDetail;->mAreaCode:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/android/phone/ReferenceCountryDetail;->access$300(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne p1, v3, :cond_4

    .line 193
    const-string v3, "ref_country_area_code"

    invoke-static {v1, v3, v2}, Lcom/motorola/android/provider/MotorolaSettings;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    .line 195
    :cond_4
    iget-object v3, p0, Lcom/android/phone/ReferenceCountryDetail$1;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    #getter for: Lcom/android/phone/ReferenceCountryDetail;->mNumLen:Landroid/preference/EditTextPreference;
    invoke-static {v3}, Lcom/android/phone/ReferenceCountryDetail;->access$400(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v3

    if-ne p1, v3, :cond_0

    .line 196
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_5

    .line 197
    const-string v3, "ref_country_mdn_len"

    const/4 v3, -0x1

    invoke-static {v1, v4, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 200
    :cond_5
    const-string v3, "ref_country_mdn_len"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-static {v1, v4, v3}, Lcom/motorola/android/provider/MotorolaSettings;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 202
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method
