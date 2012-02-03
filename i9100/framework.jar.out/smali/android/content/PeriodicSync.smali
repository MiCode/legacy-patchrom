.class public Landroid/content/PeriodicSync;
.super Ljava/lang/Object;
.source "PeriodicSync.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/content/PeriodicSync;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final account:Landroid/accounts/Account;

.field public final authority:Ljava/lang/String;

.field public final extras:Landroid/os/Bundle;

.field public final period:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    new-instance v0, Landroid/content/PeriodicSync$1;

    invoke-direct {v0}, Landroid/content/PeriodicSync$1;-><init>()V

    sput-object v0, Landroid/content/PeriodicSync;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;J)V
    .locals 1
    .parameter "account"
    .parameter "authority"
    .parameter "extras"
    .parameter "period"

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    .line 41
    iput-object p2, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    .line 42
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p3}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    .line 43
    iput-wide p4, p0, Landroid/content/PeriodicSync;->period:J

    .line 44
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 47
    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 8
    .parameter "o"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 69
    if-ne p1, p0, :cond_0

    move v2, v7

    .line 79
    :goto_0
    return v2

    .line 73
    :cond_0
    instance-of v2, p1, Landroid/content/PeriodicSync;

    if-nez v2, :cond_1

    move v2, v6

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    move-object v0, p1

    check-cast v0, Landroid/content/PeriodicSync;

    move-object v1, v0

    .line 79
    .local v1, other:Landroid/content/PeriodicSync;
    iget-object v2, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    iget-object v3, v1, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    invoke-virtual {v2, v3}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    iget-object v3, v1, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-wide v2, p0, Landroid/content/PeriodicSync;->period:J

    iget-wide v4, v1, Landroid/content/PeriodicSync;->period:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    iget-object v3, v1, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-static {v2, v3}, Landroid/content/SyncStorageEngine;->equals(Landroid/os/Bundle;Landroid/os/Bundle;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v2, v7

    goto :goto_0

    :cond_2
    move v2, v6

    goto :goto_0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 51
    iget-object v0, p0, Landroid/content/PeriodicSync;->account:Landroid/accounts/Account;

    invoke-virtual {v0, p1, p2}, Landroid/accounts/Account;->writeToParcel(Landroid/os/Parcel;I)V

    .line 52
    iget-object v0, p0, Landroid/content/PeriodicSync;->authority:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 53
    iget-object v0, p0, Landroid/content/PeriodicSync;->extras:Landroid/os/Bundle;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 54
    iget-wide v0, p0, Landroid/content/PeriodicSync;->period:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 55
    return-void
.end method
