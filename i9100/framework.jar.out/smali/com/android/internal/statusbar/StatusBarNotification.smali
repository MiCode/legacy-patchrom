.class public Lcom/android/internal/statusbar/StatusBarNotification;
.super Ljava/lang/Object;
.source "StatusBarNotification.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/internal/statusbar/StatusBarNotification;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public id:I

.field public initialPid:I

.field public notification:Landroid/app/Notification;

.field public pkg:Ljava/lang/String;

.field public tag:Ljava/lang/String;

.field public uid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 96
    new-instance v0, Lcom/android/internal/statusbar/StatusBarNotification$1;

    invoke-direct {v0}, Lcom/android/internal/statusbar/StatusBarNotification$1;-><init>()V

    sput-object v0, Lcom/android/internal/statusbar/StatusBarNotification;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .parameter "in"

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/internal/statusbar/StatusBarNotification;->readFromParcel(Landroid/os/Parcel;)V

    .line 63
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;)V
    .locals 1
    .parameter "pkg"
    .parameter "id"
    .parameter "tag"
    .parameter "uid"
    .parameter "initialPid"
    .parameter "notification"

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 51
    :cond_0
    if-nez p6, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    .line 53
    :cond_1
    iput-object p1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 54
    iput p2, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 55
    iput-object p3, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 56
    iput p4, p0, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    .line 57
    iput p5, p0, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    .line 58
    iput-object p6, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 59
    return-void
.end method


# virtual methods
.method public clone()Lcom/android/internal/statusbar/StatusBarNotification;
    .locals 7

    .prologue
    .line 111
    new-instance v0, Lcom/android/internal/statusbar/StatusBarNotification;

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    iget v2, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    iget-object v3, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    iget v4, p0, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    iget v5, p0, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    iget-object v6, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v6}, Landroid/app/Notification;->clone()Landroid/app/Notification;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/internal/statusbar/StatusBarNotification;-><init>(Ljava/lang/String;ILjava/lang/String;IILandroid/app/Notification;)V

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
    .line 37
    invoke-virtual {p0}, Lcom/android/internal/statusbar/StatusBarNotification;->clone()Lcom/android/internal/statusbar/StatusBarNotification;

    move-result-object v0

    return-object v0
.end method

.method public describeContents()I
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    return v0
.end method

.method public isMiniCon()Z
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->twQuickPanelEvent:I

    and-int/lit8 v0, v0, 0x1f

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isOngoing()Z
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    iget v0, v0, Landroid/app/Notification;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 1
    .parameter "in"

    .prologue
    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    .line 67
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    .line 68
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    .line 73
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    .line 74
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    .line 75
    new-instance v0, Landroid/app/Notification;

    invoke-direct {v0, p1}, Landroid/app/Notification;-><init>(Landroid/os/Parcel;)V

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    .line 76
    return-void

    .line 71
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StatusBarNotification(package="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " tag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " notification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "out"
    .parameter "flags"

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->pkg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 80
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->id:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->tag:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 87
    :goto_0
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->uid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 88
    iget v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->initialPid:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-object v0, p0, Lcom/android/internal/statusbar/StatusBarNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, p1, p2}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 90
    return-void

    .line 85
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method
