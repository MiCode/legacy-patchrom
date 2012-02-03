.class public Landroid/pim/ContactsAsyncHelper$ImageTracker;
.super Ljava/lang/Object;
.source "ContactsAsyncHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/pim/ContactsAsyncHelper;
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
    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 104
    return-void
.end method


# virtual methods
.method public getPhotoState()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->displayMode:I

    return v0
.end method

.method public getPhotoUri()Landroid/net/Uri;
    .locals 3

    .prologue
    .line 149
    iget-object v0, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v0, :cond_0

    .line 150
    sget-object v0, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    iget-object v1, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    iget-wide v1, v1, Lcom/android/internal/telephony/CallerInfo;->person_id:J

    invoke-static {v0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    .line 153
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z
    .locals 1
    .parameter "ci"

    .prologue
    .line 115
    iget-object v0, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

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
    .line 121
    if-nez p1, :cond_1

    .line 123
    iget-object v2, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 133
    :goto_0
    return v2

    .line 123
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 125
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/Connection;->getUserData()Ljava/lang/Object;

    move-result-object v0

    .line 129
    .local v0, o:Ljava/lang/Object;
    const/4 v1, 0x1

    .line 130
    .local v1, runQuery:Z
    instance-of v2, v0, Lcom/android/internal/telephony/CallerInfo;

    if-eqz v2, :cond_2

    .line 131
    check-cast v0, Lcom/android/internal/telephony/CallerInfo;

    .end local v0           #o:Ljava/lang/Object;
    invoke-virtual {p0, v0}, Landroid/pim/ContactsAsyncHelper$ImageTracker;->isDifferentImageRequest(Lcom/android/internal/telephony/CallerInfo;)Z

    move-result v1

    :cond_2
    move v2, v1

    .line 133
    goto :goto_0
.end method

.method public setPhotoRequest(Lcom/android/internal/telephony/CallerInfo;)V
    .locals 0
    .parameter "ci"

    .prologue
    .line 140
    iput-object p1, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->mCurrentCallerInfo:Lcom/android/internal/telephony/CallerInfo;

    .line 141
    return-void
.end method

.method public setPhotoState(I)V
    .locals 0
    .parameter "state"

    .prologue
    .line 160
    iput p1, p0, Landroid/pim/ContactsAsyncHelper$ImageTracker;->displayMode:I

    .line 161
    return-void
.end method
