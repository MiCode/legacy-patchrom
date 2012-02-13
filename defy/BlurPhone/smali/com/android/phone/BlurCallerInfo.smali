.class public Lcom/android/phone/BlurCallerInfo;
.super Lcom/android/internal/telephony/CallerInfo;
.source "BlurCallerInfo.java"


# static fields
.field private static final DBG:Z

.field private static final VDBG:Z


# instance fields
.field public identity_id:J

.field public isQueried:Z

.field public model:Lcom/motorola/blur/provider/contacts/IdentityModel;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/android/phone/PhoneApp;->DBG:Z

    sput-boolean v0, Lcom/android/phone/BlurCallerInfo;->DBG:Z

    .line 25
    sget-boolean v0, Lcom/android/phone/PhoneApp;->VDBG:Z

    sput-boolean v0, Lcom/android/phone/BlurCallerInfo;->VDBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/android/internal/telephony/CallerInfo;-><init>()V

    .line 27
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BlurCallerInfo;->model:Lcom/motorola/blur/provider/contacts/IdentityModel;

    .line 28
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/phone/BlurCallerInfo;->isQueried:Z

    return-void
.end method

.method public static getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;
    .locals 6
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    .line 45
    invoke-static {p0, p1, p2}, Lcom/android/internal/telephony/CallerInfo;->getCallerInfo(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/internal/telephony/CallerInfo;

    move-result-object v0

    .line 46
    .local v0, info:Lcom/android/internal/telephony/CallerInfo;
    new-instance v1, Lcom/android/phone/BlurCallerInfo;

    invoke-direct {v1}, Lcom/android/phone/BlurCallerInfo;-><init>()V

    .line 48
    .local v1, nInfo:Lcom/android/phone/BlurCallerInfo;
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->name:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/phone/BlurCallerInfo;->name:Ljava/lang/String;

    .line 49
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_0
    iput-object v2, v1, Lcom/android/phone/BlurCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 52
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneLabel:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/phone/BlurCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 53
    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->numberType:I

    iput v2, v1, Lcom/android/phone/BlurCallerInfo;->numberType:I

    .line 54
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->numberLabel:Ljava/lang/String;

    iput-object v2, v1, Lcom/android/phone/BlurCallerInfo;->numberLabel:Ljava/lang/String;

    .line 55
    iget v2, v0, Lcom/android/internal/telephony/CallerInfo;->photoResource:I

    iput v2, v1, Lcom/android/phone/BlurCallerInfo;->photoResource:I

    .line 56
    iget-wide v2, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iput-wide v2, v1, Lcom/android/phone/BlurCallerInfo;->person_id:J

    .line 57
    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->needUpdate:Z

    iput-boolean v2, v1, Lcom/android/phone/BlurCallerInfo;->needUpdate:Z

    .line 58
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRefUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/phone/BlurCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 59
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    iput-object v2, v1, Lcom/android/phone/BlurCallerInfo;->contactRingtoneUri:Landroid/net/Uri;

    .line 60
    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->shouldSendToVoicemail:Z

    iput-boolean v2, v1, Lcom/android/phone/BlurCallerInfo;->shouldSendToVoicemail:Z

    .line 61
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    iput-object v2, v1, Lcom/android/phone/BlurCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 62
    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->isCachedPhotoCurrent:Z

    iput-boolean v2, v1, Lcom/android/phone/BlurCallerInfo;->isCachedPhotoCurrent:Z

    .line 63
    iget-boolean v2, v0, Lcom/android/internal/telephony/CallerInfo;->contactExists:Z

    iput-boolean v2, v1, Lcom/android/phone/BlurCallerInfo;->contactExists:Z

    .line 66
    iget-wide v2, v0, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    iput-wide v2, v1, Lcom/android/phone/BlurCallerInfo;->identity_id:J

    .line 68
    const-string v2, "BlurCallerInfo"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@ identity_id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/android/phone/BlurCallerInfo;->identity_id:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-boolean v2, Lcom/android/phone/BlurCallerInfo;->VDBG:Z

    if-eqz v2, :cond_0

    .line 77
    :cond_0
    if-eqz p2, :cond_1

    .line 78
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 79
    :cond_1
    return-object v1

    .line 49
    :cond_2
    iget-object v2, v0, Lcom/android/internal/telephony/CallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method public static getCallerInfoForUriQuery(Landroid/content/Context;Landroid/net/Uri;Landroid/database/Cursor;)Lcom/android/phone/BlurCallerInfo;
    .locals 7
    .parameter "context"
    .parameter "contactRef"
    .parameter "cursor"

    .prologue
    const/4 v3, 0x0

    const/4 v6, 0x0

    const/4 v5, -0x1

    .line 85
    new-instance v1, Lcom/android/phone/BlurCallerInfo;

    invoke-direct {v1}, Lcom/android/phone/BlurCallerInfo;-><init>()V

    .line 86
    .local v1, info:Lcom/android/phone/BlurCallerInfo;
    iput v6, v1, Lcom/android/phone/BlurCallerInfo;->photoResource:I

    .line 87
    iput-object v3, v1, Lcom/android/phone/BlurCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 88
    iput v6, v1, Lcom/android/phone/BlurCallerInfo;->numberType:I

    .line 89
    iput-object v3, v1, Lcom/android/phone/BlurCallerInfo;->numberLabel:Ljava/lang/String;

    .line 90
    iput-object v3, v1, Lcom/android/phone/BlurCallerInfo;->cachedPhoto:Landroid/graphics/drawable/Drawable;

    .line 91
    iput-boolean v6, v1, Lcom/android/phone/BlurCallerInfo;->isCachedPhotoCurrent:Z

    .line 92
    iput-boolean v6, v1, Lcom/android/phone/BlurCallerInfo;->contactExists:Z

    .line 95
    if-eqz p2, :cond_5

    .line 96
    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 100
    const-string v3, "display_name"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 101
    .local v0, columnIndex:I
    if-eq v0, v5, :cond_0

    .line 102
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/BlurCallerInfo;->name:Ljava/lang/String;

    .line 106
    :cond_0
    const-string v3, "data1"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 107
    if-eq v0, v5, :cond_1

    .line 108
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/BlurCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 109
    iget-object v3, v1, Lcom/android/phone/BlurCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_6

    iget-object v3, v1, Lcom/android/phone/BlurCallerInfo;->phoneNumber:Ljava/lang/String;

    :goto_0
    iput-object v3, v1, Lcom/android/phone/BlurCallerInfo;->phoneNumber:Ljava/lang/String;

    .line 115
    :cond_1
    const-string v3, "data3"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 116
    if-eq v0, v5, :cond_2

    .line 117
    const-string v3, "data2"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 118
    .local v2, typeColumnIndex:I
    if-eq v2, v5, :cond_2

    .line 119
    invoke-interface {p2, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    iput v3, v1, Lcom/android/phone/BlurCallerInfo;->numberType:I

    .line 120
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/BlurCallerInfo;->numberLabel:Ljava/lang/String;

    .line 121
    iget v3, v1, Lcom/android/phone/BlurCallerInfo;->numberType:I

    iget-object v4, v1, Lcom/android/phone/BlurCallerInfo;->numberLabel:Ljava/lang/String;

    invoke-static {p0, v3, v4}, Landroid/provider/ContactsContract$CommonDataKinds$Phone;->getDisplayLabel(Landroid/content/Context;ILjava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v1, Lcom/android/phone/BlurCallerInfo;->phoneLabel:Ljava/lang/String;

    .line 128
    .end local v2           #typeColumnIndex:I
    :cond_2
    const-string v3, "raw_contact_id"

    invoke-interface {p2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    .line 129
    if-eq v0, v5, :cond_3

    .line 130
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/phone/BlurCallerInfo;->person_id:J

    .line 133
    :cond_3
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/phone/BlurCallerInfo;->contactExists:Z

    .line 135
    .end local v0           #columnIndex:I
    :cond_4
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    .line 139
    :cond_5
    iget-wide v3, v1, Lcom/android/phone/BlurCallerInfo;->person_id:J

    iput-wide v3, v1, Lcom/android/phone/BlurCallerInfo;->identity_id:J

    .line 140
    iput-boolean v6, v1, Lcom/android/phone/BlurCallerInfo;->needUpdate:Z

    .line 141
    iput-object p1, v1, Lcom/android/phone/BlurCallerInfo;->contactRefUri:Landroid/net/Uri;

    .line 142
    return-object v1

    .line 109
    .restart local v0       #columnIndex:I
    :cond_6
    iget-object v3, v1, Lcom/android/phone/BlurCallerInfo;->phoneNumber:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method static loadIdentityDetails(Landroid/content/Context;Lcom/android/phone/BlurCallerInfo;)V
    .locals 7
    .parameter "context"
    .parameter "nInfo"

    .prologue
    .line 147
    iget-wide v0, p1, Lcom/android/phone/BlurCallerInfo;->identity_id:J

    .line 148
    .local v0, identity_id:J
    invoke-static {}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider;->singleton()Lcom/motorola/blur/provider/contacts/IdentityModelProvider;

    move-result-object v2

    iget-object v2, v2, Lcom/motorola/blur/provider/contacts/IdentityModelProvider;->modelApi:Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ModelApi;

    invoke-virtual {v2, v0, v1, p0}, Lcom/motorola/blur/provider/contacts/IdentityModelProvider$ModelApi;->fromId(JLandroid/content/Context;)Lcom/motorola/blur/provider/contacts/IdentityModel;

    move-result-object v2

    iput-object v2, p1, Lcom/android/phone/BlurCallerInfo;->model:Lcom/motorola/blur/provider/contacts/IdentityModel;

    .line 149
    const-string v2, "BlurCallerInfo"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Assigning Model for identity - "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/motorola/blur/util/Logger;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 185
    return-void
.end method
