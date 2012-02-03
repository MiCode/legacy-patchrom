.class final enum Lcom/android/phone/sip/SipEditor$PreferenceKey;
.super Ljava/lang/Enum;
.source "SipEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/sip/SipEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "PreferenceKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/phone/sip/SipEditor$PreferenceKey;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum AuthUserName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum ProxyAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum Transport:Lcom/android/phone/sip/SipEditor$PreferenceKey;

.field public static final enum Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;


# instance fields
.field final defaultSummary:I

.field final initValue:I

.field preference:Landroid/preference/Preference;

.field final text:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 84
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "Username"

    const/4 v2, 0x0

    const v3, 0x7f0d0256

    const/4 v4, 0x0

    const v5, 0x7f0d0242

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 85
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "Password"

    const/4 v2, 0x1

    const v3, 0x7f0d0257

    const/4 v4, 0x0

    const v5, 0x7f0d0242

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 86
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "DomainAddress"

    const/4 v2, 0x2

    const v3, 0x7f0d0255

    const/4 v4, 0x0

    const v5, 0x7f0d0242

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 87
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "DisplayName"

    const/4 v2, 0x3

    const v3, 0x7f0d0258

    const/4 v4, 0x0

    const v5, 0x7f0d0243

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 88
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "ProxyAddress"

    const/4 v2, 0x4

    const v3, 0x7f0d0259

    const/4 v4, 0x0

    const v5, 0x7f0d0244

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 89
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "Port"

    const/4 v2, 0x5

    const v3, 0x7f0d025a

    const v4, 0x7f0d0245

    const v5, 0x7f0d0245

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 90
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "Transport"

    const/4 v2, 0x6

    const v3, 0x7f0d025b

    const v4, 0x7f0d0246

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 91
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "SendKeepAlive"

    const/4 v2, 0x7

    const v3, 0x7f0d025c

    const v4, 0x7f0d0253

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 92
    new-instance v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const-string v1, "AuthUserName"

    const/16 v2, 0x8

    const v3, 0x7f0d0260

    const/4 v4, 0x0

    const v5, 0x7f0d0244

    invoke-direct/range {v0 .. v5}, Lcom/android/phone/sip/SipEditor$PreferenceKey;-><init>(Ljava/lang/String;IIII)V

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    .line 83
    const/16 v0, 0x9

    new-array v0, v0, [Lcom/android/phone/sip/SipEditor$PreferenceKey;

    const/4 v1, 0x0

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Username:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DomainAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->ProxyAddress:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x5

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Port:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Transport:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->SendKeepAlive:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/android/phone/sip/SipEditor$PreferenceKey;->AuthUserName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->$VALUES:[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .parameter
    .parameter
    .parameter "text"
    .parameter "initValue"
    .parameter "defaultSummary"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 106
    iput p3, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->text:I

    .line 107
    iput p4, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->initValue:I

    .line 108
    iput p5, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    .line 109
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .locals 1
    .parameter

    .prologue
    .line 83
    const-class v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;

    return-object p0
.end method

.method public static values()[Lcom/android/phone/sip/SipEditor$PreferenceKey;
    .locals 1

    .prologue
    .line 83
    sget-object v0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->$VALUES:[Lcom/android/phone/sip/SipEditor$PreferenceKey;

    invoke-virtual {v0}, [Lcom/android/phone/sip/SipEditor$PreferenceKey;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/phone/sip/SipEditor$PreferenceKey;

    return-object v0
.end method


# virtual methods
.method getValue()Ljava/lang/String;
    .locals 3

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/EditTextPreference;

    if-eqz v0, :cond_0

    .line 113
    iget-object p0, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .end local p0
    check-cast p0, Landroid/preference/EditTextPreference;

    invoke-virtual {p0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 115
    :goto_0
    return-object v0

    .line 114
    .restart local p0
    :cond_0
    iget-object v0, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v0, v0, Landroid/preference/ListPreference;

    if-eqz v0, :cond_1

    .line 115
    iget-object p0, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    .end local p0
    check-cast p0, Landroid/preference/ListPreference;

    invoke-virtual {p0}, Landroid/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 117
    .restart local p0
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getValue() for the preference "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setValue(Ljava/lang/String;)V
    .locals 4
    .parameter "value"

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/EditTextPreference;

    if-eqz v1, :cond_1

    .line 122
    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 123
    .local v0, oldValue:Ljava/lang/String;
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/EditTextPreference;

    invoke-virtual {v1, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 124
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-eq p0, v1, :cond_0

    .line 125
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": setValue() "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/phone/sip/SipEditor$PreferenceKey;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .end local v0           #oldValue:Ljava/lang/String;
    :cond_0
    :goto_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 133
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    .line 142
    :goto_1
    return-void

    .line 128
    :cond_1
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    instance-of v1, v1, Landroid/preference/ListPreference;

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    check-cast v1, Landroid/preference/ListPreference;

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 134
    :cond_2
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->Password:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne p0, v1, :cond_3

    .line 135
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    #calls: Lcom/android/phone/sip/SipEditor;->scramble(Ljava/lang/String;)Ljava/lang/String;
    invoke-static {p1}, Lcom/android/phone/sip/SipEditor;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 136
    :cond_3
    sget-object v1, Lcom/android/phone/sip/SipEditor$PreferenceKey;->DisplayName:Lcom/android/phone/sip/SipEditor$PreferenceKey;

    if-ne p0, v1, :cond_4

    #calls: Lcom/android/phone/sip/SipEditor;->getDefaultDisplayName()Ljava/lang/String;
    invoke-static {}, Lcom/android/phone/sip/SipEditor;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 138
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    iget v2, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->defaultSummary:I

    invoke-virtual {v1, v2}, Landroid/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 140
    :cond_4
    iget-object v1, p0, Lcom/android/phone/sip/SipEditor$PreferenceKey;->preference:Landroid/preference/Preference;

    invoke-virtual {v1, p1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
