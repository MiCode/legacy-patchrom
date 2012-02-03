.class public Lcom/android/internal/telephony/gsm/stk/TextMessage;
.super Ljava/lang/Object;
.source "TextMessage.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/telephony/gsm/stk/TextMessage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public duration:Lcom/android/internal/telephony/gsm/stk/Duration;

.field public icon:Landroid/graphics/Bitmap;

.field public iconSelfExplanatory:Z

.field public isHighPriority:Z

.field public responseNeeded:Z

.field public text:Ljava/lang/String;

.field public title:Ljava/lang/String;

.field public userClear:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 62
    new-instance v0, Lcom/android/internal/telephony/gsm/stk/TextMessage$1;

    invoke-direct {v0}, Lcom/android/internal/telephony/gsm/stk/TextMessage$1;-><init>()V

    sput-object v0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 25
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 26
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 27
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 28
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 30
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    .line 31
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 34
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4
    .parameter "in"

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 25
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 26
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 27
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 28
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    .line 29
    iput-boolean v1, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 30
    iput-boolean v2, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    .line 31
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    .line 39
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_0

    move v0, v1

    :goto_0
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    :goto_2
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    .line 43
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-ne v0, v1, :cond_3

    move v0, v1

    :goto_3
    iput-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    .line 44
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/gsm/stk/Duration;

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    .line 45
    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v0, v2

    .line 41
    goto :goto_1

    :cond_2
    move v0, v2

    .line 42
    goto :goto_2

    :cond_3
    move v0, v2

    .line 43
    goto :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/android/internal/telephony/gsm/stk/TextMessage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/stk/TextMessage;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 48
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 52
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->title:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->text:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->icon:Landroid/graphics/Bitmap;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 55
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->iconSelfExplanatory:Z

    if-eqz v0, :cond_0

    move v0, v2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->isHighPriority:Z

    if-eqz v0, :cond_1

    move v0, v2

    :goto_1
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->responseNeeded:Z

    if-eqz v0, :cond_2

    move v0, v2

    :goto_2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget-boolean v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->userClear:Z

    if-eqz v0, :cond_3

    move v0, v2

    :goto_3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/stk/TextMessage;->duration:Lcom/android/internal/telephony/gsm/stk/Duration;

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeParcelable(Landroid/os/Parcelable;I)V

    .line 60
    return-void

    :cond_0
    move v0, v1

    .line 55
    goto :goto_0

    :cond_1
    move v0, v1

    .line 56
    goto :goto_1

    :cond_2
    move v0, v1

    .line 57
    goto :goto_2

    :cond_3
    move v0, v1

    .line 58
    goto :goto_3
.end method
