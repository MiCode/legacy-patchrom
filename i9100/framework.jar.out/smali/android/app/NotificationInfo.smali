.class public Landroid/app/NotificationInfo;
.super Ljava/lang/Object;
.source "NotificationInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/app/NotificationInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public contactCharSeq:Ljava/lang/CharSequence;

.field public contentIntent:Landroid/app/PendingIntent;

.field public missedCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 100
    new-instance v0, Landroid/app/NotificationInfo$1;

    invoke-direct {v0}, Landroid/app/NotificationInfo$1;-><init>()V

    sput-object v0, Landroid/app/NotificationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    return-void
.end method

.method public constructor <init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V
    .locals 0
    .parameter "missedCount"
    .parameter "contactCharSeq"
    .parameter "contentIntent"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput p1, p0, Landroid/app/NotificationInfo;->missedCount:I

    .line 41
    iput-object p2, p0, Landroid/app/NotificationInfo;->contactCharSeq:Ljava/lang/CharSequence;

    .line 42
    iput-object p3, p0, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "parcel"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 52
    .local v0, version:I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Landroid/app/NotificationInfo;->missedCount:I

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_0

    .line 54
    sget-object v1, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    iput-object v1, p0, Landroid/app/NotificationInfo;->contactCharSeq:Ljava/lang/CharSequence;

    .line 56
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    if-eqz v1, :cond_1

    .line 57
    sget-object v1, Landroid/app/PendingIntent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v1, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    iput-object v1, p0, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 59
    :cond_1
    return-void
.end method


# virtual methods
.method public clone()Landroid/app/NotificationInfo;
    .locals 2

    .prologue
    .line 62
    new-instance v0, Landroid/app/NotificationInfo;

    invoke-direct {v0}, Landroid/app/NotificationInfo;-><init>()V

    .line 64
    .local v0, that:Landroid/app/NotificationInfo;
    iget v1, p0, Landroid/app/NotificationInfo;->missedCount:I

    iput v1, v0, Landroid/app/NotificationInfo;->missedCount:I

    .line 65
    iget-object v1, p0, Landroid/app/NotificationInfo;->contactCharSeq:Ljava/lang/CharSequence;

    iput-object v1, v0, Landroid/app/NotificationInfo;->contactCharSeq:Ljava/lang/CharSequence;

    .line 66
    iget-object v1, p0, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    iput-object v1, v0, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    .line 68
    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/app/NotificationInfo;->clone()Landroid/app/NotificationInfo;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 72
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "parcel"
    .parameter "flags"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 80
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    iget v0, p0, Landroid/app/NotificationInfo;->missedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Landroid/app/NotificationInfo;->contactCharSeq:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 85
    iget-object v0, p0, Landroid/app/NotificationInfo;->contactCharSeq:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 89
    :goto_0
    iget-object v0, p0, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    if-eqz v0, :cond_1

    .line 90
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 91
    iget-object v0, p0, Landroid/app/NotificationInfo;->contentIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, p1, v1}, Landroid/app/PendingIntent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 95
    :goto_1
    return-void

    .line 87
    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 93
    :cond_1
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method
