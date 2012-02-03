.class Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
.super Ljava/lang/Object;
.source "CallFeaturesSetting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/CallFeaturesSetting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceMailProviderSettings"
.end annotation


# instance fields
.field public forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

.field final synthetic this$0:Lcom/android/phone/CallFeaturesSetting;

.field public voicemailNumber:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 4
    .parameter
    .parameter "voicemailNumber"
    .parameter "forwardingNumber"
    .parameter "timeSeconds"

    .prologue
    const/4 v3, 0x1

    .line 286
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    .line 288
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 289
    :cond_0
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FWD_SETTINGS_DONT_TOUCH:[Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 303
    :cond_1
    return-void

    .line 291
    :cond_2
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    array-length v2, v2

    new-array v2, v2, [Lcom/android/internal/telephony/CallForwardInfo;

    iput-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 292
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 293
    new-instance v0, Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {v0}, Lcom/android/internal/telephony/CallForwardInfo;-><init>()V

    .line 294
    .local v0, fi:Lcom/android/internal/telephony/CallForwardInfo;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    aput-object v0, v2, v1

    .line 295
    sget-object v2, Lcom/android/phone/CallFeaturesSetting;->FORWARDING_SETTINGS_REASONS:[I

    aget v2, v2, v1

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    .line 296
    iget v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-nez v2, :cond_3

    const/4 v2, 0x0

    :goto_1
    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    .line 297
    iput v3, v0, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    .line 298
    const/16 v2, 0x91

    iput v2, v0, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    .line 299
    iput-object p3, v0, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    .line 300
    iput p4, v0, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    .line 292
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    move v2, v3

    .line 296
    goto :goto_1
.end method

.method public constructor <init>(Lcom/android/phone/CallFeaturesSetting;Ljava/lang/String;[Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 0
    .parameter
    .parameter "voicemailNumber"
    .parameter "infos"

    .prologue
    .line 305
    iput-object p1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->this$0:Lcom/android/phone/CallFeaturesSetting;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 306
    iput-object p2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    .line 307
    iput-object p3, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    .line 308
    return-void
.end method

.method private forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z
    .locals 7
    .parameter "infos1"
    .parameter "infos2"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 327
    if-ne p1, p2, :cond_0

    move v3, v6

    .line 342
    :goto_0
    return v3

    .line 328
    :cond_0
    if-eqz p1, :cond_1

    if-nez p2, :cond_2

    :cond_1
    move v3, v5

    goto :goto_0

    .line 329
    :cond_2
    array-length v3, p1

    array-length v4, p2

    if-eq v3, v4, :cond_3

    move v3, v5

    goto :goto_0

    .line 330
    :cond_3
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    array-length v3, p1

    if-ge v0, v3, :cond_6

    .line 331
    aget-object v1, p1, v0

    .line 332
    .local v1, i1:Lcom/android/internal/telephony/CallForwardInfo;
    aget-object v2, p2, v0

    .line 333
    .local v2, i2:Lcom/android/internal/telephony/CallForwardInfo;
    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->reason:I

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->toa:I

    if-ne v3, v4, :cond_4

    iget-object v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    if-ne v3, v4, :cond_4

    iget v3, v1, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    iget v4, v2, Lcom/android/internal/telephony/CallForwardInfo;->timeSeconds:I

    if-eq v3, v4, :cond_5

    :cond_4
    move v3, v5

    .line 339
    goto :goto_0

    .line 330
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v1           #i1:Lcom/android/internal/telephony/CallForwardInfo;
    .end local v2           #i2:Lcom/android/internal/telephony/CallForwardInfo;
    :cond_6
    move v3, v6

    .line 342
    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .parameter "o"

    .prologue
    const/4 v4, 0x0

    .line 312
    if-nez p1, :cond_0

    move v2, v4

    .line 316
    :goto_0
    return v2

    .line 313
    :cond_0
    instance-of v2, p1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    if-nez v2, :cond_1

    move v2, v4

    goto :goto_0

    .line 314
    :cond_1
    move-object v0, p1

    check-cast v0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;

    move-object v1, v0

    .line 316
    .local v1, v:Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-nez v2, :cond_2

    iget-object v2, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_3

    :cond_2
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    iget-object v3, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_3
    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    iget-object v3, v1, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettingsEqual([Lcom/android/internal/telephony/CallForwardInfo;[Lcom/android/internal/telephony/CallForwardInfo;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 347
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->voicemailNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/phone/CallFeaturesSetting$VoiceMailProviderSettings;->forwardingSettings:[Lcom/android/internal/telephony/CallForwardInfo;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method
