.class public Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;
.super Ljava/lang/Object;
.source "BlurContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/phone/BlurContactsAsyncHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ImageTracker"
.end annotation


# static fields
.field public static final DISPLAY_DEFAULT:I = -0x2

.field public static final DISPLAY_IMAGE:I = -0x1

.field public static final DISPLAY_UNDEFINED:I


# instance fields
.field private displayMode:I

.field private mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 114
    return-void
.end method


# virtual methods
.method public getPhotoState()I
    .locals 1

    .prologue
    .line 182
    iget v0, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->displayMode:I

    return v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 159
    iget-object v2, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_1

    .line 160
    const-wide/16 v0, 0x0

    .line 161
    .local v0, identity_id:J
    iget-object v2, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    instance-of v2, v2, Lcom/android/phone/BlurCallerInfo;

    if-eqz v2, :cond_0

    .line 162
    iget-object p0, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .end local p0
    check-cast p0, Lcom/android/phone/BlurCallerInfo;

    iget-wide v0, p0, Lcom/android/phone/BlurCallerInfo;->identity_id:J

    .line 165
    :cond_0
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 168
    .end local v0           #identity_id:J
    :goto_0
    return-object v2

    .restart local p0
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "ci"

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDifferentImageRequest(Lcom/android/internal/telephony/Connection;)Z
    .locals 3
    .parameter "connection"

    .prologue
    .line 131
    if-nez p1, :cond_1

    .line 133
    iget-object v2, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 143
    :goto_0
    return v2

    .line 133
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 139
    .local v0, o:Ljava/lang/Object;
    const/4 v1, 0x1

    .line 140
    .local v1, runQuery:Z
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_2

    .line 141
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 143
    goto :goto_0
.end method

.method public setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "ci"

    .prologue
    .line 150
    iput-object p1, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 151
    return-void
.end method

.method public setPhotoState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 175
    iput p1, p0, Lcom/android/phone/BlurContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 176
    return-void
.end method
