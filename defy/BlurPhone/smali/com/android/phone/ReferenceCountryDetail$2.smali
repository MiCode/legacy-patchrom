.class Lcom/android/phone/ReferenceCountryDetail$2;
.super Ljava/lang/Object;
.source "ReferenceCountryDetail.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/phone/ReferenceCountryDetail;->setClickListener()V
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
    .line 221
    iput-object p1, p0, Lcom/android/phone/ReferenceCountryDetail$2;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 3
    .parameter "preference"

    .prologue
    .line 225
    move-object v0, p1

    check-cast v0, Landroid/preference/EditTextPreference;

    move-object v1, v0

    .line 226
    .local v1, etPre:Landroid/preference/EditTextPreference;
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail$2;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    #getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryCode:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$000(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 227
    const-string v2, "country_code"

    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$502(Ljava/lang/String;)Ljava/lang/String;

    .line 231
    :cond_0
    :goto_0
    const/4 v2, 0x1

    return v2

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/android/phone/ReferenceCountryDetail$2;->this$0:Lcom/android/phone/ReferenceCountryDetail;

    #getter for: Lcom/android/phone/ReferenceCountryDetail;->mCtryIdd:Landroid/preference/EditTextPreference;
    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$100(Lcom/android/phone/ReferenceCountryDetail;)Landroid/preference/EditTextPreference;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 229
    const-string v2, "country_idd"

    invoke-static {v2}, Lcom/android/phone/ReferenceCountryDetail;->access$502(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
